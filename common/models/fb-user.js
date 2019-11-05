'use strict';
const PromiseModel = require('../promise-model')
module.exports = function(FbUser) {

    FbUser.Applicant = 'Applicant'
    FbUser.Operational_director = 'Operational_director'
    FbUser.Fabtech_admin = 'Fabtech_admin'
    FbUser.Site_sv_engineer = 'Site_sv_engineer'
    FbUser.Top_management = 'Top_management'

    var app;

    FbUser.on('attached', function (a) {
        app = a;
    });
    
    FbUser.afterRemote('login', function (ctx, model, next) {

        // console.log(ctx.result)
        let RoleMapping = app.models.RoleMapping
        RoleMapping.findOne({where:{principalId: ctx.result.userId}}, function(err1, result){
            if (err1) return next(err1)

            console.log(result)
            let Role = app.models.Role
            Role.findOne({where:{id:result.roleId}},function(err2,result2){
                if (err2) return next(err2)
                console.log(result2)
                ctx.result.role = result2.name
                next()
            })
        })

    })

    FbUser.register_applicant = function (req,cb) {
        if(typeof(req.body.username)==='undefined'){
            return cb({statusCode: 400, message:'Missing username.'})   
        }
        if(typeof(req.body.password)==='undefined'){
            return cb({statusCode: 400, message:'Missing password.'})   
        }

        // ------------------------------------------------------
        if(typeof(req.body.email)==='undefined'){
            // create dummy email
            // req.body.email = req.body.username + Date.now()+'@sample.com'
            return cb({statusCode: 400, message:'Missing email.'})   
        }
        // ------------------------------------------------------
        _registerApplicant(app, req, cb)
    }
    FbUser.remoteMethod('register_applicant', {
        description: `Register User Applicant`,
        isStatic: true,
        accepts: [{arg: 'req', type: 'object', 'http': {source: 'req'}}],
        returns: {
            type: 'object',
            root: true
        },
        http: { path: '/register/applicant', verb: 'post' }
    })

};


async function _registerApplicant(app, req, cb){
    try {

        // Check Role
        let _role = await PromiseModel.findOne(app.models.Role, {where:{name: 'Applicant'}})
        if(_role === null){
            return cb({statusCode: 400, message:'Missing role.'})
        }

        // Check User
        await _user_check_exist(app,{ where: {username: req.body.username }})
        // Create User
        // let _user = await _user_create(app, {
        //     username: req.body.username,
        //     password: req.body.password,
        //     email: req.body.email,
        //     name: req.body.name,
        //     contact: req.body.contact,
        //     createdDate: new Date(),
        //     createdBy: req.body.createdBy,
        //     modifiedDate: new Date(),
        //     modifiedBy: req.body.createdBy,
        // })
        let _user = await PromiseModel.create(app.models.FBUser, {
            username: req.body.username,
            password: req.body.password,
            email: req.body.email,
        })

        // Create Role Mapping
        // await _roleMapping_create(app,{
        //     principalType: app.models.RoleMapping.USER,
        //     principalId: _user.id,
        //     roleId: _role.id})
        await PromiseModel.create(app.models.RoleMapping,{
                principalType: app.models.RoleMapping.USER,
                principalId: _user.id,
                roleId: _role.id})
        
        // Create FUser Detail
        await PromiseModel.create(app.models.FBUser_details, {user_id: _user.id})
        
        // Create Applicant
        await PromiseModel.create(app.models.Applicant, {user_id: _user.id})

        // cb(null, _user)
        cb(null, {status: 'OK', id: _user.id})
    } catch (err) {
        cb(err)
    }
}

function _user_check_exist(app, filter){
    let FBUser = app.models.FBUser
    // return PromiseModel.findOne(app.models.AppUser, filter)
    return new Promise((resolve, reject) => {
        FBUser.findOne(filter, (err, result) => {
            if (err) return reject(err)
            if(result!==null){
                reject({statusCode: 400, message:'User Already register.'})
            }
            resolve(result)
        })
    })
}
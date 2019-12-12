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

    FbUser.register_systemuser = function (req,cb) {
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
        if(typeof(req.body.role)==='undefined'){
            // create dummy email
            // req.body.email = req.body.username + Date.now()+'@sample.com'
            return cb({statusCode: 400, message:'Missing role.'})   
        }
        // ------------------------------------------------------
        _registerSystemuser(app, req, cb)
    }

    FbUser.list_systemuser = function (cb){
        _listSystemuser(app, cb)
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

    FbUser.remoteMethod('register_systemuser', {
        description: `Register System User`,
        isStatic: true,
        accepts: [{arg: 'req', type: 'object', 'http': {source: 'req'}}],
        returns: {
            type: 'object',
            root: true
        },
        http: { path: '/register/systemuser', verb: 'post' }
    })

    FbUser.remoteMethod('list_systemuser', {
        description: `List Of All System Users`,
        isStatic: true,
        // accepts: [{arg: 'req', type: 'object'}],
        accepts:[],
        returns: {
            type: 'object',
            root: true
        },
        http: { path: '/list/systemuser', verb: 'get' }
    })

    FbUser.response_fb = function (req,cb) {
        if(typeof(req.body.name)==='undefined'){
            return cb({statusCode: 400, message:'Missing username.'})   
        }
        if(typeof(req.body.email)==='undefined'){
            return cb({statusCode: 400, message:'Missing email.'})   
        }
        if(typeof(req.body.accessToken)==='undefined'){
            return cb({statusCode: 400, message:'Missing access token.'})   
        }
        if(typeof(req.body.id)==='undefined'){
            return cb({statusCode: 400, message:'Missing ID.'})   
        }
        // ------------------------------------------------------
        _responseFacebook(app, req, cb)
    }

    FbUser.remoteMethod('response_fb', {
        description: `Verify Response FB`,
        isStatic: true,
        accepts: [{arg: 'req', type: 'object', 'http': {source: 'req'}}],
        returns: {
            type: 'object',
            root: true
        },
        http: { path: '/verify/facebook', verb: 'post' }
    })

};



async function _registerApplicant(app, req, cb){
    try {

        // Check Role
        let _role = await PromiseModel.findOne(app.models.Role, {where:{name: 'Applicant'}})
        if(_role === null){
            return cb({statusCode: 400, message:'Missing role.'})
        }
        else if(_role === 'Oerational_director'){

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
        await PromiseModel.create(app.models.FBUserDetails, {user_id: _user.id})
        
        // Create Applicant
        //await PromiseModel.create(app.models.Applicant, {user_id: _user.id})

        // cb(null, _user)
        cb(null, {message: 'Register Completed', id: _user.id})
    } catch (err) {
        cb(err)
    }
}

async function _registerSystemuser(app, req, cb){
    try {

        // Check Role
        let _role = await PromiseModel.findOne(app.models.Role, {where:{name: req.body.role}})
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
        await PromiseModel.create(app.models.FBUserDetails, {user_id: _user.id})
        

        
        // Create Applicant
        if(req.body.role === "Site_sv_engineer"){

            await PromiseModel.create(app.models.SiteSvEngineer, {sv_eng_name: req.body.username, user_id: _user.id})

        }


        // cb(null, _user)
        cb(null, {message: 'Register Completed', id: _user.id})
    } catch (err) {
        cb(err)
    }
}

async function _listSystemuser(app, cb) {
    try {
        // Check Role
        let _role = await PromiseModel.find(app.models.Role, {})
        if(_role.length<1){
            return cb({statusCode: 400, message:'Missing role.'})
        }

        // console.log(_role)
        let result = []
        for (let i = 0; i < _role.length; i++) {
            // Get UserId from RoleMapping
            let _userId = await PromiseModel.find(app.models.RoleMapping,{where:{roleId:_role[i].id}})
            if(_userId.length > 0){

                // console.log(_userId)
                let _arrId = []
                _userId.forEach(element => {
                    _arrId.push({id:element.principalId})
                });
                
                // Find User
                let _users = await PromiseModel.find(app.models.FBUser, { where:{or:_arrId}})       
                for (let index = 0; index < _users.length; index++) {
                    _users[index].role = _role[i].name
                }

                result= result.concat(_users)
            }
            // console.log(result)
        }
        cb(null, result)
    } catch (err) {
        cb(err)
    }
}

async function _responseFacebook(app, req, cb){
    try {

        // Check Role
        let _role = await PromiseModel.findOne(app.models.Role, {where:{name: 'Applicant'}})
        if(_role === null){
            return cb({statusCode: 400, message:'Missing role.'})
        }

        // Check User
        let exist = await new Promise((resolve, reject)=>{
            app.models.FBUser.findOne({ where: {username: 'fb.'+req.body.id }},function(err,res){
                if(err){
                    return reject(err)
                }
                resolve(res)
            })
        })
        //  _user_check_exist(app,{ where: {username: 'fb.'+req.body.id }})
        
        
        
        if(!exist){
            let _user = await PromiseModel.create(app.models.FBUser, {
                username: 'fb.'+req.body.id ,
                password: 'fb.'+req.body.id,
                email: req.body.email,
            })

            // Create Role Mapping
            await PromiseModel.create(app.models.RoleMapping,{
                principalType: app.models.RoleMapping.USER,
                principalId: _user.id,
                roleId: _role.id})

            // Create FUser Detail
            await PromiseModel.create(app.models.FBUserDetails, {user_id: _user.id})
            
            // Create Applicant
            //await PromiseModel.create(app.models.Applicant, {user_id: _user.id})
        }
        

        // login
        let res = await new Promise((resolve, reject)=>{
            app.models.FBUser.login({username: 'fb.'+req.body.id,password: 'fb.'+req.body.id}, function(err,token){
                if(err){ return reject(err)}
                resolve(token)
            })
        })
        
        res.role = 'Applicant'

        // cb(null, _user)

        console.log(res)
        cb(null, res)
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
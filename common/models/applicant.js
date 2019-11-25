'use strict';

const PromiseModel = require('../promise-model')

module.exports = function(Applicant) {

    var app;

    Applicant.on('attached', function (a) {
        app = a;
    });


    Applicant.register = function (req, cb) {
        if(typeof(req.body.username)==='undefined'){
            return cb({statusCode: 400, message:'Missing username.'})   
        }
        if(typeof(req.body.password)==='undefined'){
            return cb({statusCode: 400, message:'Missing password.'})   
        }

        // ------------------------------------------------------
        if(typeof(req.body.email)==='undefined'){
            // create dummy email
            req.body.email = req.body.username + Date.now()+'@sample.com'
            //return cb({statusCode: 400, message:'Missing email.'})   
        }
        // ------------------------------------------------------

        if(typeof(req.body.name)==='undefined'){
            return cb({statusCode: 400, message:'Missing user fullname.'})   
        }
        if(typeof(req.body.userRole)==='undefined'){
            return cb({statusCode: 400, message:'Missing role.'})   
        }
        if(typeof(req.body.contact)==='undefined'){
            return cb({statusCode: 400, message:'Missing contact.'})   
        }
        if(typeof(req.body.createdBy)==='undefined'){
            return cb({statusCode: 400, message:'Missing createdBy.'})   
        }

        _registerUser(app,req,cb)
    }
    Applicant.remoteMethod('register', {
        description: `Register User Manager`,
        isStatic: true,
        accepts: [{arg: 'req', type: 'object', 'http': {source: 'req'}}],
        returns: {
            type: 'object',
            root: true
        },
        http: { path: '/register', verb: 'post' }
    })

    Applicant.lists = function (req, cb) {
        lists(app, cb)
    }
    Applicant.remoteMethod('lists', {
        description: `List Applicant`,
        isStatic: true,
        accepts: [{arg: 'req', type: 'object', 'http': {source: 'req'}}],
        returns: {
            type: 'object',
            root: true
        },
        http: { path: '/lists', verb: 'get' }
    })
};


async function lists(app, cb){
    try {
        let _user = await PromiseModel.find(app.models.Applicant, {})
        // console.log(_user)
        let ids = []
        _user.forEach(element => {
            ids.push({user_id: element.user_id})
        });

        let _detail = await PromiseModel.find(app.models.FBUser_details, {where: {or: ids}})
        // console.log(_detail)

        // _detail.

        for (let i = 0; i < _user.length; i++) {
           
            for (let j = 0; j < _detail.length; j++) {

                console.log(_detail[j])
                console.log(_detail[j].user_phoneno)
                console.log(_detail[j].user_id)
                // console.log(_detail[j].user_id.getAsync())
                // _detail[j].user_id.getAsync().then(res=>{
                //     console.log(res)
                // })
                // _detail[j].user_id(function(err, res){
                //     console.log(err)
                //     console.log(res)
                // })
                // _detail[j].user_id.get(function(err, res){
                //     console.log(err)
                //     console.log(res)
                // })


                // console.log(_user[i].user_id)
                // _detail[j].getAsync().then(result=>{
                //     console.log(result)
                // })
                // if(_user[i].user_id === _detail[j].user_id){
                //             console.log('===============')
                //             Object.assign(_user[i],element)
                //         }
                // _detail[j](function(err, result){
                //     console.log(err)
                //     console.log(result)
                // })
            }

            // _detail.forEach(element => {
            //     console.log(element)
            //     if(_user[i].user_id === element.user_id){
            //         console.log('===============')
            //         Object.assign(_user[i],element)
            //     }
            // });
            
        }

        app.models.FBUser_details.find({where: {or: ids}}, function(err, result){
            if(err){
                return
            }

            console.log('-------------')
            result.forEach(element=>{
                // console.log(element.user_id)
                // element.user_id.get(function(e, re){
                //     console.log(re)
                // })
                // element.user_id(function(e, re){
                //     console.log(re)
                // })
                element.user_id.build(function(e, re){
                    console.log(re)
                })
            })
        })


        // console.log(_user)

        // {or:[{id: 1},{id:2}]}
    } catch (error) {
        
    }
}
'use strict';

module.exports = function(FbUser) {

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
};

/* eslint-disable */
'use strict';
var app = require('../server/server');
const uuidv1 = require('uuid/v1');

var modelList = [
    'FBUser',
    'FBUser_details',
    'Applicant',
    'Applicant_application',
    'Applicant_attachment',
    'Jobs_available',
    'Fabtech_admin',
    'Message',
    'Broadcast_message',
    'Top_management',
    'Task_details',
    'Site_sv_engineer',
    'Daily_log_report',
    'Daily_timesheet',
    'Daily_timesheet_details',
    'Request_list',
    'List_issues_status',
    'Operational_director',
    'Type_of_services',
    'Project_created',
    'AccessToken',
    'ACL',
    'RoleMapping',
    'Role'
    
];


var ds = app.datasources.mysql;
//==================== Promisify Callback =========================
function createTables(ds,tables){
    return new Promise((resolve,reject)=>{
        ds.automigrate(tables,(err)=>{
            if(err){return reject(err)}
            resolve(tables);
        })
    })
}
function createRole(app,role){
    var Role = app.models.Role;
    return new Promise((resolve,reject)=>{
        Role.create({"name":role},(err,res)=>{
            if(err){return reject(err);}
            resolve(res);
        });
    })
}
function createRoleMap(role,FBUser){
    return new Promise((resolve,reject)=>{
        role.principals.create({"principalType":"User","principalId":FBUser.id},(err,res)=>{
            if(err){return reject(err)}
            resolve(res)
        })
    });
}

function insertDefaultFBUser(app,username,email,password){
    var FBUser = app.models.FBUser;
    return new Promise((resolve,reject)=>{
        FBUser.create({
            'user_id': uuidv1(),
            'username':username,
            'email':email,
            'password':password
        },(err,res)=>{
            if(err){return reject(err)}
            resolve(res)
        })
    })
}
//================================================================
async function migrate(){
    try{
        console.log("Creating the tables ....");

        let tables = await createTables(ds,modelList);
        console.log("Success:",tables);

        let Applicant = await createRole(app,"Applicant");
        let Operational_director = await createRole(app,"Operational_director");
        let Fabtech_admin = await createRole(app,"Fabtech_admin");
        let Site_sv_engineer = await createRole(app,"Site_sv_engineer");
        let Top_management = await createRole(app,"Top_management");

        console.log("Creating user 1 ...");
        let user1 = await insertDefaultFBUser(app,"applicant1","applicant1@system.com","1234567");
        console.log("User 1 created:",user1);
        let ApplicantMapped = await createRoleMap(Applicant,user1); 
        console.log("Mapped user :",ApplicantMapped);
        /*let officerMapped = await createRoleMap(officer,user1); 
        console.log("Mapped user :",officerMapped);
*/
        console.log("Creating user 2 ...");
        let user2 = await insertDefaultFBUser(app,"Operational_director","Operational_director@system.com","1234567");
        console.log("User 2 created:",user2);
        let Operational_directorMapped = await createRoleMap(Operational_director,user2); 
        console.log("Mapped user :",Operational_directorMapped);

        console.log("Creating user 3 ...");
        let user3 = await insertDefaultFBUser(app,"Fabtech_admin","Fabtech_admin@system.com","1234567");
        console.log("User 3 created:",user3);
        let Fabtech_adminMapped = await createRoleMap(Fabtech_admin,user3); 
        console.log("Mapped user :",Fabtech_adminMapped);

        console.log("Creating user 4 ...");
        let user4 = await insertDefaultFBUser(app,"Site_sv_engineer","Site_sv_engineer@system.com","1234567");
        console.log("User 4 created:",user4);
        let Site_sv_engineerMapped = await createRoleMap(Site_sv_engineer,user4); 
        console.log("Mapped user :",Site_sv_engineerMapped);

        console.log("Creating user 5 ...");
        let user5 = await insertDefaultFBUser(app,"Top_management","Top_management@system.com","1234567");
        console.log("User 5 created:",user5);
        let Top_managementMapped = await createRoleMap(Top_management,user5); 
        console.log("Mapped user :",Top_managementMapped)

        process.exit(0);
    }catch(err){
        console.log("Failed : ",err);
        process.exit(1);
    }
}

migrate();
/* eslint-enable */

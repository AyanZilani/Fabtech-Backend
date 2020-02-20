/* eslint-disable */
'use strict';
var app = require('../server/server');
const uuidv1 = require('uuid/v1');

var modelList = [
    'FBUser',
    'FBUserDetails',
    'Applicant',
    'ApplicantApplication',
    'ApplicantTrades',
    'ApplicantCertificates',
    'JobsAvailable',
    'FabtechAdmin',
    'Message',
    'BroadcastMessage',
    'TopManagement',
    'TaskDetails',
    'SiteSvEngineer',
    'DailyLogReport',
    'DailyTimesheet',
    'DailyTimesheetDetails',
    'RequestList',
    'OperationalDirector',
    'TypeOfServices',
    'ProjectCreated',
    'AccessToken',
    'ACL',
    'RoleMapping',
    'Role',
    'JobsInvitation',
    'ProjectDetails',
    'ProjectAssigned',
    'Post',
    'Comment',
    'TradeCertLinked',
    'Certificates',
    'Trades',
    'AdditionalCertificate',
    'ProjectSvEng',
    'ProjectWorker',
    'LogType',
    'IssueType',
    'IssuesList',
    'InternalMessage'
    
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

function insertDefaultJobs_available(app,job_name,job_type,job_details){
    var JobsAvailable = app.models.JobsAvailable;
    return new Promise((resolve,reject)=>{
        JobsAvailable.create({
            'job_id': uuidv1(),
            'job_name':job_name,
            'job_type':job_type,
            'job_details':job_details
        },(err,res)=>{
            if(err){return reject(err)}
            resolve(res)
        })
    })
}

function insertAdditionalCert(app,certificate_name){
    var AdditionalCertificate = app.models.AdditionalCertificate;
    return new Promise((resolve,reject)=>{
        AdditionalCertificate.create({
            'certificate_name':certificate_name,
        },(err,res)=>{
            if(err){return reject(err)}
            resolve(res)
        })
    })
}

function insertTradeCertLinked(app,trade_name, certificate_name){
    var TradeCertLinked = app.models.TradeCertLinked;
    return new Promise((resolve,reject)=>{
        TradeCertLinked.create({
            'trade_name':trade_name,
            'certificate_name':certificate_name,
        },(err,res)=>{
            if(err){return reject(err)}
            resolve(res)
        })
    })
}

function insertTypeServices(app,service_name){
    var TypeOfServices = app.models.TypeOfServices;
    return new Promise((resolve,reject)=>{
        TypeOfServices.create({
            'service_name':service_name
        },(err,res)=>{
            if(err){return reject(err)}
            resolve(res)
        })
    })
}

function insertIssueType(app,name){
    var IssueType = app.models.IssueType;
    return new Promise((resolve,reject)=>{
        IssueType.create({
            'name':name
        },(err,res)=>{
            if(err){return reject(err)}
            resolve(res)
        })
    })
}

function insertLogType(app,name){
    var LogType = app.models.LogType;
    return new Promise((resolve,reject)=>{
        LogType.create({
            'name':name
        },(err,res)=>{
            if(err){return reject(err)}
            resolve(res)
        })
    })
}

function insertTrades(app,trade_name){
    var Trades = app.models.Trades;
    return new Promise((resolve,reject)=>{
        Trades.create({
            'trade_name':trade_name
        },(err,res)=>{
            if(err){return reject(err)}
            resolve(res)
        })
    })
}

function insertDefaultApplicant(app,applicant_name,applicant_icno,applicant_passportno,applicant_address,applicant_other_detail){
    var Applicant = app.models.Applicant;
    return new Promise((resolve,reject)=>{
        Applicant.create({
            'applicant_id': uuidv1(),
            'applicant_name':applicant_name,
            'applicant_icno':applicant_icno,
            'applicant_passportno':applicant_passportno,
            'applicant_address':applicant_address,
            'applicant_other_detail':applicant_other_detail
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

        // let applicant1 = await insertDefaultApplicant(app,"Mohd Ali Bin Maskur","800101014333","-","Taman Molek, JB","details")

        let addcert1 = await insertAdditionalCert(app,"T-BOISIET")
        let addcert2 = await insertAdditionalCert(app,"Authorized Entrant and Standby Person (AESP) Certificate")
        let addcert3 = await insertAdditionalCert(app,"Oil and Gas Safety Passport (OGSP) Certificate")
        let addcert4 = await insertAdditionalCert(app,"CIDB green card")
        let addcert5 = await insertAdditionalCert(app,"Medical")

        let cert1 = await insertTradeCertLinked(app,"Blaster Painter", "Blasting & Painting Certificate")
        let cert2 = await insertTradeCertLinked(app,"Driver", "Driving License")
        let cert3 = await insertTradeCertLinked(app,"Electrician", "Electrician Certificate")
        let cert4 = await insertTradeCertLinked(app,"Fire Watcher", "Fire Watcher Safety Certificate")
        let cert5 = await insertTradeCertLinked(app,"General Worker", null)
        let cert6 = await insertTradeCertLinked(app,"GRE Bonder", "GRE/FRP Bonders Certificate")
        let cert7 = await insertTradeCertLinked(app,"Helper", null)
        let cert8 = await insertTradeCertLinked(app,"Instrument Technician", "Instrumentation Certificate")
        let cert9 = await insertTradeCertLinked(app,"Material Coordinator", null)
        let cert10 = await insertTradeCertLinked(app,"Mechanical Fitter", "Mechanical Fitter Certificate")
        let cert11 = await insertTradeCertLinked(app,"Pipe Fitter", "Pipe Fitter Certificate")
        let cert12 = await insertTradeCertLinked(app,"PTW Coordinator", null)
        let cert13 = await insertTradeCertLinked(app,"QA/QC", "Welding Inspector Certificate")
        let cert14 = await insertTradeCertLinked(app,"Rigger", "Rigging & Slinging Certificate")
        let cert15 = await insertTradeCertLinked(app,"Safety Supervisor", "Site Safety Supervisor (SSS) Certificate")
        let cert16 = await insertTradeCertLinked(app,"Scaffolder", "Scaffolding Certificate")
        let cert17 = await insertTradeCertLinked(app,"Scaffolding Inspector", "Scaffolding Inspector Certificate")
        let cert18 = await insertTradeCertLinked(app,"Welder", "Welding Certificate")
        let cert19 = await insertTradeCertLinked(app,"Foreman", null)
        let cert20 = await insertTradeCertLinked(app,"Marker", null)
        let cert21 = await insertTradeCertLinked(app,"Grinder", null)
        let cert22 = await insertTradeCertLinked(app,"Quality Controller", null)
        let cert23 = await insertTradeCertLinked(app,"Safety Promoter", null)
        let cert24 = await insertTradeCertLinked(app,"Semi Skill", null)

        let service1 = await insertTypeServices(app,"Marine")
        let service2 = await insertTypeServices(app,"Offshore")
        let service3 = await insertTypeServices(app,"Supply")
        
        let issue1 = await insertIssueType(app,"HSE")
        let issue2 = await insertIssueType(app,"Equipment")
        let issue3 = await insertIssueType(app,"Quality")
        let issue4 = await insertIssueType(app,"Material")
        let issue5 = await insertIssueType(app,"Others")

        let log1 = await insertLogType(app,"Crew")
        let log2 = await insertLogType(app,"Subcontractor")
        let log3 = await insertLogType(app,"Equipment")
        let log4 = await insertLogType(app,"Material")

        let trade1 = await insertTrades(app,"Blaster Painter")
        let trade2 = await insertTrades(app,"Driver")
        let trade3 = await insertTrades(app,"Electrician")
        let trade4 = await insertTrades(app,"Fire Watcher")
        let trade5 = await insertTrades(app,"General Worker")
        let trade6 = await insertTrades(app,"GRE Bonder")
        let trade7 = await insertTrades(app,"Helper")
        let trade8 = await insertTrades(app,"Instrument Technician")
        let trade9 = await insertTrades(app,"Material Coordinator")
        let trade10 = await insertTrades(app,"Mechanical Fitter")
        let trade11 = await insertTrades(app,"Pipe Fitter")
        let trade12 = await insertTrades(app,"PTW Coordinator")
        let trade13 = await insertTrades(app,"QA/QC")
        let trade14 = await insertTrades(app,"Rigger")
        let trade15 = await insertTrades(app,"Safety Supervisor")
        let trade16 = await insertTrades(app,"Scaffolder")
        let trade17 = await insertTrades(app,"Scaffolding Inspector")
        let trade18 = await insertTrades(app,"Welder")
        let trade19 = await insertTrades(app,"Foreman")
        let trade20 = await insertTrades(app,"Marker")
        let trade21 = await insertTrades(app,"Grinder")
        let trade22 = await insertTrades(app,"Quality Controller")
        let trade23 = await insertTrades(app,"Safety Promoter")
        let trade24 = await insertTrades(app,"Semi Skill")

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

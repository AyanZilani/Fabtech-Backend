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
    'InternalMessage',
    'RequestAttachment',
    'LogAttachment',
    'DetailAttachment',
    'Safety'
];


var ds = app.datasources.mysql;

ds.autoupdate(modelList, function(err, result){ 
    if(err) throw err;
    console.log('Loopback Tables ['+ modelList +'] updated in', ds.adapter.name)
    ds.disconnect()
})

-- create collections

INSERT INTO collection VALUES (2,'Blogs','collection:BLOG',NULL,NULL);
INSERT INTO collection VALUES (3,'Posts','collection:BLOGPOST',NULL,NULL);
INSERT INTO collection VALUES (4,'Comments','collection:COMMENT',NULL,NULL);
INSERT INTO collection VALUES (5,'Pages','collection:PAGE',NULL,NULL);
INSERT INTO collection VALUES (6,'Provisional Blogs','collection:PROVBLOG',NULL,NULL);
INSERT INTO collection VALUES (7,'Rejected Blogs','collection:REJBLOG',NULL,NULL);
INSERT INTO collection VALUES (8,'Restricted','542__f:Restricted',NULL,NULL);
INSERT INTO collection VALUES (9,'Private','542__f:Private',NULL,NULL);

INSERT INTO collectionname VALUES (2,'en','ln','Blogs');
INSERT INTO collectionname VALUES (3,'en','ln','Posts');
INSERT INTO collectionname VALUES (4,'en','ln','Comments');
INSERT INTO collectionname VALUES (5,'en','ln','Pages');
INSERT INTO collectionname VALUES (6,'en','ln','Provisional Blogs');
INSERT INTO collectionname VALUES (7,'en','ln','Rejected Blogs');
INSERT INTO collectionname VALUES (8,'en','ln','Restricted');
INSERT INTO collectionname VALUES (9,'en','ln','Private');

INSERT INTO collection_collection VALUES (1,2,'r',20);
INSERT INTO collection_collection VALUES (1,3,'r',30);
INSERT INTO collection_collection VALUES (1,4,'r',40);
INSERT INTO collection_collection VALUES (1,5,'r',50);


-- set the 'websearch_instantbrowse_by_field' plugin up to
-- the blog posts collection to display them by publication date

-- INSERT INTO collection_instantbrowse VALUES (3, 'websearch_instantbrowse_by_field', '{"field": "269__c", "order": "d"}');


-- blogs submission form

INSERT INTO sbmALLFUNCDESCR VALUES ('APM_Mail_Final_Decision_to_User',NULL);
INSERT INTO sbmALLFUNCDESCR VALUES ('APM_Print_Success',NULL);
INSERT INTO sbmALLFUNCDESCR VALUES ('APO_Mail_Final_Decision_to_User','');
INSERT INTO sbmALLFUNCDESCR VALUES ('APO_Print_Success','');
INSERT INTO sbmALLFUNCDESCR VALUES ('APP_Mail_Final_Decision_to_User','');
INSERT INTO sbmALLFUNCDESCR VALUES ('APP_Print_Success','');
INSERT INTO sbmALLFUNCDESCR VALUES ('APS_Mail_Final_Decision_to_User','');
INSERT INTO sbmALLFUNCDESCR VALUES ('APS_Print_Success','');
INSERT INTO sbmALLFUNCDESCR VALUES ('Check_URL',NULL);
INSERT INTO sbmALLFUNCDESCR VALUES ('Get_Recid_Number','');
INSERT INTO sbmALLFUNCDESCR VALUES ('DBI_Mail_Approval_Request_to_Referee','');
INSERT INTO sbmALLFUNCDESCR VALUES ('DBI_Mail_Notification_to_User',NULL);
INSERT INTO sbmALLFUNCDESCR VALUES ('DBI_Print_Success','');
INSERT INTO sbmALLFUNCDESCR VALUES ('DBI_Mail_Blog_Deleted_to_User','');
INSERT INTO sbmALLFUNCDESCR VALUES ('DPI_Mail_Approval_Request_to_Referee',NULL);
INSERT INTO sbmALLFUNCDESCR VALUES ('DPI_Mail_Notification_to_User','');
INSERT INTO sbmALLFUNCDESCR VALUES ('DPI_Print_Success',NULL);
INSERT INTO sbmALLFUNCDESCR VALUES ('DPI_Mail_Post_Deleted_to_User','');
INSERT INTO sbmALLFUNCDESCR VALUES ('MBI_Mail_Approval_Request_to_Referee',NULL);
INSERT INTO sbmALLFUNCDESCR VALUES ('MBI_Mail_Notification_to_User',NULL);
INSERT INTO sbmALLFUNCDESCR VALUES ('MBI_Print_Success','');
INSERT INTO sbmALLFUNCDESCR VALUES ('SBI_Mail_Approval_Request_to_Referee',NULL);
INSERT INTO sbmALLFUNCDESCR VALUES ('SBI_Mail_Notification_to_User','');
INSERT INTO sbmALLFUNCDESCR VALUES ('SBI_Print_Success',NULL);

INSERT INTO sbmCOLLECTION VALUES ('1','Blog Submission Interface');
INSERT INTO sbmCOLLECTION_sbmCOLLECTION VALUES ('0','1', '1');
INSERT INTO sbmCOLLECTION_sbmDOCTYPE VALUES ('1','BSI','1');
INSERT INTO sbmCOLLECTION_sbmDOCTYPE VALUES ('1','BSIREF','2');

INSERT INTO sbmDOCTYPE VALUES ('Blog Submission','BSI','2012-05-23','2012-09-03','Blog Submission');
INSERT INTO sbmDOCTYPE VALUES ('Blog Submission (Refereed)','BSIREF','2012-08-30','2012-09-03','Blog Submission (Refereed)');

INSERT INTO sbmFIELD VALUES ('DBIBSI',1,1,'BSI_RN','<table style=\"font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 16px;width: 400px;height:380px;background:#E8F9EC;border-spacing: 4px 4px;padding-left:10px;\" align=\"center\" cellspacing=\"2\" cellpadding=\"2\"><tr> \r\n<td style=\"text-align: left\"> <span style=\"font-weight: bold; color:red\">WARNING: If you delete a blog, all its comments and posts will be also deleted!</span> <tr> <td style=\"text-align: left\"> <span style=\"font-weight: bold;\">Delete a blog:</span><br /><br /> <span style=\"color: red;\">* </span><span>Insert the recid of the blog you wish to delete: </span><br /><br />','M','Blog recid','','2012-10-23','2012-10-24',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('DBIBSI',1,2,'DBI_END','<br /><br /></td></tr></td></tr></table><br />','O','Delete end bottom','','2012-08-10','2012-10-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('DPIBSI',1,1,'BSI_RN','<table style=\"font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 16px;width: 400px;height:380px;background:#E8F9EC;border-spacing: 4px 4px;padding-left:10px;\" align=\"center\" cellspacing=\"2\" cellpadding=\"2\"><tr> <td style=\"text-align: left\"> <span style=\"font-weight: bold;\">Delete a blog:</span><br /><br /><span style=\"color: red;\">* </span><span>Insert the recid of the post you wish to delete: </span><br /><br />','M','Post recid','','2012-10-23','2012-10-24',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('DPIBSI',1,2,'DPI_END','<br /><br /></td></tr></td></tr></table><br />','O','Delete end bottom','','2012-10-18','2012-10-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('MBIBSI',1,1,'BSI_RN','<table style=\"font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 16px;width: 400px;height:380px;background:#E8F9EC;border-spacing: 4px 4px;padding-left:10px;\" align=\"center\" cellspacing=\"2\" cellpadding=\"2\">\r\n<tr>\r\n<td style=\"text-align: left\"><br />\r\n<span style=\"font-weight: bold;\">Modify blog metadata</span><br /><br />\r\n<span style=\"color: red;\">* </span><span>Blog recid:</span><br />','M','Blog recid','','2012-10-23','2012-10-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('MBIBSI',1,2,'MBI_SELECT','<br /><br /><span style=\"color: red;\">* </span>Choose the fields you wish to modify:<br />','O','Fields to modify','','2012-07-26','2012-10-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('MBIBSI',1,3,'MBI_CONT','<br /><br /></td></tr></table><br />','O','','','2012-07-26','2012-10-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('SBIBSI',1,1,'BSI_TITLE','<table style=\"font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 16px;width: 400px;height:380px;background:#E8F9EC;border-spacing: 4px 4px;padding-left:10px;\" align=\"center\" cellspacing=\"2\" cellpadding=\"2\">\r\n<tr>\r\n<td style=\"text-align: left\"><br />\r\n<span style=\"font-weight: bold;\">Submit blog metadata</span><br /><br />\r\n<span>Blog title:</span><br />','O','Blog title','','2012-05-23','2012-10-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('SBIBSI',1,2,'BSI_URL','<br /><br />\r\n<span style=\"color: red;\">* </span>Blog URL:<br />','M','Blog URL','','2012-05-23','2012-10-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('SBIBSI',1,3,'BSI_TOPIC','<br /><br /><span style=\"color: red;\">* </span>Topic:<br />','M','Topic','','2012-05-23','2012-05-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('SBIBSI',1,4,'BSI_LICENSE','<br /><br /><span style=\"color: red;\">* </span>License:<br />','M','License','','2012-05-23','2012-05-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('SBIBSI',1,5,'BSI_END','<br /><br /></td></tr></table><br />','O','','','2012-05-23','2012-08-06',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('APMBSIREF',1,1,'BSI_RN','<table style=\"font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 16px;width: 400px;height:380px;background:#E8F9EC;border-spacing: 4px 4px;padding-left:10px;\" align=\"center\" cellspacing=\"2\" cellpadding=\"2\"> <tr> <td style=\"text-align: left\"><br /> <span style=\"font-weight: bold;\">Approve or reject the modification of a blog</span><br /><br /><span style=\"color: red;\">* </span><span>Blog recid:</span><br />','M','Blog recid','','2012-10-23','2012-10-24',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('APMBSIREF',1,2,'BSI_DEC','<br /><br />\r\n<span style=\"color: red;\">* </span>Decision:<br />','O','Decision','','2012-10-15','2012-10-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('APMBSIREF',1,3,'BSI_COMENT','<br /><br />Comments on decision:<br />','O','Referees\' Comments','','2012-10-15','2012-10-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('APMBSIREF',1,4,'BSI_REGDEC','<br /><br /></td></tr></table>','O','','','2012-10-15','2012-10-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('APOBSIREF',1,1,'BSI_RN','<table style=\"font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 16px;width: 400px;height:380px;background:#E8F9EC;border-spacing: 4px 4px;padding-left:10px;\" align=\"center\" cellspacing=\"2\" cellpadding=\"2\"> <tr> <td style=\"text-align: left\"><br /> <span style=\"font-weight: bold;\">Approve or reject the deletion of a post</span><br /><br /><span style=\"color: red;\">* </span><span>Post recid:</span><br />','M','Post recid','','2012-10-23','2012-10-24',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('APOBSIREF',1,2,'BSI_DEC','<br /><br />\r\n<span style=\"color: red;\">* </span>Decision:<br />','O','Decision','','2012-10-09','2012-10-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('APOBSIREF',1,3,'BSI_COMENT','<br /><br />Comments on decision:<br />','O','Referees\' Comments','','2012-10-09','2012-10-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('APOBSIREF',1,4,'BSI_REGDEC','<br /><br /></td></tr></table>','O','','','2012-10-09','2012-10-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('APPBSIREF',1,1,'BSI_RN','<table style=\"font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 16px;width: 400px;height:380px;background:#E8F9EC;border-spacing: 4px 4px;padding-left:10px;\" align=\"center\" cellspacing=\"2\" cellpadding=\"2\"> <tr> <td style=\"text-align: left\"><br /> <span style=\"font-weight: bold;\">Approve or reject the deletion of a blog</span><br /><br /> <span style=\"color: red;\">* </span><span>Blog recid:</span><br />','M','Blog recid','','2012-10-23','2012-10-24',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('APPBSIREF',1,2,'BSI_DEC','<br /><br />\r\n<span style=\"color: red;\">* </span>Decision:<br />','O','Decision','','2012-09-03','2012-10-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('APPBSIREF',1,3,'BSI_COMENT','<br /><br />Comments on decision:<br />\r\n','O','Referees\' Comments','','2012-09-03','2012-10-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('APPBSIREF',1,4,'BSI_REGDEC','<br /><br /></td></tr></table>','O','','','2012-09-03','2012-10-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('APSBSIREF',1,1,'BSI_RN','<table style=\"font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 16px;width: 400px;height:380px;background:#E8F9EC;border-spacing: 4px 4px;padding-left:10px;\" align=\"center\" cellspacing=\"2\" cellpadding=\"2\"> <tr> <td style=\"text-align: left\"><br /> <span style=\"font-weight: bold;\">Approve or reject a new blog</span><br /><br /> <span><span style=\"color: red;\">* </span>Blog reference number:</span><br />','M','Reference number','','2012-10-22','2012-10-24',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('APSBSIREF',1,2,'BSI_DEC','<br /><br />\r\n<span style=\"color: red;\">* </span>Decision:<br />','O','Decision','','2012-10-15','2012-10-22',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('APSBSIREF',1,3,'BSI_COMENT','<br /><br />Comments on decision:<br />\r\n','O','Referees\' Comments','','2012-10-15','2012-10-22',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('APSBSIREF',1,4,'BSI_REGDEC','<br /><br /></td></tr></table>','O','','','2012-10-15','2012-10-22',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('DBIBSIREF',1,1,'BSI_RN','<table style=\"font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 16px;width: 400px;height:380px;background:#E8F9EC;border-spacing: 4px 4px;padding-left:10px;\" align=\"center\" cellspacing=\"2\" cellpadding=\"2\"><tr> \r\n<td style=\"text-align: left\"> <span style=\"font-weight: bold; color:red\">WARNING: If you delete a blog, all its comments and posts will be also deleted!</span> <tr> <td style=\"text-align: left\"> <span style=\"font-weight: bold;\">Delete a blog</span><br /><br /><span style=\"color: red;\">* </span><span>Insert the recid of the blog you wish to delete:</span><br /><br />','M','Blog recid','','2012-10-23','2012-10-24',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('DBIBSIREF',1,2,'DBI_END','<br /><br /></td></tr></td></tr></table><br />','O','Delete blog end bottom','','2012-08-30','2012-10-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('DPIBSIREF',1,1,'BSI_RN','<table style=\"font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 16px;width: 400px;height:380px;background:#E8F9EC;border-spacing: 4px 4px;padding-left:10px;\" align=\"center\" cellspacing=\"2\" cellpadding=\"2\"><tr> <td style=\"text-align: left\"> <span style=\"font-weight: bold;\">Delete a post</span><br /><br /> <span style=\"color: red;\">* </span><span>Insert the recid of the post you wish to delete:</span><br /><br />','M','Post recid','','2012-10-23','2012-10-24',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('DPIBSIREF',1,2,'DPI_END','<br /><br /></td></tr></table><br />','O','Delete post end bottom','','2012-10-15','2012-10-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('MBIBSIREF',1,1,'BSI_RN','<table style=\"font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 16px;width: 400px;height:380px;background:#E8F9EC;border-spacing: 4px 4px;padding-left:10px;\" align=\"center\" cellspacing=\"2\" cellpadding=\"2\">\r\n<tr>\r\n<td style=\"text-align: left\"><br />\r\n<span style=\"font-weight: bold;\">Modify blog metadata</span><br /><br />\r\n<span style=\"color: red;\">* </span><span>Blog recid:</span><br />','M','Blog recid','','2012-10-23','2012-10-24',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('MBIBSIREF',1,2,'MBI_SELECT','<br /><br /><span style=\"color: red;\">* </span>Choose the fields you wish to modify:<br />','O','Fields to modify','','2012-08-30','2012-10-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('MBIBSIREF',1,3,'MBI_CONT','<br /><br /></td></tr></table><br />','O','','','2012-08-30','2012-10-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('SBIBSIREF',1,1,'BSI_TITLE','<table style=\"font-family: Verdana, Arial, Helvetica, sans-serif;font-size: 16px;width: 400px;height:380px;background:#E8F9EC;border-spacing: 4px 4px;padding-left:10px;\" align=\"center\" cellspacing=\"2\" cellpadding=\"2\">\r\n<tr>\r\n<td style=\"text-align: left\"><br />\r\n<span style=\"font-weight: bold;\">Submit blog metadata</span><br /><br />\r\n<span>Blog title:</span><br />','O','Blog title','','2012-05-23','2012-10-18',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('SBIBSIREF',1,2,'BSI_URL','<br /><br />\r\n<span style=\"color: red;\">* </span>Blog URL:<br />','M','Blog URL','','2012-05-23','2012-06-21',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('SBIBSIREF',1,3,'BSI_TOPIC','<br /><br /><span style=\"color: red;\">* </span>Topic:<br />','M','Topic','','2012-05-23','2012-05-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('SBIBSIREF',1,4,'BSI_LICENSE','<br /><br /><span style=\"color: red;\">* </span>License:<br />','M','License','','2012-05-23','2012-05-23',NULL,NULL);
INSERT INTO sbmFIELD VALUES ('SBIBSIREF',1,5,'BSI_END','<br /><br /></td></tr></table><br />','O','','','2012-05-23','2012-08-06',NULL,NULL);

INSERT INTO sbmFIELDDESC VALUES ('BSI_COMENT',NULL,'','T',NULL,6,60,NULL,NULL,NULL,'2012-09-03','2012-09-03',NULL,NULL,0);
INSERT INTO sbmFIELDDESC VALUES ('BSI_DEC',NULL,'','S',NULL,NULL,NULL,NULL,NULL,'<select name=\"BSI_DEC\">\r\n<option value=\"- select -\">- select -</option>\r\n<option value=\"approve\">Approve</option>\r\n<option value=\"reject\">Reject</option>\r\n</select>','2012-09-03','2012-10-16',NULL,NULL,0);
INSERT INTO sbmFIELDDESC VALUES ('BSI_END',NULL,'','D',NULL,NULL,NULL,NULL,NULL,'<div align=\"center\">\r\n<INPUT TYPE=\"button\" class=\"adminbutton\" name=\"endS\" width=\"400\" height=\"50\" value=\"Submit blog\" onclick=\"finish();\">\r\n</div>','2012-05-23','2012-10-15',NULL,NULL,0);
INSERT INTO sbmFIELDDESC VALUES ('BSI_LICENSE',NULL,'542__f','R',NULL,NULL,NULL,NULL,NULL,'text = \'<select id=\"select-license\" name=\"BSI_LICENSE\">\'\r\n# FIXME: retrieve from the database\r\n# from invenio.dbquery import run_sql\r\n# license_names = run_sql(\"select name from license\")\r\nlicense_names = [\'Public\', \'Restricted\', \'Private\']\r\nlicense_descriptions = [\'Public - Everybody will have access to the content\',\r\n                        \'Restricted - Only registered users will have access to the content\',\r\n                        \'Private - Only you will have access to the content\']\r\n\r\nfor (license_name, license_description) in zip(license_names, license_descriptions):\r\n    text += \'<option value=\"%s\"> %s </option>\' % (license_name, license_description)\r\n\r\ntext += \"</select>\"\r\n','2012-05-23','2012-12-11','Enter new license:',NULL,0);
INSERT INTO sbmFIELDDESC VALUES ('BSI_REGDEC',NULL,'','D',NULL,NULL,NULL,NULL,NULL,'<div align=\"center\">\r\n<INPUT TYPE=\"button\" class=\"adminbutton\" name=\"endS\" width=\"400\" height=\"50\" value=\"Register decision\" onclick=\"finish();\">\r\n</div>','2012-09-03','2012-10-15',NULL,NULL,0);
INSERT INTO sbmFIELDDESC VALUES ('BSI_RN',NULL,'037__a','I',20,NULL,NULL,NULL,NULL,NULL,'2012-10-22','2012-10-23',NULL,NULL,0);
INSERT INTO sbmFIELDDESC VALUES ('BSI_TITLE',NULL,'245__a','I',40,NULL,NULL,NULL,NULL,'Blog Title','2012-05-23','2012-10-24','Enter new title:',NULL,0);
INSERT INTO sbmFIELDDESC VALUES ('BSI_TOPIC',NULL,'654__a','R',NULL,NULL,NULL,NULL,NULL,'text = \'<select name=\"BSI_TOPIC\">\'\r\n# FIXME: retrieve from the database\r\n# from invenio.dbquery import run_sql\r\n# topic_names = run_sql(\"select name from topic\")\r\ntopic_names = [\'Topic1\', \'Topic2\', \'Topic3\']\r\n\r\nfor topic_name in topic_names:\r\n    text += \'<option value=\"%s\"> %s </option>\' % (topic_name, topic_name)\r\n    \r\ntext += \"</select>\"\r\n','2012-05-23','2012-10-24','Enter new topic:',NULL,0);
INSERT INTO sbmFIELDDESC VALUES ('BSI_URL',NULL,'520__u','I',40,NULL,NULL,NULL,NULL,'Blog or Blog Post URL','2012-05-23','2012-09-03',NULL,NULL,0);
INSERT INTO sbmFIELDDESC VALUES ('DBI_END',NULL,'','D',NULL,NULL,NULL,NULL,NULL,'<div align=\"center\">\r\n<INPUT TYPE=\"button\" class=\"adminbutton\" name=\"endS\" width=\"400\" height=\"50\" value=\"Delete blog\" onclick=\"finish();\">\r\n</div>','2012-08-10','2012-10-15',NULL,NULL,0);
INSERT INTO sbmFIELDDESC VALUES ('DPI_END',NULL,'','D',NULL,NULL,NULL,NULL,NULL,'<div align=\"center\">\r\n<INPUT TYPE=\"button\" class=\"adminbutton\" name=\"endS\" width=\"400\" height=\"50\" value=\"Delete post\" onclick=\"finish();\">\r\n</div>','2012-10-15','2012-10-15',NULL,NULL,0);
INSERT INTO sbmFIELDDESC VALUES ('MBI_CONT',NULL,'','D',NULL,NULL,NULL,NULL,NULL,'<div align=\"center\">\r\n<input type=\"button\" class=\"adminbutton\" width=\"400\" height=\"50\" name=\"endS\" value=\"Continue\" onclick=\"finish();\" />\r\n</div>','2012-07-26','2012-10-15',NULL,NULL,0);
INSERT INTO sbmFIELDDESC VALUES ('MBI_SELECT',NULL,'','S',NULL,NULL,NULL,NULL,NULL,'<select name=\"MBI_SELECT[]\" multiple size=\"3\">\r\n <option selected value=\"BSI_TITLE\">Title</option>\r\n <option value=\"BSI_TOPIC\">Topic</option>\r\n <option value=\"BSI_LICENSE\">License</option>\r\n</select>\r\n','2012-07-26','2012-10-19',NULL,NULL,0);

UPDATE sbmACTION SET lactname="Submit a Blog", statustext="Submit a Blog" WHERE sactname="SBI";
UPDATE sbmACTION SET lactname="Modify a Blog", statustext="Modify a Blog" WHERE sactname="MBI";
-- INSERT INTO sbmACTION VALUES ('Submit a Blog', 'SBI', 'running', '2012-08-10', '2012-08-10', '', 'Submit a Blog');
-- INSERT INTO sbmACTION VALUES ('Modify a Blog', 'MBI', 'modify', '2012-08-10', '2012-08-10', '', 'Modify a Blog');
INSERT INTO sbmACTION VALUES ('Delete a Blog', 'DBI', 'delete', '2012-08-10', '2012-08-10', '', 'Delete a Blog');
INSERT INTO sbmACTION VALUES ('Delete a Post', 'DPI', 'delete', '2012-08-10', '2012-08-10', '', 'Delete a Post');
INSERT INTO sbmACTION VALUES ('Approve Blog Submission', 'APS', 'approve', '2012-08-10', '2012-08-10', '', 'Approve Blog Submission');
INSERT INTO sbmACTION VALUES ('Approve Blog Modification', 'APM', 'approve', '2012-08-10', '2012-08-10', '', 'Approve Blog Modification');
INSERT INTO sbmACTION VALUES ('Approve Post Deletion', 'APO', 'approve', '2012-08-10', '2012-08-10', '', 'Approve Post Deletion');
UPDATE sbmACTION SET lactname="Approve Blog Deletion", statustext="Approve Blog Deletion" WHERE sactname="APP";
-- INSERT INTO sbmACTION VALUES ('Approve Blog Deletion', 'APP', 'approve', '2012-08-10', '2012-08-10', '', 'Approve Blog Deletion');

INSERT INTO sbmFUNCTIONS VALUES ('DBI','BSI','DBI_Mail_Blog_Deleted_to_User',50,1);
INSERT INTO sbmFUNCTIONS VALUES ('DBI','BSI','DBI_Mail_Notification_to_User',40,1);
INSERT INTO sbmFUNCTIONS VALUES ('DBI','BSI','DBI_Print_Success',60,1);
INSERT INTO sbmFUNCTIONS VALUES ('DBI','BSI','Get_Recid_Number',10,1);
INSERT INTO sbmFUNCTIONS VALUES ('DBI','BSI','Is_Original_Submitter',20,1);
INSERT INTO sbmFUNCTIONS VALUES ('DBI','BSI','Make_Delete_Records',30,1);
INSERT INTO sbmFUNCTIONS VALUES ('DBI','BSI','Move_to_Done',70,1);
INSERT INTO sbmFUNCTIONS VALUES ('DPI','BSI','DPI_Mail_Notification_to_User',40,1);
INSERT INTO sbmFUNCTIONS VALUES ('DPI','BSI','DPI_Mail_Post_Deleted_to_User',50,1);
INSERT INTO sbmFUNCTIONS VALUES ('DPI','BSI','DPI_Print_Success',60,1);
INSERT INTO sbmFUNCTIONS VALUES ('DPI','BSI','Get_Recid_Number',10,1);
INSERT INTO sbmFUNCTIONS VALUES ('DPI','BSI','Is_Original_Submitter',20,1);
INSERT INTO sbmFUNCTIONS VALUES ('DPI','BSI','Make_Delete_Records',30,1);
INSERT INTO sbmFUNCTIONS VALUES ('DPI','BSI','Move_to_Done',70,1);
INSERT INTO sbmFUNCTIONS VALUES ('MBI','BSI','Create_Modify_Interface',30,1);
INSERT INTO sbmFUNCTIONS VALUES ('MBI','BSI','Get_Recid_Number',10,1);
INSERT INTO sbmFUNCTIONS VALUES ('MBI','BSI','Get_Recid_Number',10,2);
INSERT INTO sbmFUNCTIONS VALUES ('MBI','BSI','Insert_Modify_Record',40,2);
INSERT INTO sbmFUNCTIONS VALUES ('MBI','BSI','Is_Original_Submitter',20,1);
INSERT INTO sbmFUNCTIONS VALUES ('MBI','BSI','Is_Original_Submitter',20,2);
INSERT INTO sbmFUNCTIONS VALUES ('MBI','BSI','MBI_Mail_Notification_to_User',50,2);
INSERT INTO sbmFUNCTIONS VALUES ('MBI','BSI','MBI_Print_Success',60,2);
INSERT INTO sbmFUNCTIONS VALUES ('MBI','BSI','Make_Modify_Record',30,2);
INSERT INTO sbmFUNCTIONS VALUES ('MBI','BSI','Move_to_Done',70,2);
INSERT INTO sbmFUNCTIONS VALUES ('SBI','BSI','Check_URL',10,1);
INSERT INTO sbmFUNCTIONS VALUES ('SBI','BSI','Create_Recid',20,1);
INSERT INTO sbmFUNCTIONS VALUES ('SBI','BSI','Insert_Record',50,1);
INSERT INTO sbmFUNCTIONS VALUES ('SBI','BSI','Make_Record',40,1);
INSERT INTO sbmFUNCTIONS VALUES ('SBI','BSI','Move_to_Done',80,1);
INSERT INTO sbmFUNCTIONS VALUES ('SBI','BSI','Report_Number_Generation',30,1);
INSERT INTO sbmFUNCTIONS VALUES ('SBI','BSI','SBI_Mail_Notification_to_User',60,1);
INSERT INTO sbmFUNCTIONS VALUES ('SBI','BSI','SBI_Print_Success',70,1);
INSERT INTO sbmFUNCTIONS VALUES ('APM','BSIREF','APM_Mail_Final_Decision_to_User',50,3);
INSERT INTO sbmFUNCTIONS VALUES ('APM','BSIREF','APM_Mail_Final_Decision_to_User',60,2);
INSERT INTO sbmFUNCTIONS VALUES ('APM','BSIREF','APM_Print_Success',40,3);
INSERT INTO sbmFUNCTIONS VALUES ('APM','BSIREF','APM_Print_Success',50,2);
INSERT INTO sbmFUNCTIONS VALUES ('APM','BSIREF','CaseEDS',40,1);
INSERT INTO sbmFUNCTIONS VALUES ('APM','BSIREF','Get_Recid_Number',10,1);
INSERT INTO sbmFUNCTIONS VALUES ('APM','BSIREF','Get_Recid_Number',10,2);
INSERT INTO sbmFUNCTIONS VALUES ('APM','BSIREF','Get_Recid_Number',10,3);
INSERT INTO sbmFUNCTIONS VALUES ('APM','BSIREF','Insert_Modify_Record',30,2);
INSERT INTO sbmFUNCTIONS VALUES ('APM','BSIREF','Is_Referee',30,1);
INSERT INTO sbmFUNCTIONS VALUES ('APM','BSIREF','Move_From_Pending',20,2);
INSERT INTO sbmFUNCTIONS VALUES ('APM','BSIREF','Move_From_Pending',20,3);
INSERT INTO sbmFUNCTIONS VALUES ('APM','BSIREF','Move_to_Done',60,3);
INSERT INTO sbmFUNCTIONS VALUES ('APM','BSIREF','Move_to_Done',70,2);
INSERT INTO sbmFUNCTIONS VALUES ('APM','BSIREF','Test_Status',20,1);
INSERT INTO sbmFUNCTIONS VALUES ('APM','BSIREF','Update_Approval_DB',30,3);
INSERT INTO sbmFUNCTIONS VALUES ('APM','BSIREF','Update_Approval_DB',40,2);
INSERT INTO sbmFUNCTIONS VALUES ('APO','BSIREF','APO_Mail_Final_Decision_to_User',50,3);
INSERT INTO sbmFUNCTIONS VALUES ('APO','BSIREF','APO_Mail_Final_Decision_to_User',60,2);
INSERT INTO sbmFUNCTIONS VALUES ('APO','BSIREF','APO_Print_Success',40,3);
INSERT INTO sbmFUNCTIONS VALUES ('APO','BSIREF','APO_Print_Success',50,2);
INSERT INTO sbmFUNCTIONS VALUES ('APO','BSIREF','CaseEDS',40,1);
INSERT INTO sbmFUNCTIONS VALUES ('APO','BSIREF','Get_Recid_Number',10,1);
INSERT INTO sbmFUNCTIONS VALUES ('APO','BSIREF','Get_Recid_Number',10,2);
INSERT INTO sbmFUNCTIONS VALUES ('APO','BSIREF','Get_Recid_Number',10,3);
INSERT INTO sbmFUNCTIONS VALUES ('APO','BSIREF','Is_Referee',30,1);
INSERT INTO sbmFUNCTIONS VALUES ('APO','BSIREF','Make_Delete_Records',30,2);
INSERT INTO sbmFUNCTIONS VALUES ('APO','BSIREF','Move_From_Pending',20,2);
INSERT INTO sbmFUNCTIONS VALUES ('APO','BSIREF','Move_From_Pending',20,3);
INSERT INTO sbmFUNCTIONS VALUES ('APO','BSIREF','Move_to_Done',60,3);
INSERT INTO sbmFUNCTIONS VALUES ('APO','BSIREF','Move_to_Done',70,2);
INSERT INTO sbmFUNCTIONS VALUES ('APO','BSIREF','Test_Status',20,1);
INSERT INTO sbmFUNCTIONS VALUES ('APO','BSIREF','Update_Approval_DB',30,3);
INSERT INTO sbmFUNCTIONS VALUES ('APO','BSIREF','Update_Approval_DB',40,2);
INSERT INTO sbmFUNCTIONS VALUES ('APP','BSIREF','APP_Mail_Final_Decision_to_User',50,3);
INSERT INTO sbmFUNCTIONS VALUES ('APP','BSIREF','APP_Mail_Final_Decision_to_User',60,2);
INSERT INTO sbmFUNCTIONS VALUES ('APP','BSIREF','APP_Print_Success',40,3);
INSERT INTO sbmFUNCTIONS VALUES ('APP','BSIREF','APP_Print_Success',50,2);
INSERT INTO sbmFUNCTIONS VALUES ('APP','BSIREF','CaseEDS',40,1);
INSERT INTO sbmFUNCTIONS VALUES ('APP','BSIREF','Get_Recid_Number',10,1);
INSERT INTO sbmFUNCTIONS VALUES ('APP','BSIREF','Get_Recid_Number',10,2);
INSERT INTO sbmFUNCTIONS VALUES ('APP','BSIREF','Get_Recid_Number',10,3);
INSERT INTO sbmFUNCTIONS VALUES ('APP','BSIREF','Is_Referee',30,1);
INSERT INTO sbmFUNCTIONS VALUES ('APP','BSIREF','Make_Delete_Records',30,2);
INSERT INTO sbmFUNCTIONS VALUES ('APP','BSIREF','Move_From_Pending',20,2);
INSERT INTO sbmFUNCTIONS VALUES ('APP','BSIREF','Move_From_Pending',20,3);
INSERT INTO sbmFUNCTIONS VALUES ('APP','BSIREF','Move_to_Done',60,3);
INSERT INTO sbmFUNCTIONS VALUES ('APP','BSIREF','Move_to_Done',70,2);
INSERT INTO sbmFUNCTIONS VALUES ('APP','BSIREF','Test_Status',20,1);
INSERT INTO sbmFUNCTIONS VALUES ('APP','BSIREF','Update_Approval_DB',30,3);
INSERT INTO sbmFUNCTIONS VALUES ('APP','BSIREF','Update_Approval_DB',40,2);
INSERT INTO sbmFUNCTIONS VALUES ('APS','BSIREF','APS_Mail_Final_Decision_to_User',60,2);
INSERT INTO sbmFUNCTIONS VALUES ('APS','BSIREF','APS_Mail_Final_Decision_to_User',60,3);
INSERT INTO sbmFUNCTIONS VALUES ('APS','BSIREF','APS_Print_Success',50,2);
INSERT INTO sbmFUNCTIONS VALUES ('APS','BSIREF','APS_Print_Success',50,3);
INSERT INTO sbmFUNCTIONS VALUES ('APS','BSIREF','CaseEDS',50,1);
INSERT INTO sbmFUNCTIONS VALUES ('APS','BSIREF','Get_Recid',20,1);
INSERT INTO sbmFUNCTIONS VALUES ('APS','BSIREF','Get_Recid',20,2);
INSERT INTO sbmFUNCTIONS VALUES ('APS','BSIREF','Get_Recid',20,3);
INSERT INTO sbmFUNCTIONS VALUES ('APS','BSIREF','Get_Recid_Number',10,1);
INSERT INTO sbmFUNCTIONS VALUES ('APS','BSIREF','Get_Recid_Number',10,2);
INSERT INTO sbmFUNCTIONS VALUES ('APS','BSIREF','Get_Recid_Number',10,3);
INSERT INTO sbmFUNCTIONS VALUES ('APS','BSIREF','Is_Referee',40,1);
INSERT INTO sbmFUNCTIONS VALUES ('APS','BSIREF','Move_From_Pending',30,2);
INSERT INTO sbmFUNCTIONS VALUES ('APS','BSIREF','Move_From_Pending',30,3);
INSERT INTO sbmFUNCTIONS VALUES ('APS','BSIREF','Move_to_Done',70,2);
INSERT INTO sbmFUNCTIONS VALUES ('APS','BSIREF','Move_to_Done',70,3);
INSERT INTO sbmFUNCTIONS VALUES ('APS','BSIREF','Test_Status',30,1);
INSERT INTO sbmFUNCTIONS VALUES ('APS','BSIREF','Update_Approval_DB',40,2);
INSERT INTO sbmFUNCTIONS VALUES ('APS','BSIREF','Update_Approval_DB',40,3);
INSERT INTO sbmFUNCTIONS VALUES ('DBI','BSIREF','DBI_Mail_Approval_Request_to_Referee',40,1);
INSERT INTO sbmFUNCTIONS VALUES ('DBI','BSIREF','DBI_Mail_Notification_to_User',30,1);
INSERT INTO sbmFUNCTIONS VALUES ('DBI','BSIREF','DBI_Print_Success',50,1);
INSERT INTO sbmFUNCTIONS VALUES ('DBI','BSIREF','Get_Recid_Number',10,1);
INSERT INTO sbmFUNCTIONS VALUES ('DBI','BSIREF','Move_to_Pending',60,1);
INSERT INTO sbmFUNCTIONS VALUES ('DBI','BSIREF','Update_Approval_DB',20,1);
INSERT INTO sbmFUNCTIONS VALUES ('DPI','BSIREF','DPI_Mail_Approval_Request_to_Referee',40,1);
INSERT INTO sbmFUNCTIONS VALUES ('DPI','BSIREF','DPI_Mail_Notification_to_User',30,1);
INSERT INTO sbmFUNCTIONS VALUES ('DPI','BSIREF','DPI_Print_Success',50,1);
INSERT INTO sbmFUNCTIONS VALUES ('DPI','BSIREF','Get_Recid_Number',10,1);
INSERT INTO sbmFUNCTIONS VALUES ('DPI','BSIREF','Move_to_Pending',60,1);
INSERT INTO sbmFUNCTIONS VALUES ('DPI','BSIREF','Update_Approval_DB',20,1);
INSERT INTO sbmFUNCTIONS VALUES ('MBI','BSIREF','Create_Modify_Interface',20,1);
INSERT INTO sbmFUNCTIONS VALUES ('MBI','BSIREF','Get_Recid_Number',10,1);
INSERT INTO sbmFUNCTIONS VALUES ('MBI','BSIREF','Get_Recid_Number',10,2);
INSERT INTO sbmFUNCTIONS VALUES ('MBI','BSIREF','MBI_Mail_Approval_Request_to_Referee',50,2);
INSERT INTO sbmFUNCTIONS VALUES ('MBI','BSIREF','MBI_Mail_Notification_to_User',40,2);
INSERT INTO sbmFUNCTIONS VALUES ('MBI','BSIREF','MBI_Print_Success',60,2);
INSERT INTO sbmFUNCTIONS VALUES ('MBI','BSIREF','Make_Modify_Record',20,2);
INSERT INTO sbmFUNCTIONS VALUES ('MBI','BSIREF','Move_to_Pending',70,2);
INSERT INTO sbmFUNCTIONS VALUES ('MBI','BSIREF','Update_Approval_DB',30,2);
INSERT INTO sbmFUNCTIONS VALUES ('SBI','BSIREF','Check_URL',10,1);
INSERT INTO sbmFUNCTIONS VALUES ('SBI','BSIREF','Create_Recid',20,1);
INSERT INTO sbmFUNCTIONS VALUES ('SBI','BSIREF','Insert_Record',50,1);
INSERT INTO sbmFUNCTIONS VALUES ('SBI','BSIREF','Make_Record',40,1);
INSERT INTO sbmFUNCTIONS VALUES ('SBI','BSIREF','Move_to_Pending',100,1);
INSERT INTO sbmFUNCTIONS VALUES ('SBI','BSIREF','Report_Number_Generation',30,1);
INSERT INTO sbmFUNCTIONS VALUES ('SBI','BSIREF','SBI_Mail_Approval_Request_to_Referee',80,1);
INSERT INTO sbmFUNCTIONS VALUES ('SBI','BSIREF','SBI_Mail_Notification_to_User',70,1);
INSERT INTO sbmFUNCTIONS VALUES ('SBI','BSIREF','SBI_Print_Success',90,1);
INSERT INTO sbmFUNCTIONS VALUES ('SBI','BSIREF','Update_Approval_DB',60,1);

INSERT INTO sbmFUNDESC VALUES ('APM_Mail_Final_Decision_to_User','categformatAPP');
INSERT INTO sbmFUNDESC VALUES ('APM_Mail_Final_Decision_to_User','comments_file');
INSERT INTO sbmFUNDESC VALUES ('APM_Mail_Final_Decision_to_User','decision_file');
INSERT INTO sbmFUNDESC VALUES ('APM_Print_Success','decision_file');
INSERT INTO sbmFUNDESC VALUES ('APO_Mail_Final_Decision_to_User','categformatAPP');
INSERT INTO sbmFUNDESC VALUES ('APO_Mail_Final_Decision_to_User','comments_file');
INSERT INTO sbmFUNDESC VALUES ('APO_Mail_Final_Decision_to_User','decision_file');
INSERT INTO sbmFUNDESC VALUES ('APO_Print_Success','decision_file');
INSERT INTO sbmFUNDESC VALUES ('APP_Mail_Final_Decision_to_User','categformatAPP');
INSERT INTO sbmFUNDESC VALUES ('APP_Mail_Final_Decision_to_User','comments_file');
INSERT INTO sbmFUNDESC VALUES ('APP_Mail_Final_Decision_to_User','decision_file');
INSERT INTO sbmFUNDESC VALUES ('APP_Print_Success','decision_file');
INSERT INTO sbmFUNDESC VALUES ('APS_Mail_Final_Decision_to_User','categformatAPP');
INSERT INTO sbmFUNDESC VALUES ('APS_Mail_Final_Decision_to_User','comments_file');
INSERT INTO sbmFUNDESC VALUES ('APS_Mail_Final_Decision_to_User','decision_file');
INSERT INTO sbmFUNDESC VALUES ('APS_Print_Success','decision_file');
INSERT INTO sbmFUNDESC VALUES ('CaseEDS','casedefault');
INSERT INTO sbmFUNDESC VALUES ('CaseEDS','casesteps');
INSERT INTO sbmFUNDESC VALUES ('CaseEDS','casevalues');
INSERT INTO sbmFUNDESC VALUES ('CaseEDS','casevariable');
INSERT INTO sbmFUNDESC VALUES ('Check_URL','url');
INSERT INTO sbmFUNDESC VALUES ('Create_Modify_Interface','fieldnameMBI');
INSERT INTO sbmFUNDESC VALUES ('DBI_Mail_Approval_Request_to_Referee','addressesDAM');
INSERT INTO sbmFUNDESC VALUES ('DBI_Mail_Approval_Request_to_Referee','categformatDAM');
INSERT INTO sbmFUNDESC VALUES ('DBI_Mail_Approval_Request_to_Referee','directory');
INSERT INTO sbmFUNDESC VALUES ('DBI_Mail_Notification_to_User','emailFile');
INSERT INTO sbmFUNDESC VALUES ('DBI_Mail_Notification_to_User','status');
INSERT INTO sbmFUNDESC VALUES ('DBI_Print_Success','edsrn');
INSERT INTO sbmFUNDESC VALUES ('DBI_Print_Success','newrnin');
INSERT INTO sbmFUNDESC VALUES ('DBI_Print_Success','status');
INSERT INTO sbmFUNDESC VALUES ('DPI_Mail_Approval_Request_to_Referee','addressesDAM');
INSERT INTO sbmFUNDESC VALUES ('DPI_Mail_Approval_Request_to_Referee','categformatDAM');
INSERT INTO sbmFUNDESC VALUES ('DPI_Mail_Approval_Request_to_Referee','directory');
INSERT INTO sbmFUNDESC VALUES ('DPI_Mail_Notification_to_User','emailFile');
INSERT INTO sbmFUNDESC VALUES ('DPI_Mail_Notification_to_User','status');
INSERT INTO sbmFUNDESC VALUES ('DPI_Print_Success','edsrn');
INSERT INTO sbmFUNDESC VALUES ('DPI_Print_Success','status');
INSERT INTO sbmFUNDESC VALUES ('Get_Recid','record_search_pattern');
INSERT INTO sbmFUNDESC VALUES ('Get_Recid_Number','edsrn');
INSERT INTO sbmFUNDESC VALUES ('MBI_Mail_Approval_Request_to_Referee','addressesDAM');
INSERT INTO sbmFUNDESC VALUES ('MBI_Mail_Approval_Request_to_Referee','categformatDAM');
INSERT INTO sbmFUNDESC VALUES ('MBI_Mail_Approval_Request_to_Referee','directory');
INSERT INTO sbmFUNDESC VALUES ('MBI_Mail_Notification_to_User','emailFile');
INSERT INTO sbmFUNDESC VALUES ('MBI_Mail_Notification_to_User','status');
INSERT INTO sbmFUNDESC VALUES ('MBI_Print_Success','edsrn');
INSERT INTO sbmFUNDESC VALUES ('MBI_Print_Success','status');
INSERT INTO sbmFUNDESC VALUES ('Make_Modify_Record','modifyTemplate');
INSERT INTO sbmFUNDESC VALUES ('Make_Modify_Record','sourceTemplate');
INSERT INTO sbmFUNDESC VALUES ('Make_Record','createTemplate');
INSERT INTO sbmFUNDESC VALUES ('Make_Record','sourceTemplate');
INSERT INTO sbmFUNDESC VALUES ('Report_Number_Generation','autorngen');
INSERT INTO sbmFUNDESC VALUES ('Report_Number_Generation','counterpath');
INSERT INTO sbmFUNDESC VALUES ('Report_Number_Generation','edsrn');
INSERT INTO sbmFUNDESC VALUES ('Report_Number_Generation','nblength');
INSERT INTO sbmFUNDESC VALUES ('Report_Number_Generation','rnformat');
INSERT INTO sbmFUNDESC VALUES ('Report_Number_Generation','rnin');
INSERT INTO sbmFUNDESC VALUES ('Report_Number_Generation','yeargen');
INSERT INTO sbmFUNDESC VALUES ('SBI_Mail_Approval_Request_to_Referee','addressesDAM');
INSERT INTO sbmFUNDESC VALUES ('SBI_Mail_Approval_Request_to_Referee','categformatDAM');
INSERT INTO sbmFUNDESC VALUES ('SBI_Mail_Approval_Request_to_Referee','directory');
INSERT INTO sbmFUNDESC VALUES ('SBI_Mail_Approval_Request_to_Referee','titleFile');
INSERT INTO sbmFUNDESC VALUES ('SBI_Mail_Notification_to_User','edsrn');
INSERT INTO sbmFUNDESC VALUES ('SBI_Mail_Notification_to_User','emailFile');
INSERT INTO sbmFUNDESC VALUES ('SBI_Mail_Notification_to_User','status');
INSERT INTO sbmFUNDESC VALUES ('SBI_Mail_Notification_to_User','titleFile');
INSERT INTO sbmFUNDESC VALUES ('SBI_Print_Success','edsrn');
INSERT INTO sbmFUNDESC VALUES ('SBI_Print_Success','status');
INSERT INTO sbmFUNDESC VALUES ('Update_Approval_DB','categformatDAM');
INSERT INTO sbmFUNDESC VALUES ('Update_Approval_DB','decision_file');

INSERT INTO sbmIMPLEMENT VALUES ('BSI','DBI','Y','DBIBSI',1,'2012-07-26','2012-10-18',3,'','',0,0,'');
INSERT INTO sbmIMPLEMENT VALUES ('BSI','DPI','Y','DPIBSI',1,'2012-08-30','2012-10-18',4,'','',0,0,'');
INSERT INTO sbmIMPLEMENT VALUES ('BSI','MBI','Y','MBIBSI',1,'2012-07-25','2012-10-18',2,'','',0,0,'');
INSERT INTO sbmIMPLEMENT VALUES ('BSI','SBI','Y','SBIBSI',1,'2012-05-23','2012-10-18',1,'','',0,0,'');
INSERT INTO sbmIMPLEMENT VALUES ('BSIREF','APM','Y','APMBSIREF',1,'2012-10-09','2012-10-18',2,'','',0,0,'');
INSERT INTO sbmIMPLEMENT VALUES ('BSIREF','APO','Y','APOBSIREF',1,'2012-10-08','2012-10-17',4,'','',0,0,'');
INSERT INTO sbmIMPLEMENT VALUES ('BSIREF','APP','Y','APPBSIREF',1,'2012-09-03','2012-10-16',3,'','',0,0,'');
INSERT INTO sbmIMPLEMENT VALUES ('BSIREF','APS','Y','APSBSIREF',1,'2012-10-09','2012-10-18',1,'','',0,0,'');
INSERT INTO sbmIMPLEMENT VALUES ('BSIREF','DBI','Y','DBIBSIREF',1,'2012-08-30','2012-10-16',3,'','',0,0,'');
INSERT INTO sbmIMPLEMENT VALUES ('BSIREF','DPI','Y','DPIBSIREF',1,'2012-08-30','2012-10-16',4,'','',0,0,'');
INSERT INTO sbmIMPLEMENT VALUES ('BSIREF','MBI','Y','MBIBSIREF',1,'2012-08-30','2012-10-19',2,'','',0,0,'');
INSERT INTO sbmIMPLEMENT VALUES ('BSIREF','SBI','Y','SBIBSIREF',1,'2012-08-30','2012-10-18',1,'','',0,0,'');

INSERT INTO sbmPARAMETERS VALUES ('BSI','authorfile','');
INSERT INTO sbmPARAMETERS VALUES ('BSI','autorngen','Y');
INSERT INTO sbmPARAMETERS VALUES ('BSI','counterpath','lastid_BLOG_<PA>yy</PA>	');
INSERT INTO sbmPARAMETERS VALUES ('BSI','createTemplate','BSIcreate.tpl');
INSERT INTO sbmPARAMETERS VALUES ('BSI','edsrn','BSI_RN');
INSERT INTO sbmPARAMETERS VALUES ('BSI','emailFile','SuE');
INSERT INTO sbmPARAMETERS VALUES ('BSI','fieldnameMBI','MBI_SELECT');
INSERT INTO sbmPARAMETERS VALUES ('BSI','modifyTemplate','MSImodify.tpl');
INSERT INTO sbmPARAMETERS VALUES ('BSI','rnformat','BLOG-<PA>yy</PA>');
INSERT INTO sbmPARAMETERS VALUES ('BSI','sourceTemplate','BSI.tpl');
INSERT INTO sbmPARAMETERS VALUES ('BSI','status','ADDED');
INSERT INTO sbmPARAMETERS VALUES ('BSI','titleFile','BSI_TITLE');
INSERT INTO sbmPARAMETERS VALUES ('BSI','url','BSI_URL');
INSERT INTO sbmPARAMETERS VALUES ('BSI','yeargen','AUTO');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','authorfile','');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','autorngen','Y');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','casedefault','3');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','casesteps','2,3');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','casevalues','approve, reject');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','casevariable','BSI_DEC');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','comments_file','BSI_COMENT');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','counterpath','lastid_BLOG_<PA>yy</PA>	');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','createTemplate','BSIcreate.tpl');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','decision_file','BSI_DEC');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','directory','BSIREF');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','dummyrec_create_tpl','BSIcreate.tpl');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','dummyrec_source_tpl','BSI.tpl');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','edsrn','BSI_RN');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','emailFile','SuE');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','fieldnameMBI','MBI_SELECT');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','modifyTemplate','MSImodify.tpl');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','newrnin','BSI_URL');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','rnformat','BLOG-<PA>yy</PA>');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','sourceTemplate','BSI.tpl');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','status','APPROVAL');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','titleFile','BSI_TITLE');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','url','BSI_URL');
INSERT INTO sbmPARAMETERS VALUES ('BSIREF','yeargen','AUTO');

-- end of file

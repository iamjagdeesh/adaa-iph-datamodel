/*Extra countries*/
INSERT INTO countries (id,short_name,name_en,name_ar,icon,currency_id,alpha_3,created_at,updated_at,is_calculated,is_wri)
VALUES
	('AS','AS','American Samoa','','',1,'','2017-04-13','2017-04-13',0,1),
	('CW','CW','Curacao','','',1,'','2017-04-13','2017-04-13',0,1),
	('FO','FO','Faroe Islands','','',1,'','2017-04-13','2017-04-13',0,1),
	('GI','GI','Gibraltar','','',1,'','2017-04-13','2017-04-13',0,1),
	('GL','GL','Greenland','','',1,'','2017-04-13','2017-04-13',0,1),
	('GU','GU','Guam','','',1,'','2017-04-13','2017-04-13',0,1),
	('IL','IL','Israel','','',1,'','2017-04-13','2017-04-13',0,1),
	('IM','IM','Isle of Man','','',1,'','2017-04-13','2017-04-13',0,1),
	('JG','JG','Channel Islands','','',1,'','2017-04-13','2017-04-13',0,1),
	('KY','KY','Cayman Islands','','',1,'','2017-04-13','2017-04-13',0,1),
	('MF','MF','St. Martin (French part)','','',1,'','2017-04-13','2017-04-13',0,1),
	('MP','MP','Northern Mariana Islands','','',1,'','2017-04-13','2017-04-13',0,1),
	('NC','NC','New Caledonia','','',1,'','2017-04-13','2017-04-13',0,1),
	('NR','NR','Nauru','','',1,'','2017-04-13','2017-04-13',0,1),
	('PF','PF','French Polynesia','','',1,'','2017-04-13','2017-04-13',0,1),
	('SK','SK','Slovak Republic','','',1,'','2017-04-13','2017-04-13',0,1),
	('TC','TC','Turks and Caicos Islands','','',1,'','2017-04-13','2017-04-13',0,1),
	('TV','TV','Tuvalu','','',1,'','2017-04-13','2017-04-13',0,1),
	('VG','VG','British Virgin Islands','','',1,'','2017-04-13','2017-04-13',0,1),
	('VI','VI','Virgin Islands (U.S.)','','',1,'','2017-04-13','2017-04-13',0,1);
	
/*Remove TU as TV is there for Tuvalu*/
DELETE FROM countries WHERE id = 'TU';
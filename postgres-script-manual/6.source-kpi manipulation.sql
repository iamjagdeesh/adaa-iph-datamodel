/*
Insert additional source data 
*/
Insert into sources (name_en, name_ar, created_at, updated_at) Values ('Happy Planet Index','','2017-03-31 12:23:00','2017-03-31 12:23:00');
Insert into sources (name_en, name_ar, created_at, updated_at) Values ('OECD - Calculated','','2017-03-31 12:23:00','2017-03-31 12:23:00');
Insert into sources (name_en, name_ar, created_at, updated_at) Values ('UN Data','','2017-03-31 12:23:00','2017-03-31 12:23:00');
Insert into sources (name_en, name_ar, created_at, updated_at) Values ('World Bank - Calculated','','2017-03-31 12:23:00','2017-03-31 12:23:00');
Insert into sources (name_en, name_ar, created_at, updated_at) Values ('World by Map','','2017-03-31 12:23:00','2017-03-31 12:23:00');
Insert into sources (name_en, name_ar, created_at, updated_at) Values ('World Justice Project','','2017-03-31 12:23:00','2017-03-31 12:23:00');

alter table sources alter id set default nextval('sou_seq');
Select setval('sou_seq', 58 );

/*
Update column source_id for kpis table
*/
update kpis set source_id = (select id from sources where name_en = 'UN Data') where id = 7;
update kpis set source_id = (select id from sources where name_en = 'World Bank - Calculated') where id = 15;
update kpis set source_id = (select id from sources where name_en = 'OECD - Calculated') where id = 118;
update kpis set source_id = (select id from sources where name_en = 'OECD') where id = 133;
update kpis set source_id = (select id from sources where name_en = 'OECD') where id = 134;
update kpis set source_id = (select id from sources where name_en = 'World Bank - Calculated') where id = 138;
update kpis set source_id = (select id from sources where name_en = 'World by Map') where id = 169;
update kpis set source_id = (select id from sources where name_en = 'World Health Organization') where id = 176;
update kpis set source_id = (select id from sources where name_en = 'World Bank - Calculated') where id = 209;
update kpis set source_id = (select id from sources where name_en = 'World Bank - Calculated') where id = 233;
update kpis set source_id = (select id from sources where name_en = 'World Bank - Calculated') where id = 238;
update kpis set source_id = (select id from sources where name_en = 'United Nations Office on Drugs and Crime') where id = 242;
update kpis set source_id = (select id from sources where name_en = 'United Nations Office on Drugs and Crime') where id = 243;
update kpis set source_id = (select id from sources where name_en = 'United Nations Office on Drugs and Crime') where id = 247;
update kpis set source_id = (select id from sources where name_en = 'United Nations Office on Drugs and Crime') where id = 252;
update kpis set source_id = (select id from sources where name_en = 'Happy Planet Index') where id = 271;
update kpis set source_id = (select id from sources where name_en = 'World Bank - Calculated') where id = 314;
update kpis set source_id = (select id from sources where name_en = 'World Bank - Calculated') where id = 315;
update kpis set source_id = (select id from sources where name_en = 'Social Progress Imperative') where id = 421;
update kpis set source_id = (select id from sources where name_en = 'World Justice Project') where id = 423;
update kpis set source_id = (select id from sources where name_en = 'World Justice Project') where id = 424;
update kpis set source_id = (select id from sources where name_en = 'World Justice Project') where id = 425;
update kpis set source_id = (select id from sources where name_en = 'World Justice Project') where id = 426;
update kpis set source_id = (select id from sources where name_en = 'World Justice Project') where id = 431;
update kpis set source_id = (select id from sources where name_en = 'World Justice Project') where id = 432;
update kpis set source_id = (select id from sources where name_en = 'World Justice Project') where id = 433;
update kpis set source_id = (select id from sources where name_en = 'World Justice Project') where id = 434;
update kpis set source_id = (select id from sources where name_en = 'World Justice Project') where id = 435;
update kpis set source_id = (select id from sources where name_en = 'World Justice Project') where id = 436;
update kpis set source_id = (select id from sources where name_en = 'World Justice Project') where id = 437;
update kpis set source_id = (select id from sources where name_en = 'Human Capital Report') where id = 750;

/*
Add a column named data_update_frequency into kpis
*/
alter table kpis add column data_update_frequency varchar(255) default null;

/*
Update column data_update_frequency for kpis table
*/
update kpis set data_update_frequency = 'Annual' where id = 1;
update kpis set data_update_frequency = 'Annual' where id = 5;
update kpis set data_update_frequency = 'Annual' where id = 7;
update kpis set data_update_frequency = 'Annual' where id = 8;
update kpis set data_update_frequency = 'Annual' where id = 9;
update kpis set data_update_frequency = 'Annual' where id = 10;
update kpis set data_update_frequency = 'Annual' where id = 12;
update kpis set data_update_frequency = 'Annual' where id = 13;
update kpis set data_update_frequency = 'Annual' where id = 15;
update kpis set data_update_frequency = 'Annual' where id = 16;
update kpis set data_update_frequency = 'Annual' where id = 18;
update kpis set data_update_frequency = 'Annual' where id = 19;
update kpis set data_update_frequency = 'Annual' where id = 20;
update kpis set data_update_frequency = 'Annual' where id = 21;
update kpis set data_update_frequency = 'Annual' where id = 23;
update kpis set data_update_frequency = 'Annual' where id = 24;
update kpis set data_update_frequency = 'Annual' where id = 25;
update kpis set data_update_frequency = 'Annual' where id = 26;
update kpis set data_update_frequency = 'Annual' where id = 27;
update kpis set data_update_frequency = 'Annual' where id = 28;
update kpis set data_update_frequency = 'Annual' where id = 29;
update kpis set data_update_frequency = 'Annual' where id = 30;
update kpis set data_update_frequency = 'Annual' where id = 31;
update kpis set data_update_frequency = 'Annual' where id = 34;
update kpis set data_update_frequency = 'Annual' where id = 35;
update kpis set data_update_frequency = 'Annual' where id = 36;
update kpis set data_update_frequency = 'Annual' where id = 37;
update kpis set data_update_frequency = 'Annual' where id = 39;
update kpis set data_update_frequency = 'Annual' where id = 40;
update kpis set data_update_frequency = 'Annual' where id = 41;
update kpis set data_update_frequency = 'Annual' where id = 42;
update kpis set data_update_frequency = 'Annual' where id = 43;
update kpis set data_update_frequency = 'Annual' where id = 44;
update kpis set data_update_frequency = 'Annual' where id = 46;
update kpis set data_update_frequency = 'Annual' where id = 47;
update kpis set data_update_frequency = 'Annual' where id = 49;
update kpis set data_update_frequency = 'Annual' where id = 50;
update kpis set data_update_frequency = 'Annual' where id = 51;
update kpis set data_update_frequency = 'Annual' where id = 53;
update kpis set data_update_frequency = 'Annual' where id = 54;
update kpis set data_update_frequency = 'Annual' where id = 55;
update kpis set data_update_frequency = 'Annual' where id = 56;
update kpis set data_update_frequency = 'Annual' where id = 58;
update kpis set data_update_frequency = 'Annual' where id = 61;
update kpis set data_update_frequency = 'Annual' where id = 62;
update kpis set data_update_frequency = 'Annual' where id = 63;
update kpis set data_update_frequency = 'Annual' where id = 66;
update kpis set data_update_frequency = 'Annual' where id = 69;
update kpis set data_update_frequency = 'Annual' where id = 70;
update kpis set data_update_frequency = 'Annual' where id = 71;
update kpis set data_update_frequency = 'Annual' where id = 73;
update kpis set data_update_frequency = 'Annual' where id = 74;
update kpis set data_update_frequency = 'Annual' where id = 75;
update kpis set data_update_frequency = 'Annual' where id = 76;
update kpis set data_update_frequency = 'Annual' where id = 78;
update kpis set data_update_frequency = 'Annual' where id = 79;
update kpis set data_update_frequency = 'Annual' where id = 80;
update kpis set data_update_frequency = 'Annual' where id = 81;
update kpis set data_update_frequency = 'Annual' where id = 82;
update kpis set data_update_frequency = 'Annual' where id = 83;
update kpis set data_update_frequency = 'Annual' where id = 84;
update kpis set data_update_frequency = 'Annual' where id = 85;
update kpis set data_update_frequency = 'Annual' where id = 86;
update kpis set data_update_frequency = 'Annual' where id = 87;
update kpis set data_update_frequency = 'Annual' where id = 88;
update kpis set data_update_frequency = 'Annual' where id = 89;
update kpis set data_update_frequency = 'Annual' where id = 90;
update kpis set data_update_frequency = 'Annual' where id = 91;
update kpis set data_update_frequency = 'Annual' where id = 92;
update kpis set data_update_frequency = 'Annual' where id = 94;
update kpis set data_update_frequency = 'Annual' where id = 95;
update kpis set data_update_frequency = 'Annual' where id = 96;
update kpis set data_update_frequency = 'Annual' where id = 97;
update kpis set data_update_frequency = 'Annual' where id = 98;
update kpis set data_update_frequency = 'Annual' where id = 99;
update kpis set data_update_frequency = 'Annual' where id = 100;
update kpis set data_update_frequency = 'Annual' where id = 101;
update kpis set data_update_frequency = 'Annual' where id = 102;
update kpis set data_update_frequency = 'Annual' where id = 103;
update kpis set data_update_frequency = 'Annual' where id = 104;
update kpis set data_update_frequency = 'Annual' where id = 106;
update kpis set data_update_frequency = 'Annual' where id = 107;
update kpis set data_update_frequency = 'Monthly' where id = 109;
update kpis set data_update_frequency = 'Annual' where id = 110;
update kpis set data_update_frequency = 'Annual' where id = 111;
update kpis set data_update_frequency = 'Annual' where id = 112;
update kpis set data_update_frequency = 'Annual' where id = 113;
update kpis set data_update_frequency = 'Annual' where id = 114;
update kpis set data_update_frequency = 'Annual' where id = 115;
update kpis set data_update_frequency = 'Annual' where id = 116;
update kpis set data_update_frequency = 'Annual' where id = 118;
update kpis set data_update_frequency = 'Monthly' where id = 123;
update kpis set data_update_frequency = 'Annual' where id = 124;
update kpis set data_update_frequency = 'Annual' where id = 125;
update kpis set data_update_frequency = 'Annual' where id = 126;
update kpis set data_update_frequency = 'Annual' where id = 127;
update kpis set data_update_frequency = 'Annual' where id = 128;
update kpis set data_update_frequency = 'Annual' where id = 129;
update kpis set data_update_frequency = 'Annual' where id = 130;
update kpis set data_update_frequency = 'Annual' where id = 131;
update kpis set data_update_frequency = 'Annual' where id = 132;
update kpis set data_update_frequency = 'Annual' where id = 133;
update kpis set data_update_frequency = 'Annual' where id = 134;
update kpis set data_update_frequency = 'Annual' where id = 135;
update kpis set data_update_frequency = 'Annual' where id = 136;
update kpis set data_update_frequency = 'Annual' where id = 137;
update kpis set data_update_frequency = 'Annual' where id = 138;
update kpis set data_update_frequency = 'Annual' where id = 139;
update kpis set data_update_frequency = 'Annual' where id = 140;
update kpis set data_update_frequency = 'Annual' where id = 141;
update kpis set data_update_frequency = 'Annual' where id = 142;
update kpis set data_update_frequency = 'Annual' where id = 143;
update kpis set data_update_frequency = 'Annual' where id = 144;
update kpis set data_update_frequency = 'Annual' where id = 146;
update kpis set data_update_frequency = 'Annual' where id = 147;
update kpis set data_update_frequency = 'Annual' where id = 148;
update kpis set data_update_frequency = 'Annual' where id = 149;
update kpis set data_update_frequency = 'Annual' where id = 150;
update kpis set data_update_frequency = 'Annual' where id = 151;
update kpis set data_update_frequency = 'Annual' where id = 152;
update kpis set data_update_frequency = 'Annual' where id = 153;
update kpis set data_update_frequency = 'Annual' where id = 154;
update kpis set data_update_frequency = 'Annual' where id = 155;
update kpis set data_update_frequency = 'Annual' where id = 156;
update kpis set data_update_frequency = 'Annual' where id = 157;
update kpis set data_update_frequency = 'Annual' where id = 158;
update kpis set data_update_frequency = 'Annual' where id = 159;
update kpis set data_update_frequency = 'Annual' where id = 160;
update kpis set data_update_frequency = 'Annual' where id = 161;
update kpis set data_update_frequency = 'Annual' where id = 163;
update kpis set data_update_frequency = 'Annual' where id = 164;
update kpis set data_update_frequency = 'Annual' where id = 165;
update kpis set data_update_frequency = 'Annual' where id = 166;
update kpis set data_update_frequency = 'Annual' where id = 167;
update kpis set data_update_frequency = 'Annual' where id = 168;
update kpis set data_update_frequency = 'Annual' where id = 169;
update kpis set data_update_frequency = 'Annual' where id = 171;
update kpis set data_update_frequency = 'Annual' where id = 172;
update kpis set data_update_frequency = 'Annual' where id = 173;
update kpis set data_update_frequency = 'Annual' where id = 174;
update kpis set data_update_frequency = 'Annual' where id = 175;
update kpis set data_update_frequency = 'Annual' where id = 176;
update kpis set data_update_frequency = 'Annual' where id = 177;
update kpis set data_update_frequency = 'Annual' where id = 179;
update kpis set data_update_frequency = 'Annual' where id = 182;
update kpis set data_update_frequency = 'Annual' where id = 183;
update kpis set data_update_frequency = 'Annual' where id = 184;
update kpis set data_update_frequency = 'Annual' where id = 185;
update kpis set data_update_frequency = 'Annual' where id = 186;
update kpis set data_update_frequency = 'Annual' where id = 187;
update kpis set data_update_frequency = 'Annual' where id = 188;
update kpis set data_update_frequency = 'Annual' where id = 191;
update kpis set data_update_frequency = 'Annual' where id = 192;
update kpis set data_update_frequency = 'Annual' where id = 193;
update kpis set data_update_frequency = 'Annual' where id = 194;
update kpis set data_update_frequency = 'Annual' where id = 195;
update kpis set data_update_frequency = 'Annual' where id = 196;
update kpis set data_update_frequency = 'Annual' where id = 197;
update kpis set data_update_frequency = 'Annual' where id = 199;
update kpis set data_update_frequency = 'Annual' where id = 200;
update kpis set data_update_frequency = 'Annual' where id = 201;
update kpis set data_update_frequency = 'Annual' where id = 203;
update kpis set data_update_frequency = 'Annual' where id = 204;
update kpis set data_update_frequency = 'Annual' where id = 205;
update kpis set data_update_frequency = 'Annual' where id = 206;
update kpis set data_update_frequency = 'Annual' where id = 207;
update kpis set data_update_frequency = 'Annual' where id = 208;
update kpis set data_update_frequency = 'Annual' where id = 209;
update kpis set data_update_frequency = 'Annual' where id = 212;
update kpis set data_update_frequency = 'Annual' where id = 214;
update kpis set data_update_frequency = 'Annual' where id = 215;
update kpis set data_update_frequency = 'Annual' where id = 216;
update kpis set data_update_frequency = 'Annual' where id = 217;
update kpis set data_update_frequency = 'Annual' where id = 218;
update kpis set data_update_frequency = 'Annual' where id = 219;
update kpis set data_update_frequency = 'Annual' where id = 220;
update kpis set data_update_frequency = 'Annual' where id = 221;
update kpis set data_update_frequency = 'Annual' where id = 222;
update kpis set data_update_frequency = 'Annual' where id = 223;
update kpis set data_update_frequency = 'Annual' where id = 224;
update kpis set data_update_frequency = 'Annual' where id = 225;
update kpis set data_update_frequency = 'Annual' where id = 227;
update kpis set data_update_frequency = 'Annual' where id = 228;
update kpis set data_update_frequency = 'Annual' where id = 229;
update kpis set data_update_frequency = 'Annual' where id = 230;
update kpis set data_update_frequency = 'Annual' where id = 231;
update kpis set data_update_frequency = 'Annual' where id = 233;
update kpis set data_update_frequency = 'Annual' where id = 234;
update kpis set data_update_frequency = 'Annual' where id = 235;
update kpis set data_update_frequency = 'Annual' where id = 236;
update kpis set data_update_frequency = 'Annual' where id = 237;
update kpis set data_update_frequency = 'Annual' where id = 238;
update kpis set data_update_frequency = 'Annual' where id = 239;
update kpis set data_update_frequency = 'Annual' where id = 240;
update kpis set data_update_frequency = 'Annual' where id = 242;
update kpis set data_update_frequency = 'Annual' where id = 243;
update kpis set data_update_frequency = 'Annual' where id = 247;
update kpis set data_update_frequency = 'Annual' where id = 250;
update kpis set data_update_frequency = 'Annual' where id = 251;
update kpis set data_update_frequency = 'Annual' where id = 252;
update kpis set data_update_frequency = 'Annual' where id = 256;
update kpis set data_update_frequency = 'Annual' where id = 257;
update kpis set data_update_frequency = 'Annual' where id = 260;
update kpis set data_update_frequency = 'Annual' where id = 261;
update kpis set data_update_frequency = 'Annual' where id = 265;
update kpis set data_update_frequency = 'Annual' where id = 266;
update kpis set data_update_frequency = 'Annual' where id = 267;
update kpis set data_update_frequency = 'Annual' where id = 268;
update kpis set data_update_frequency = 'Annual' where id = 269;
update kpis set data_update_frequency = 'Annual' where id = 271;
update kpis set data_update_frequency = 'Annual' where id = 272;
update kpis set data_update_frequency = 'Annual' where id = 275;
update kpis set data_update_frequency = 'Annual' where id = 276;
update kpis set data_update_frequency = 'Annual' where id = 278;
update kpis set data_update_frequency = 'Annual' where id = 279;
update kpis set data_update_frequency = 'Annual' where id = 280;
update kpis set data_update_frequency = 'Annual' where id = 281;
update kpis set data_update_frequency = 'Annual' where id = 282;
update kpis set data_update_frequency = 'Annual' where id = 283;
update kpis set data_update_frequency = 'Annual' where id = 284;
update kpis set data_update_frequency = 'Annual' where id = 285;
update kpis set data_update_frequency = 'Annual' where id = 286;
update kpis set data_update_frequency = 'Annual' where id = 287;
update kpis set data_update_frequency = 'Annual' where id = 288;
update kpis set data_update_frequency = 'Annual' where id = 289;
update kpis set data_update_frequency = 'Annual' where id = 290;
update kpis set data_update_frequency = 'Annual' where id = 291;
update kpis set data_update_frequency = 'Annual' where id = 292;
update kpis set data_update_frequency = 'Annual' where id = 293;
update kpis set data_update_frequency = 'Annual' where id = 297;
update kpis set data_update_frequency = 'Annual' where id = 298;
update kpis set data_update_frequency = 'Annual' where id = 299;
update kpis set data_update_frequency = 'Annual' where id = 300;
update kpis set data_update_frequency = 'Annual' where id = 301;
update kpis set data_update_frequency = 'Annual' where id = 302;
update kpis set data_update_frequency = 'Annual' where id = 303;
update kpis set data_update_frequency = 'Annual' where id = 304;
update kpis set data_update_frequency = 'Annual' where id = 305;
update kpis set data_update_frequency = 'Annual' where id = 306;
update kpis set data_update_frequency = 'Annual' where id = 314;
update kpis set data_update_frequency = 'Annual' where id = 315;
update kpis set data_update_frequency = 'Annual' where id = 318;
update kpis set data_update_frequency = 'Annual' where id = 421;
update kpis set data_update_frequency = 'Annual' where id = 422;
update kpis set data_update_frequency = 'Annual' where id = 423;
update kpis set data_update_frequency = 'Annual' where id = 424;
update kpis set data_update_frequency = 'Annual' where id = 425;
update kpis set data_update_frequency = 'Annual' where id = 426;
update kpis set data_update_frequency = 'Annual' where id = 427;
update kpis set data_update_frequency = 'Annual' where id = 428;
update kpis set data_update_frequency = 'Annual' where id = 429;
update kpis set data_update_frequency = 'Annual' where id = 430;
update kpis set data_update_frequency = 'Annual' where id = 431;
update kpis set data_update_frequency = 'Annual' where id = 432;
update kpis set data_update_frequency = 'Annual' where id = 433;
update kpis set data_update_frequency = 'Annual' where id = 434;
update kpis set data_update_frequency = 'Annual' where id = 435;
update kpis set data_update_frequency = 'Annual' where id = 436;
update kpis set data_update_frequency = 'Annual' where id = 437;
update kpis set data_update_frequency = 'Annual' where id = 750;
update kpis set data_update_frequency = 'Annual' where id = 754;
update kpis set data_update_frequency = 'Annual' where id = 755;
update kpis set data_update_frequency = 'Annual' where id = 756;
update kpis set data_update_frequency = 'Annual' where id = 757;
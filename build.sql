create table staff(
e# number(3,0) primary key,
ename varchar(99),
title varchar(99) check(title in ('doctor','nurse'));

create table specialty(
scode number(4,0) primary key,
sname varchar(99));

create table expertise(
e# number(3,0),
scode number(4,0),
primary key (e#,scode),
foreign key (e#) references staff(e#),
foreign key (scode) references specialty(scode));

create table diagnoses(
scode number(4,0),
dcode number(4,0),
cost number(20,2),
primary key (scode,dcode),
foreign key (scode) references specialty(scode));

create table patient(
SSN number(9,0) primary key,
pname varchar(99),
DOB number(6,0),
address varchar(99));

create table visit(
SSN number(9,0),
e# number(3,0),
vdate number(6,0),
ppay number(20,2),
ipay number(20,2),
primary key (SSN,vdate),
foreign key (SSN) references patient(SSN),
foreign key (e#) references staff(e#));

create table slot(
sdate number(6,0),
btime number(4,0) check(btime>=0900 and btime<=1540),
duration number(2,0) check(duration in ('20','40','60')),
primary key (sdate,btime,duration));

create table schedule(
SSN number(9,0),
e# number(3,0),
sdate number(6,0),
btime number(4,0),
duration number(2),
primary key (SSN,sdate),
foreign key (SSN) references patient(SSN),
foreign key (e#) references staff(e#),
foreign key (sdate,btime,duration) references slot(sdate,btime,duration));

create table outcome(
SSN number(9,0),
vdate number(6,0),
scode number(4,0),
dcode number(4,0),
primary key (SSN,vdate,scode,dcode),
foreign key (vdate,SSN) references visit(vdate,SSN),
foreign key (scode,dcode) references diagnoses(scode,dcode));













insert into visit (SSN,e#,vdate,ppay,ipay) values (123456789,001,140805,20,30);
insert into visit (SSN,e#,vdate,ppay,ipay) values (223456789,002,140805,20,30);
insert into visit (SSN,e#,vdate,ppay,ipay) values (323456789,003,140805,20,30);
insert into visit (SSN,e#,vdate,ppay,ipay) values (423456789,004,140805,20,30);
insert into visit (SSN,e#,vdate,ppay,ipay) values (523456789,005,140805,20,30);
insert into visit (SSN,e#,vdate,ppay,ipay) values (623456789,006,140805,20,30);
insert into visit (SSN,e#,vdate,ppay,ipay) values (723456789,007,140805,20,30);
insert into visit (SSN,e#,vdate,ppay,ipay) values (823456789,008,140805,20,30);
insert into visit (SSN,e#,vdate,ppay,ipay) values (923456789,009,140815,20,30);
insert into visit (SSN,e#,vdate,ppay,ipay) values (133456789,010,140815,20,30);
insert into visit (SSN,e#,vdate,ppay,ipay) values (143456789,011,140815,20,30);
insert into visit (SSN,e#,vdate,ppay,ipay) values (143456789,012,140825,20,30);
insert into visit (SSN,e#,vdate,ppay,ipay) values (163456789,013,140825,20,130);
insert into visit (SSN,e#,vdate,ppay,ipay) values (173456789,014,140215,20,130);
insert into visit (SSN,e#,vdate,ppay,ipay) values (183456789,015,140225,20,30);
insert into visit (SSN,e#,vdate,ppay,ipay) values (193456789,016,1410325,20,130);
insert into visit (SSN,e#,vdate,ppay,ipay) values (124456789,017,140425,20,130);
insert into visit (SSN,e#,vdate,ppay,ipay) values (125456789,018,140525,20,30);
insert into visit (SSN,e#,vdate,ppay,ipay) values (126456789,019,140615,20,130);
insert into visit (SSN,e#,vdate,ppay,ipay) values (127456789,020,140615,20,130);
insert into visit (SSN,e#,vdate,ppay,ipay) values (128456789,021,140625,20,30);
insert into visit (SSN,e#,vdate,ppay,ipay) values (129456789,022,140715,20,30);
insert into visit (SSN,e#,vdate,ppay,ipay) values (123556789,023,140725,20,130);
insert into visit (SSN,e#,vdate,ppay,ipay) values (123656789,024,140715,20,130);
insert into visit (SSN,e#,vdate,ppay,ipay) values (123756789,025,140725,20,130);
insert into visit (SSN,e#,vdate,ppay,ipay) values (123856789,026,140815,20,130);
insert into visit (SSN,e#,vdate,ppay,ipay) values (123956789,027,140825,20,30);
insert into visit (SSN,e#,vdate,ppay,ipay) values (123466789,028,140815,20,30);
insert into visit (SSN,e#,vdate,ppay,ipay) values (123476789,028,140812,20,130);
insert into visit (SSN,e#,vdate,ppay,ipay) values (123486789,029,140813,20,130);
insert into visit (SSN,e#,vdate,ppay,ipay) values (123486789,030,140814,20,30);
insert into visit (SSN,e#,vdate,ppay,ipay) values (123476789,028,140815,20,130);
insert into visit (SSN,e#,vdate,ppay,ipay) values (123466789,027,140816,20,130);
insert into visit (SSN,e#,vdate,ppay,ipay) values (123456789,026,140817,20,30);

insert into staff (e#,ename,title) values (001,'John','doctor');
insert into staff (e#,ename,title) values (002,'Lily','nurse');
insert into staff (e#,ename,title) values (003,'Ting','doctor');
insert into staff (e#,ename,title) values (004,'Kueaf','nurse');
insert into staff (e#,ename,title) values (005,'Tony','doctor');
insert into staff (e#,ename,title) values (006,'Ruby','nurse');
insert into staff (e#,ename,title) values (007,'Hera','doctor');
insert into staff (e#,ename,title) values (008,'Frank','nurse');
insert into staff (e#,ename,title) values (009,'Inge','doctor');
insert into staff (e#,ename,title) values (010,'Tian','nurse');
insert into staff (e#,ename,title) values (011,'Steph','doctor');
insert into staff (e#,ename,title) values (012,'Jessica','nurse');
insert into staff (e#,ename,title) values (013,'Kelly','doctor');
insert into staff (e#,ename,title) values (014,'Chase','nurse');
insert into staff (e#,ename,title) values (015,'Denzel','doctor');
insert into staff (e#,ename,title) values (016,'Hou','nurse');
insert into staff (e#,ename,title) values (017,'Michael','doctor');
insert into staff (e#,ename,title) values (018,'Andy','nurse');
insert into staff (e#,ename,title) values (019,'Anthony','doctor');
insert into staff (e#,ename,title) values (020,'Ahn','nurse');
insert into staff (e#,ename,title) values (021,'Min','doctor');
insert into staff (e#,ename,title) values (022,'Kevin','nurse');
insert into staff (e#,ename,title) values (023,'Amanda','doctor');
insert into staff (e#,ename,title) values (024,'Tracy','nurse');
insert into staff (e#,ename,title) values (025,'Angela','doctor');
insert into staff (e#,ename,title) values (026,'Yuna','nurse');
insert into staff (e#,ename,title) values (027,'Bonnie','doctor');
insert into staff (e#,ename,title) values (028,'Justin','nurse');
insert into staff (e#,ename,title) values (029,'Nia','doctor');
insert into staff (e#,ename,title) values (030,'Laura','nurse');

insert into specialty (scode,sname) values (0001,'a');
insert into specialty (scode,sname) values (0002,'b');
insert into specialty (scode,sname) values (0003,'c');
insert into specialty (scode,sname) values (0004,'d');
insert into specialty (scode,sname) values (0005,'e');
insert into specialty (scode,sname) values (0006,'f');
insert into specialty (scode,sname) values (0007,'g');
insert into specialty (scode,sname) values (0008,'h');
insert into specialty (scode,sname) values (0009,'i');
insert into specialty (scode,sname) values (0010,'j');
insert into specialty (scode,sname) values (0011,'k');
insert into specialty (scode,sname) values (0012,'l');
insert into specialty (scode,sname) values (0013,'m');
insert into specialty (scode,sname) values (0014,'n');
insert into specialty (scode,sname) values (0015,'o');
insert into specialty (scode,sname) values (0016,'p');
insert into specialty (scode,sname) values (0017,'q');
insert into specialty (scode,sname) values (0018,'a');
insert into specialty (scode,sname) values (0019,'r');
insert into specialty (scode,sname) values (0020,'s');
insert into specialty (scode,sname) values (0021,'t');
insert into specialty (scode,sname) values (0022,'u');
insert into specialty (scode,sname) values (0023,'v');
insert into specialty (scode,sname) values (0024,'w');
insert into specialty (scode,sname) values (0025,'x');

insert into slot (sdate,btime,duration) values (141031,0930,20);
insert into slot (sdate,btime,duration) values (141206,0940,20);
insert into slot (sdate,btime,duration) values (121201,0930,20);
insert into slot (sdate,btime,duration) values (121202,0950,20);
insert into slot (sdate,btime,duration) values (121203,0910,20);
insert into slot (sdate,btime,duration) values (121204,0920,20);
insert into slot (sdate,btime,duration) values (121205,0930,20);
insert into slot (sdate,btime,duration) values (121206,0940,20);
insert into slot (sdate,btime,duration) values (121207,0950,20);
insert into slot (sdate,btime,duration) values (121208,1020,20);
insert into slot (sdate,btime,duration) values (121209,0910,20);
insert into slot (sdate,btime,duration) values (121210,0930,20);
insert into slot (sdate,btime,duration) values (121211,0930,20);
insert into slot (sdate,btime,duration) values (121212,0930,20);
insert into slot (sdate,btime,duration) values (121213,0930,20);
insert into slot (sdate,btime,duration) values (121214,0930,20);
insert into slot (sdate,btime,duration) values (121215,0930,20);
insert into slot (sdate,btime,duration) values (121216,0930,20);
insert into slot (sdate,btime,duration) values (121217,0930,20);
insert into slot (sdate,btime,duration) values (121218,0930,20);
insert into slot (sdate,btime,duration) values (121219,0930,20);
insert into slot (sdate,btime,duration) values (121220,0930,20);
insert into slot (sdate,btime,duration) values (121221,0930,20);
insert into slot (sdate,btime,duration) values (121222,0930,20);
insert into slot (sdate,btime,duration) values (121223,0930,20);
insert into slot (sdate,btime,duration) values (121224,0930,20);
insert into slot (sdate,btime,duration) values (121225,0930,20);
insert into slot (sdate,btime,duration) values (121226,0930,20);
insert into slot (sdate,btime,duration) values (121227,0930,20);
insert into slot (sdate,btime,duration) values (121229,0930,20);

insert into schedule (SSN,e#,sdate,btime,duration) values (123456789,001,141031,0930,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (223456789,002,141206,0940,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (323456789,003,121201,0930,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (423456789,004,121202,0950,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (523456789,005,121203,0910,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (623456789,006,121204,0920,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (723456789,007,121205,0930,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (823456789,008,121206,0940,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (923456789,009,121207,0950,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (133456789,010,121208,1020,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (143456789,011,121209,0910,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (153456789,012,121210,0930,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (163456789,013,121211,0930,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (173456789,014,121212,0930,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (183456789,015,121213,0930,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (193456789,016,121214,0930,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (124456789,017,121215,0930,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (125456789,018,121216,0930,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (126456789,019,121217,0930,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (127456789,020,121218,0930,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (128456789,021,121219,0930,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (129456789,022,121220,0930,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (123556789,023,121221,0930,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (123656789,024,121222,0930,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (123756789,025,121223,0930,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (123856789,026,121224,0930,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (123956789,027,121225,0930,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (123466789,028,121226,0930,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (123476789,029,121227,0930,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (123486789,030,121229,0930,20);
insert into schedule (SSN,e#,sdate,btime,duration) values (323456789,002,141031,0930,20);

insert into patient (SSN,pname,DOB,address) values (123456789,'Ruo',110819,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (223456789,'Ruo1',940819,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (323456789,'Ruo2',950819,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (423456789,'Ruo3',960819,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (523456789,'Ruo4',970819,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (623456789,'Ruo5',980819,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (723456789,'Ruo6',990819,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (823456789,'Ruo7',000819,'0124 rivana way');
insert into patient (SSN,pname,DOB,address) values (923456789,'Ruo8',010819,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (133456789,'Ruo9',110715,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (143456789,'Ruo10',110619,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (153456789,'Ruo11',110519,'012432 rivana way');
insert into patient (SSN,pname,DOB,address) values (163456789,'Ruo12',110419,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (173456789,'Ruo13',110319,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (183456789,'Ruo14',110219,'0123 rivana way');
insert into patient (SSN,pname,DOB,address) values (193456789,'Ruo15',110118,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (124456789,'Ruo16',110817,'06 rivana way');
insert into patient (SSN,pname,DOB,address) values (125456789,'Ruo17',110816,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (126456789,'Ruo18',110815,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (127456789,'Ruo19',110814,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (128456789,'Ruo20',110813,'05 rivana way');
insert into patient (SSN,pname,DOB,address) values (129456789,'Ruo21',110812,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (123556789,'Ruo22',110811,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (123656789,'Ruo23',110810,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (123756789,'Ruo24',110809,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (123856789,'Ruo25',110808,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (123956789,'Ruo26',110807,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (123466789,'Ruo27',110806,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (123476789,'Ruo28',110805,'01 rivana way');
insert into patient (SSN,pname,DOB,address) values (123486789,'Ruo29',110819,'02 rivana way');

insert into outcome (SSN,vdate,scode,dcode) values (123456789,140805,0001,1101);
insert into outcome (SSN,vdate,scode,dcode) values (223456789,140805,0002,1102);
insert into outcome (SSN,vdate,scode,dcode) values (323456789,140805,0003,1102);
insert into outcome (SSN,vdate,scode,dcode) values (423456789,140805,0004,1103);
insert into outcome (SSN,vdate,scode,dcode) values (523456789,140805,0005,1104);
insert into outcome (SSN,vdate,scode,dcode) values (623456789,140805,0006,1105);
insert into outcome (SSN,vdate,scode,dcode) values (723456789,140805,0007,1106);
insert into outcome (SSN,vdate,scode,dcode) values (823456789,140805,0008,1106);
insert into outcome (SSN,vdate,scode,dcode) values (923456789,140815,0009,1107);
insert into outcome (SSN,vdate,scode,dcode) values (133456789,140815,0010,1108);
insert into outcome (SSN,vdate,scode,dcode) values (143456789,140815,0011,1109);
insert into outcome (SSN,vdate,scode,dcode) values (143456789,140825,0012,1110);
insert into outcome (SSN,vdate,scode,dcode) values (163456789,140825,0013,1111);
insert into outcome (SSN,vdate,scode,dcode) values (173456789,140215,0014,1112);
insert into outcome (SSN,vdate,scode,dcode) values (183456789,140225,0015,1113);
insert into outcome (SSN,vdate,scode,dcode) values (193456789,140325,0016,1111);
insert into outcome (SSN,vdate,scode,dcode) values (124456789,140425,0017,1114);
insert into outcome (SSN,vdate,scode,dcode) values (125456789,140525,0018,1115);
insert into outcome (SSN,vdate,scode,dcode) values (126456789,140615,0019,1116);
insert into outcome (SSN,vdate,scode,dcode) values (127456789,140615,0020,1114);
insert into outcome (SSN,vdate,scode,dcode) values (128456789,140625,0021,1116);
insert into outcome (SSN,vdate,scode,dcode) values (129456789,140715,0022,1116);
insert into outcome (SSN,vdate,scode,dcode) values (123556789,140725,0023,1117);
insert into outcome (SSN,vdate,scode,dcode) values (123656789,140715,0024,1118);
insert into outcome (SSN,vdate,scode,dcode) values (123756789,140725,0025,1111);
insert into outcome (SSN,vdate,scode,dcode) values (123856789,140815,0025,1111);
insert into outcome (SSN,vdate,scode,dcode) values (123956789,140825,0025,1111);
insert into outcome (SSN,vdate,scode,dcode) values (123466789,140815,0025,1111);
insert into outcome (SSN,vdate,scode,dcode) values (123476789,140812,0025,1111);
insert into outcome (SSN,vdate,scode,dcode) values (123486789,140813,0025,1111);
insert into outcome (SSN,vdate,scode,dcode) values (123486789,140814,0025,1111);
insert into outcome (SSN,vdate,scode,dcode) values (123476789,140815,0025,1111);
insert into outcome (SSN,vdate,scode,dcode) values (123466789,140816,0025,1111);
insert into outcome (SSN,vdate,scode,dcode) values (123456789,140817,0025,1111);

insert into expertise (scode,e#) values (0001,'001');
insert into expertise (scode,e#) values (0002,'002');
insert into expertise (scode,e#) values (0003,'003');
insert into expertise (scode,e#) values (0004,'004');
insert into expertise (scode,e#) values (0005,'005');
insert into expertise (scode,e#) values (0006,'006');
insert into expertise (scode,e#) values (0007,'007');
insert into expertise (scode,e#) values (0008,'008');
insert into expertise (scode,e#) values (0009,'009');
insert into expertise (scode,e#) values (0010,'010');
insert into expertise (scode,e#) values (0011,'011');
insert into expertise (scode,e#) values (0012,'012');
insert into expertise (scode,e#) values (0013,'013');
insert into expertise (scode,e#) values (0014,'014');
insert into expertise (scode,e#) values (0015,'015');
insert into expertise (scode,e#) values (0016,'016');
insert into expertise (scode,e#) values (0017,'017');
insert into expertise (scode,e#) values (0018,'018');
insert into expertise (scode,e#) values (0019,'019');
insert into expertise (scode,e#) values (0020,'020');
insert into expertise (scode,e#) values (0021,'021');
insert into expertise (scode,e#) values (0022,'022');
insert into expertise (scode,e#) values (0023,'023');
insert into expertise (scode,e#) values (0024,'024');
insert into expertise (scode,e#) values (0025,'025');
insert into expertise (scode,e#) values (0001,'003');
insert into expertise (scode,e#) values (0002,'003');
insert into expertise (scode,e#) values (0004,'003');
insert into expertise (scode,e#) values (0005,'003');
insert into expertise (scode,e#) values (0006,'003');
insert into expertise (scode,e#) values (0007,'003');
insert into expertise (scode,e#) values (0008,'003');
insert into expertise (scode,e#) values (0009,'003');
insert into expertise (scode,e#) values (0010,'003');
insert into expertise (scode,e#) values (0011,'003');
insert into expertise (scode,e#) values (0012,'003');
insert into expertise (scode,e#) values (0013,'003');
insert into expertise (scode,e#) values (0014,'003');
insert into expertise (scode,e#) values (0015,'003');
insert into expertise (scode,e#) values (0016,'003');
insert into expertise (scode,e#) values (0017,'003');
insert into expertise (scode,e#) values (0018,'003');
insert into expertise (scode,e#) values (0019,'003');
insert into expertise (scode,e#) values (0020,'003');
insert into expertise (scode,e#) values (0021,'003');
insert into expertise (scode,e#) values (0022,'003');
insert into expertise (scode,e#) values (0023,'003');
insert into expertise (scode,e#) values (0024,'003');
insert into expertise (scode,e#) values (0025,'003');
insert into expertise (scode,e#) values (0025,'026');
insert into expertise (scode,e#) values (0025,'027');
insert into expertise (scode,e#) values (0025,'028');
insert into expertise (scode,e#) values (0025,'029');
insert into expertise (scode,e#) values (0025,'030');

insert into diagnoses (scode,dcode,cost) values (0001,1101,50);
insert into diagnoses (scode,dcode,cost) values (0002,1102,50);
insert into diagnoses (scode,dcode,cost) values (0003,1102,250);
insert into diagnoses (scode,dcode,cost) values (0004,1103,350);
insert into diagnoses (scode,dcode,cost) values (0005,1104,450);
insert into diagnoses (scode,dcode,cost) values (0006,1105,550);
insert into diagnoses (scode,dcode,cost) values (0007,1106,50);
insert into diagnoses (scode,dcode,cost) values (0008,1106,50);
insert into diagnoses (scode,dcode,cost) values (0009,1107,50);
insert into diagnoses (scode,dcode,cost) values (0010,1108,650);
insert into diagnoses (scode,dcode,cost) values (0011,1109,750);
insert into diagnoses (scode,dcode,cost) values (0012,1110,850);
insert into diagnoses (scode,dcode,cost) values (0013,1111,50);
insert into diagnoses (scode,dcode,cost) values (0014,1112,950);
insert into diagnoses (scode,dcode,cost) values (0015,1113,11150);
insert into diagnoses (scode,dcode,cost) values (0016,1111,50);
insert into diagnoses (scode,dcode,cost) values (0017,1114,50);
insert into diagnoses (scode,dcode,cost) values (0018,1115,50);
insert into diagnoses (scode,dcode,cost) values (0019,1116,50);
insert into diagnoses (scode,dcode,cost) values (0020,1114,150);
insert into diagnoses (scode,dcode,cost) values (0021,1116,250);
insert into diagnoses (scode,dcode,cost) values (0022,1116,10);
insert into diagnoses (scode,dcode,cost) values (0023,1117,150);
insert into diagnoses (scode,dcode,cost) values (0024,1118,350);
insert into diagnoses (scode,dcode,cost) values (0025,1111,250);
insert into diagnoses (scode,dcode,cost) values (0001,1119,1150);
insert into diagnoses (scode,dcode,cost) values (0002,1120,50);
insert into diagnoses (scode,dcode,cost) values (0003,1121,50);
insert into diagnoses (scode,dcode,cost) values (0004,1122,500);
insert into diagnoses (scode,dcode,cost) values (0005,1123,150);
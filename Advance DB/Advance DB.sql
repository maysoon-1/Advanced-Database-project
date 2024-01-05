CREATE TABLE bstaff
( s_id int not null primary key,
sName varchar(255)
);
INSERT into bstaff
VALUES(133,
'ahmad'),
(110,
'omar'),
(111,
'ali'),
(123,
'yoseef'),
(165,
'hany');
select * from bstaff

CREATE TABLE bManager
( M_id int auto_increment primary key,
mName varchar(255)
);
INSERT into bManager
VALUES(102,
'Nada'),
(103,
'Abeer'),
(104,
'Rwan'),
(105,
'Waad');
select * from bmanager

CREATE TABLE B_Donor
( bd_ID int NOT NULL primary key,
bd_firstname varchar(255) NOT NULL,
bd_lastname varchar(255) NOT NULL,
bd_age varchar(255),
bd_sex varchar(255),
bd_Btype varchar(255),
bd_adress varchar(255),
bd_date date,
s_id int NOT NULL,
CONSTRAINT fk_stid foreign key (s_id) references bstaff (s_id)
)
INSERT into B_Donor
VALUES(11547,
'ahmad'
,
'hamad'
,20,
'male'
,
'A+'
,
'Tabuk 50'
,
"2015-12-6"
,133),
(11654,
'naser'
,
'ali'
,55,
'male'
,
'B+'
,
'Tabuk 55'
,
"2018-12-6"
,165),
(11436,
'rayan'
,
'hassan'
,44,
'male'
,
'o+'
,
'Tabuk 63'
,
"2019-12-6"
,123),
(11778,
'zeen'
,
'yahea'
,20,
'male'
,
'AB+'
,
'Tabuk 100'
,
"2015-11-6"
,111),
(11347,
'maha'
,
'osama'
,19,
'female'
,
'A-'
,
'Tabuk 58'
,
"2022-12-6"
,133),
(11875,
'heba'
,
'fahd'
,33,
'female'
,
'A+'
,
'Tabuk 11'
,
"2021-12-4"
,165),
(11398,
'nada'
,
'ahmad'
,21,
'female'
,
'O+'
,
'Tabuk 17'
,
"2022-10-6"
,133),
(11945,
'abeer'
,
'omar'
,21,
'female'
,
'AB+'
,
'Tabuk 99'
,
"2022-10-7"
,110),
(11539,
'rwan'
,
'mohmad'
,22,
'female'
,
'A+'
,
'Tabuk 33'
,
"2022-10-8"
,133),
(11093,
'waad'
,
'hany'
,21,
'female'
,
'O+'
,
'Tabuk 22'
,
"2022-10-10"
,110);
CREATE TABLE pastints
( p_ID int NOT NULL primary key,
p_firstname varchar(255) NOT NULL,
p_lastname varchar(255) NOT NULL,
p_age int(11) ,
p_Btype varchar(255),
p_Bqnty float,
p_sex varchar(255),
p_addres varchar(255),
p_date date,
M_id int not null,
constraint fk_m foreign key (M_id) references bmanager(M_id),
s_id int not null
)
INSERT into pastints
VALUES(10001,
'Mark'
,
'ali'
,25,
'B+'
,1.5,
'male'
,
'Tabuk 11'
,
"2015-12-17"
,102,133),
(10002,
'mazen'
,
'ali'
,21,
'B-'
,1.9,
'male'
,
'Tabuk 5'
,
"2015-12-17"
,102,110),
(10003,
'rakan'
,
'ahmad'
,30,
'o+'
,2.5,
'male'
,
'Tabuk 44'
,
"2017-05-20"
,103,111),
(10004,
'zead'
,
'omar'
,50,
'o+'
,1.8,
'male'
,
'Tabuk 55'
,
"2020-01-15"
,104,123),
(10005,
'malak'
,
'ali'
,20,
'o-'
,1.5,
'female'
,
'Tabuk 37'
,
"2019-03-10"
,105,133),
(10006,
'hana'
,
'fahd'
,15,
'A-'
,2.8,
'female'
,
'Tabuk 68'
,
"2021-07-1"
,103,111),
(10007,
'reem'
,
'yosef'
,18,
'AB+'
,1.5,
'male'
,
'Tabuk 77'
,
"2015-12-17"
,102,133),
(10008,
'Swathi'
,
'ahmad'
,33,
'o+'
,3.0,
'm'
,
'Tabuk 95'
,
"2016-06-7"
,102,110),
(10009,
'Lance'
,
'ahmad'
,45,
'o+'
,3.7,
'm'
,
'Tabuk 100'
,
"2020-01-15"
,102,110),
(10010,
'Marsh'
,
'ahmad'
,44,
'o+'
,3.5,
'm'
,
'Tabuk 100'
,
"2021-07-1"
,103,165);
select *from pastints
CREATE TABLE Hospital
( hosp_ID int NOT NULL primary key,
hosp_name varchar(255) NOT NULL,
hosp_needed_Btybe varchar(10),
hosp_needed_bqnty int,
m_id int not null,
CONSTRAINT mID_fk foreign key (m_id) references bmanager(m_id)
);
INSERT into Hospital
VALUES(4,
'fahad ben soltan'
,
'A+'
,10,102),
(5,
'alasakare'
,
'AB+'
,20,103),
(6,
'alhapep'
,
'O+'
,30,104),
(7,
'alslman'
,
'O-'
,20,105),
(8,
'alahly'
,
'A-'
,30,104),
(9,
'alargan'
,
'B-'
,10,103),
(10,
'mapasem'
,
'A+'
,20,102);
select * from hospital

CREATE TABLE Hospital2
( hosp_ID int NOT NULL primary key,
hosp_phone int
);
INSERT into Hospital2
VALUES(4,0540010424),
(5,0518001034),
(6,0513001067),
(7,0513001028),
(8,0512001062),
(9,0515001093),
(10,0517001055);
select *from hospital2;
CREATE TABLE BSpecimen
( spec_number int NOT NULL PRIMARY KEY ,
b_group varchar(10) NOT NULL,
b_status varchar(255) ,
M_id int NOT NULL,
CONSTRAINT specr_fk foreign key ( M_id) references bmanager( M_id)
)
INSERT into BSpecimen
VALUES(1001,
'B+'
,
'cryoprecipitated,
'
,105),
(1002,
'O+'
,
'platelets'
,102),
(1003,
'AB+'
,
'plasma'
,102),
(1004,
'O-'
,
'granulocytes'
,103),
(1005,
'A+'
,
'cryoprecipitated'
,104),
(1006,
'A-'
,
'AHF (cryo)'
,104),
(1007,
'AB-'
,
'AHF (cryo)'
,104),
(1008,
'AB-'
,
'plasma'
,105),
(1009,
'B+'
,
'platelets'
,105),
(1010,
'O+'
,
'platelets'
,105);
select*from bspecimen;
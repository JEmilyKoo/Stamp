/* Drop Tables 
DROP TABLE ACHLIST CASCADE CONSTRAINTS;
DROP TABLE BADGELIST CASCADE CONSTRAINTS;
DROP TABLE DM CASCADE CONSTRAINTS;
DROP TABLE FAVORITE CASCADE CONSTRAINTS;
DROP TABLE FBCMNT CASCADE CONSTRAINTS;
DROP TABLE FBLIKE CASCADE CONSTRAINTS;
DROP TABLE FOLLOW CASCADE CONSTRAINTS;
DROP TABLE FREEBOARD CASCADE CONSTRAINTS;
DROP TABLE RVCMNT CASCADE CONSTRAINTS;
DROP TABLE RVLIKE CASCADE CONSTRAINTS;
DROP TABLE STAMP CASCADE CONSTRAINTS;
DROP TABLE REVIEW CASCADE CONSTRAINTS;
DROP TABLE PROFILE CASCADE CONSTRAINTS;
DROP TABLE MEMBER CASCADE CONSTRAINTS;
*/


/* Create Tables */

CREATE TABLE MEMBER
(
	id varchar2(50) primary key,
	pwd varchar2(10) NOT NULL,
	name nvarchar2(10) NOT NULL,
	regiDate date DEFAULT SYSDATE
);

CREATE TABLE PROFILE
(
	nickname nvarchar2(15) primary key,
	id varchar2(50) references MEMBER(id) on delete cascade,
	mail nvarchar2(100),
	trvPrpns nvarchar2(20),
	pr nvarchar2(100),
	prfImage clob,
	gender nvarchar2(8),
	birth nvarchar2(15),
	phone nvarchar2(15),
	lev number DEFAULT 0,
	exp number DEFAULT 0,
	openPrf number DEFAULT 1
);

CREATE TABLE ACHLIST
(
	achId nvarchar2(20) primary key,
	nickname nvarchar2(15) references PROFILE(nickname) on delete cascade,
	achDate date DEFAULT SYSDATE
);


CREATE TABLE BADGELIST
(
	bgId nvarchar2(20) primary key,
	nickname nvarchar2(15) references PROFILE(nickname) on delete cascade,
	bgTitle nvarchar2(20),
	bgContent nvarchar2(100),
	bgDate date DEFAULT SYSDATE
);


CREATE TABLE DM
(
	dmNo number primary key,
	nickname nvarchar2(15) references PROFILE(nickname) on delete cascade,
	dmToNickname nvarchar2(15) references PROFILE(nickname) on delete cascade,
	dmCnt nvarchar2(100),
	dmDate date DEFAULT SYSDATE,
	dmChecked number DEFAULT 1
);


CREATE TABLE FAVORITE
(
	favoriteNo number primary key,
	rvNo number references REVIEW(rvNo) on delete cascade,
	FavoriteRegiDate date DEFAULT SYSDATE
);


CREATE TABLE FREEBOARD
(
	fbNo number primary key,
	nickname nvarchar2(15) references PROFILE(nickname) on delete cascade,
	fbTitle nvarchar2(20),
	fbCtt clob,
	fbDate date DEFAULT SYSDATE,
	fbVisitCnt number DEFAULT 0,
	fbCategory nvarchar2(8),
	fbLikeCnt number DEFAULT 0
);

CREATE TABLE FBCMNT
(
	fbcNo number primary key,
	fbNo number references FREEBOARD(fbNo) on delete cascade,
	fbCmnt clob,
	fbcDate date DEFAULT SYSDATE
);


CREATE TABLE FBLIKE
(
	fblNo number primary key,
	fbNo number references FREEBOARD(fbNo) on delete cascade,
	fblDate date DEFAULT SYSDATE
);


CREATE TABLE FOLLOW
(
	followNo number primary key,
	followerNickname nvarchar2(15) references PROFILE(nickname) on delete cascade,
	followIdNickname nvarchar2(15) references PROFILE(nickname) on delete cascade
);


CREATE TABLE REVIEW
(
	rvNo number primary key,
	nickname nvarchar2(15) references PROFILE(nickname) on delete cascade,
	rvTitle nvarchar2(20) NOT NULL,
	rvCtt clob,
	rvLikeCnt number DEFAULT 0,
	rvDate date DEFAULT SYSDATE,
	rvCategory1 nvarchar2(20),
	rvCategory2 nvarchar2(20),
	rvLat number,
	rvLng number,
	rvVisitCnt number DEFAULT 0,
	rvFile clob,
	rvLikeCheck number DEFAULT 0
);


CREATE TABLE RVCMNT
(
	rvcNo number primary key,
	rvNo number references REVIEW(rvNo) on delete cascade,
	rvCmnt clob,
	rvcDate date DEFAULT SYSDATE
);


CREATE TABLE RVLIKE
(
	rvlNo number primary key,
	rvNo references REVIEW(rvNo) on delete cascade,
	rvDate date DEFAULT SYSDATE
);


CREATE TABLE STAMP
(
	stNo number primary key,
	rvNo number references REVIEW(rvNo) on delete cascade,
	stDate date DEFAULT SYSDATE,
	stIsExpired number DEFAULT 1
);

CREATE SEQUENCE SEQ_REVIEW
nocache
nocycle;

CREATE SEQUENCE SEQ_FBCMNT
nocache
nocycle;

CREATE SEQUENCE SEQ_FREEBOARD
nocache
nocycle;

CREATE SEQUENCE SEQ_BADGELIST
nocache
nocycle;

CREATE SEQUENCE SEQ_DM
nocache
nocycle;

CREATE SEQUENCE SEQ_ACHLIST
nocache
nocycle;

CREATE SEQUENCE SEQ_FOLLOW
nocache
nocycle;

CREATE SEQUENCE SEQ_RVLIKE
nocache
nocycle;

CREATE SEQUENCE SEQ_FAVORITE
nocache
nocycle;

CREATE SEQUENCE SEQ_RVCMNT
nocache
nocycle;

CREATE SEQUENCE SEQ_STAMP
nocache
nocycle;




/* Create Foreign Keys 
ALTER TABLE FBCMNT
	ADD FOREIGN KEY (fbNo)
	REFERENCES FREEBOARD (fbNo)
;


ALTER TABLE FBLIKE
	ADD FOREIGN KEY (fbNo)
	REFERENCES FREEBOARD (fbNo)
;


ALTER TABLE PROFILE
	ADD FOREIGN KEY (id)
	REFERENCES MEMBER (id)
;


ALTER TABLE ACHLIST
	ADD FOREIGN KEY (nickname)
	REFERENCES PROFILE (nickname)
;


ALTER TABLE BADGELIST
	ADD FOREIGN KEY (nickname)
	REFERENCES PROFILE (nickname)
;


ALTER TABLE DM
	ADD FOREIGN KEY (nickname)
	REFERENCES PROFILE (nickname)
;


ALTER TABLE DM
	ADD FOREIGN KEY (dmToNickname)
	REFERENCES PROFILE (nickname)
;


ALTER TABLE FOLLOW
	ADD FOREIGN KEY (followerNicname)
	REFERENCES PROFILE (nickname)
;


ALTER TABLE FOLLOW
	ADD FOREIGN KEY (followIdNickname)
	REFERENCES PROFILE (nickname)
;


ALTER TABLE FREEBOARD
	ADD FOREIGN KEY (nickname)
	REFERENCES PROFILE (nickname)
;


ALTER TABLE REVIEW
	ADD FOREIGN KEY (nickname)
	REFERENCES PROFILE (nickname)
;


ALTER TABLE FAVORITE
	ADD FOREIGN KEY (rvNo)
	REFERENCES REVIEW (rvNo)
;


ALTER TABLE RVCMNT
	ADD FOREIGN KEY (rvNo)
	REFERENCES REVIEW (rvNo)
;


ALTER TABLE RVLIKE
	ADD FOREIGN KEY (rvNo)
	REFERENCES REVIEW (rvNo)
;


ALTER TABLE STAMP
	ADD FOREIGN KEY (rvNo)
	REFERENCES REVIEW (rvNo)
;
*/

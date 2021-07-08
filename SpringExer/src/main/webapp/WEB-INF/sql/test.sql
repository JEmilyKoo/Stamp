
/* Drop Tables */

DROP TABLE ACHLIST CASCADE CONSTRAINTS;
DROP TABLE BADGELIST CASCADE CONSTRAINTS;
DROP TABLE DM CASCADE CONSTRAINTS;
DROP TABLE FAVORITE CASCADE CONSTRAINTS;
DROP TABLE FBCMNT CASCADE CONSTRAINTS;
DROP TABLE FBLIKE CASCADE CONSTRAINTS;
DROP TABLE FOLLOW CASCADE CONSTRAINTS;
DROP TABLE FREEBOARD CASCADE CONSTRAINTS;
DROP TABLE memberStamp CASCADE CONSTRAINTS;
DROP TABLE RVCMNT CASCADE CONSTRAINTS;
DROP TABLE RVLIKE CASCADE CONSTRAINTS;
DROP TABLE STAMP CASCADE CONSTRAINTS;
DROP TABLE stampCheck CASCADE CONSTRAINTS;
DROP TABLE REVIEW CASCADE CONSTRAINTS;
DROP TABLE PROFILE CASCADE CONSTRAINTS;
DROP TABLE MEMBER CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE MEMBER
(
	id varchar2(50) PRIMARY KEY,
	pwd varchar2(10) NOT NULL,
	name nvarchar2(10) NOT NULL,
	regiDate date DEFAULT SYSDATE
);

CREATE TABLE PROFILE
(
	nickname nvarchar2(15) PRIMARY KEY,
	id varchar2(50) references member(id),
	mail nvarchar2(100),
	trvPrpns nvarchar2(20),
	pr nvarchar2(100),
	prfImage clob,
	gender nvarchar2(8),
	birth nvarchar2(15),
	phone nvarchar2(15),
	exp number DEFAULT 0,
	lev number DEFAULT 0,
	openPrf number DEFAULT 1
);

CREATE TABLE REVIEW
(
	rvNo number PRIMARY KEY,
	nickname nvarchar2(15) references profile(nickname),
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

CREATE TABLE ACHLIST
(
	achId nvarchar2(20) PRIMARY KEY,
	nickname nvarchar2(15) references profile(nickname),
	achDate date DEFAULT SYSDATE
);


CREATE TABLE BADGELIST
(
	bgId nvarchar2(20) PRIMARY KEY,
	nickname nvarchar2(15) references profile(nickname),
	bgDate date DEFAULT SYSDATE,
	bgTitle nvarchar2(20),
	bgContent nvarchar2(100)
);


CREATE TABLE DM
(
	dmNo number PRIMARY KEY,
	nickname nvarchar2(15) references profile(nickname),
	dmToNickname nvarchar2(15) references profile(nickname),
	dmCtt nvarchar2(100),
	dmDate date DEFAULT SYSDATE,
	dmChecked number DEFAULT 1
);

CREATE TABLE FREEBOARD
(
	fbNo number PRIMARY KEY,
	nickname nvarchar2(15) references profile(nickname),
	fbTitle nvarchar2(20),
	fbCtt clob,
	fbDate date DEFAULT SYSDATE,
	fbVisitCnt number DEFAULT 0,
	fbCategory nvarchar2(8),
	fbLikeCnt number DEFAULT 0
);


CREATE TABLE FAVORITE
(
	favoriteNo number PRIMARY KEY,
	rvNo number NOT NULL,
	FavoriteRegiDate date DEFAULT SYSDATE
);


CREATE TABLE FBCMNT
(
	fbcNo number PRIMARY KEY,
	fbNo number NOT NULL,
	fbCmnt clob,
	fbcDate date DEFAULT SYSDATE
);


CREATE TABLE FBLIKE
(
	fblNo number PRIMARY KEY,
	fbNo number NOT NULL,
	fblDate date DEFAULT SYSDATE,
	nickname nvarchar2(15) references profile(nickname)
);


CREATE TABLE FOLLOW
(
	followNo number PRIMARY KEY,
	followerNickname nvarchar2(15) NOT NULL UNIQUE,
	followIdNickname nvarchar2(15) NOT NULL UNIQUE
);



CREATE TABLE memberStamp
(
	nickname nvarchar2(15) NOT NULL UNIQUE,
	rvNo number NOT NULL
);



CREATE TABLE RVCMNT
(
	rvcNo number PRIMARY KEY,
	rvNo number NOT NULL,
	nickname nvarchar2(15) NOT NULL UNIQUE,
	rvCmnt clob,
	rvcDate date DEFAULT SYSDATE
);


CREATE TABLE RVLIKE
(
	rvlNo numberPRIMARY KEY,
	rvNo number NOT NULL,
	nickname nvarchar2(15) NOT NULL UNIQUE,
	rvDate date DEFAULT SYSDATE
);


CREATE TABLE STAMP
(
	stNo number PRIMARY KEY,
	rvNo number NOT NULL,
	stDate date DEFAULT SYSDATE,
	stIsExpired number DEFAULT 1
);


CREATE TABLE stampCheck
(
	nickname nvarchar2(15) NOT NULL UNIQUE,
	rvNo number NOT NULL,
	DISTANCE number
);



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


ALTER TABLE FBLIKE
	ADD FOREIGN KEY (nickname)
	REFERENCES PROFILE (nickname)
;


ALTER TABLE FOLLOW
	ADD FOREIGN KEY (followerNickname)
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


ALTER TABLE memberStamp
	ADD FOREIGN KEY (nickname)
	REFERENCES PROFILE (nickname)
;


ALTER TABLE REVIEW
	ADD FOREIGN KEY (nickname)
	REFERENCES PROFILE (nickname)
;


ALTER TABLE RVCMNT
	ADD FOREIGN KEY (nickname)
	REFERENCES PROFILE (nickname)
;


ALTER TABLE RVLIKE
	ADD FOREIGN KEY (nickname)
	REFERENCES PROFILE (nickname)
;


ALTER TABLE stampCheck
	ADD FOREIGN KEY (nickname)
	REFERENCES PROFILE (nickname)
;


ALTER TABLE FAVORITE
	ADD FOREIGN KEY (rvNo)
	REFERENCES REVIEW (rvNo)
;


ALTER TABLE memberStamp
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


ALTER TABLE stampCheck
	ADD FOREIGN KEY (rvNo)
	REFERENCES REVIEW (rvNo)
;

*/



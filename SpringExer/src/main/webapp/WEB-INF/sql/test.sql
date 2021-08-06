
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
DROP TABLE SCRAP CASCADE CONSTRAINTS;
DROP TABLE STAMP CASCADE CONSTRAINTS;
DROP TABLE stampCheck CASCADE CONSTRAINTS;
DROP TABLE REVIEW CASCADE CONSTRAINTS;
DROP TABLE PROFILE CASCADE CONSTRAINTS;
DROP TABLE MEMBER CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE ACHLIST
(
	achId nvarchar2(20) NOT NULL,
	nickname nvarchar2(15) NOT NULL UNIQUE,
	achDate date DEFAULT SYSDATE,
	PRIMARY KEY (achId)
);


CREATE TABLE BADGELIST
(
	bgId nvarchar2(20) NOT NULL,
	nickname nvarchar2(15) NOT NULL UNIQUE,
	bgTitle nvarchar2(20),
	bgContent nvarchar2(100),
	bgDate date DEFAULT SYSDATE,
	PRIMARY KEY (bgId)
);


CREATE TABLE DM
(
	dmNo number NOT NULL,
	nickname nvarchar2(15) NOT NULL UNIQUE,
	dmToNickname nvarchar2(15) NOT NULL UNIQUE,
	dmCtt nvarchar2(100),
	dmDate date DEFAULT SYSDATE,
	dmChecked number DEFAULT 1,
	PRIMARY KEY (dmNo)
);


CREATE TABLE FAVORITE
(
	favoriteNo number NOT NULL,
	rvNo number NOT NULL,
	FavoriteRegiDate date DEFAULT SYSDATE,
	PRIMARY KEY (favoriteNo)
);


CREATE TABLE FBCMNT
(
	fbcNo number NOT NULL,
	fbNo number NOT NULL,
	nickname nvarchar2(15) NOT NULL UNIQUE,
	fbCmnt clob,
	fbcDate date DEFAULT SYSDATE,
	PRIMARY KEY (fbcNo)
);


CREATE TABLE FBLIKE
(
	fblNo number NOT NULL,
	nickname nvarchar2(15) NOT NULL UNIQUE,
	fbNo number NOT NULL,
	fblDate date DEFAULT SYSDATE,
	PRIMARY KEY (fblNo)
);


CREATE TABLE FOLLOW
(
	followNo number NOT NULL,
	followerNickname nvarchar2(15) NOT NULL UNIQUE,
	followIdNickname nvarchar2(15) NOT NULL UNIQUE,
	PRIMARY KEY (followNo)
);


CREATE TABLE FREEBOARD
(
	fbNo number NOT NULL,
	nickname nvarchar2(15) NOT NULL UNIQUE,
	fbTitle nvarchar2(20),
	fbCtt clob,
	fbDate date DEFAULT SYSDATE,
	fbVisitCnt number DEFAULT 0,
	fbCategory nvarchar2(8),
	fbLikeCnt number DEFAULT 0,
	PRIMARY KEY (fbNo)
);


CREATE TABLE MEMBER
(
	id varchar2(50) NOT NULL,
	pwd varchar2(10) NOT NULL,
	name nvarchar2(10) NOT NULL,
	regiDate date DEFAULT SYSDATE,
	PRIMARY KEY (id)
);


CREATE TABLE memberStamp
(
	nickname nvarchar2(15) NOT NULL UNIQUE,
	rvNo number NOT NULL
);


CREATE TABLE PROFILE
(
	nickname nvarchar2(15) NOT NULL UNIQUE,
	id varchar2(50) NOT NULL,
	mail nvarchar2(100),
	trvPrpns nvarchar2(20),
	pr nvarchar2(100),
	prfImage clob,
	gender nvarchar2(8),
	birth nvarchar2(15),
	phone nvarchar2(15),
	lev number DEFAULT 0,
	exp number DEFAULT 0,
	openPrf number DEFAULT 1,
	PRIMARY KEY (nickname)
);


CREATE TABLE REVIEW
(
	rvNo number NOT NULL,
	nickname nvarchar2(15) NOT NULL UNIQUE,
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
	rvLikeCheck number DEFAULT 0,
	rvviews number default 0,
	PRIMARY KEY (rvNo)
);


CREATE TABLE RVCMNT
(
	rvcNo number NOT NULL,
	rvNo number NOT NULL,
	nickname nvarchar2(15) NOT NULL UNIQUE,
	rvCmnt clob,
	rvcDate date DEFAULT SYSDATE,
	PRIMARY KEY (rvcNo)
);


CREATE TABLE RVLIKE
(
	rvlNo number NOT NULL,
	rvNo number NOT NULL,
	nickname nvarchar2(15) NOT NULL UNIQUE,
	rvlDate date DEFAULT SYSDATE,
	PRIMARY KEY (rvlNo)
);


CREATE TABLE SCRAP
(
	rvsNo number NOT NULL,
	rvNo number NOT NULL,
	nickname nvarchar2(15) NOT NULL,
	rvsDate date DEFAULT SYSDATE,
	PRIMARY KEY (rvsNo)
);


CREATE TABLE STAMP
(
	stNo number NOT NULL,
	rvNo number NOT NULL,
	stDate date DEFAULT SYSDATE,
	stIsExpired number DEFAULT 1,
	STEXPIREDDATE date DEFAULT sysdate+7,
	PRIMARY KEY (stNo)
);


CREATE TABLE stampCheck
(
	nickname nvarchar2(15) NOT NULL UNIQUE,
	rvNo number NOT NULL,
	DISTANCE number
);



/* Create Foreign Keys */

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


ALTER TABLE FBCMNT
	ADD FOREIGN KEY (nickname)
	REFERENCES PROFILE (nickname)
;


ALTER TABLE FBLIKE
	ADD FOREIGN KEY (nickname)
	REFERENCES PROFILE (nickname)
;


ALTER TABLE FOLLOW
	ADD FOREIGN KEY (followIdNickname)
	REFERENCES PROFILE (nickname)
;


ALTER TABLE FOLLOW
	ADD FOREIGN KEY (followerNickname)
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


ALTER TABLE SCRAP
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


ALTER TABLE SCRAP
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




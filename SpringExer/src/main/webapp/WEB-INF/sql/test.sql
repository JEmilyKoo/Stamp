
/* Drop Tables */

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


create or replace
FUNCTION calc_distance(
 pLat1 NUMBER,
 pLon1 NUMBER,
 pLat2 NUMBER,
 pLon2 NUMBER)
 RETURN NUMBER
IS

-- r is the spherical radius of earth in Kilometers
cSpherRad CONSTANT NUMBER := 6367;
                                                                        -- The spherical radius of earth in miles is 3956
a        NUMBER;
vLat     NUMBER;
vLat1Rad NUMBER;
vLat2Rad NUMBER;
vLon     NUMBER;
vLon1Rad NUMBER;
vLon2Rad NUMBER;

BEGIN
  /*
  Most computers require the arguments of trigonometric functions to be
  expressed in radians. To convert lon1, lat1 and lon2,lat2 from
  degrees,minutes, seconds to radians, first convert them to decimal
  degrees. To convert decimal degrees to radians, multiply the number
  of degrees by pi/180 = 0.017453293 radians/degrees.
  */

  vLat1Rad := pLat1 * 0.017453293;
  vLat2Rad := pLat2 * 0.017453293;
  vLon1Rad := pLon1 * 0.017453293;
  vLon2Rad := pLon2 * 0.017453293;

  vLon := vLon2Rad - vLon1Rad;
  vLat := vLat2Rad - vLat1Rad;

  a := POWER(SIN(vLat/2),2) + COS(vLat1Rad) * COS(vLat2Rad) *
  POWER(SIN(vLon/2),2);

  /*
  The intermediate result c is the great circle distance in radians.
  Inverse trigonometric functions return results expressed in radians.
  To express c in decimal degrees, multiply the number of radians by
   180/pi = 57.295780 degrees/radian.
  The great circle distance d will be in the same units as r.
  */

  RETURN ROUND(cSpherRad * 2 * ATAN2(SQRT(a), SQRT(1-a)),1);
EXCEPTION
  WHEN OTHERS THEN
    RETURN 999;
END calc_distance;


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
	bgDate date DEFAULT SYSDATE,
	bgTitle nvarchar2(20),
	bgContent nvarchar2(100),
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
	fbCmnt clob,
	fbcDate date DEFAULT SYSDATE,
	PRIMARY KEY (fbcNo)
);


CREATE TABLE FBLIKE
(
	fblNo number NOT NULL,
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
	exp number DEFAULT 0,
	lev number DEFAULT 0,
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
	PRIMARY KEY (rvNo)
);


CREATE TABLE RVCMNT
(
	rvcNo number NOT NULL,
	rvNo number NOT NULL,
	nickname nvarchar2(15) NOT NULL UNIQUE,
	rvCmnt clob,
	rvcDate date DEFAULT SYSDATE,
	PRIMARY KEY (rvcNo, rvNo)
);


CREATE TABLE RVLIKE
(
	rvlNo number NOT NULL,
	rvNo number NOT NULL,
	nickname nvarchar2(15) references profile(nickname),
	rvDate date DEFAULT SYSDATE,
	PRIMARY KEY (rvlNo)
);


CREATE TABLE STAMP
(
	stNo number NOT NULL,
	rvNo number NOT NULL,
	stDate date DEFAULT SYSDATE,
	stIsExpired number DEFAULT 1,
	PRIMARY KEY (stNo)
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
	ADD FOREIGN KEY (dmToNickname)
	REFERENCES PROFILE (nickname)
;


ALTER TABLE DM
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


ALTER TABLE REVIEW
	ADD FOREIGN KEY (nickname)
	REFERENCES PROFILE (nickname)
;


ALTER TABLE RVCMNT
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




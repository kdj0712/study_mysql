-- DB 생성
CREATE DATABASE STUDY_USERSwithInestSQL_DJKim;

-- 테이블 생성
CREATE TABLE `ADD_INFO` (
	`ADD_INFO_ID`	VARCHAR(50)	NOT NULL,
	`USERS_ID`	VARCHAR(50)	NOT NULL,
	`DEL_ADD`	VARCHAR(255)	NULL
);

CREATE TABLE `USERS` (
	`USERS_ID`	VARCHAR(50)	NOT NULL,
	`NAME`	VARCHAR(255)	NULL,
	`AGE`	INTEGER(20)	NULL,
	`GENDER`	CHAR(10)	NULL,
	`PHONE`	VARCHAR(255)	NULL,
	`EMAIL`	VARCHAR(255)	NULL
);

CREATE TABLE `HOBBIES` (
	`HOBBIES_ID`	VARCHAR(50)	NOT NULL,
	`USERS_ID`	VARCHAR(50)	NOT NULL,
	`HOBBY`	VARCHAR(255)	NULL
);

ALTER TABLE `ADD_INFO` ADD CONSTRAINT `PK_ADD_INFO` PRIMARY KEY (
	`ADD_INFO_ID`,
	`USERS_ID`
);

ALTER TABLE `USERS` ADD CONSTRAINT `PK_USERS` PRIMARY KEY (
	`USERS_ID`
);

ALTER TABLE `HOBBIES` ADD CONSTRAINT `PK_HOBBIES` PRIMARY KEY (
	`HOBBIES_ID`,
	`USERS_ID`
);

ALTER TABLE `ADD_INFO` ADD CONSTRAINT `FK_USERS_TO_ADD_INFO_1` FOREIGN KEY (
	`USERS_ID`
)
REFERENCES `USERS` (
	`USERS_ID`
);

ALTER TABLE `HOBBIES` ADD CONSTRAINT `FK_USERS_TO_HOBBIES_1` FOREIGN KEY (
	`USERS_ID`
)
REFERENCES `USERS` (
	`USERS_ID`
);

-- 테이블 별 데이터 삽입
INSERT INTO USERS
(USERS_ID, `NAME`, AGE, GENDER,PHONE, EMAIL)
VALUES
('USER_01','홍길동', 30 , '남', '010-1234-5678','hong@example.com'),
('USER_02','김영희', 25 , '여', '010-9876-5432','kim@example.com'),
('USER_03','이철수', 35 , '남', '010-2468-1357','lee@example.com'),
('USER_04','박민준', 28 , '남', '010-8642-9137','park@example.com'),
('USER_05','임지영', 32 , '여', '010-5793-6241','lim@example.com');


INSERT INTO HOBBIES
(USERS_ID, HOBBIES_ID, HOBBY)
VALUES
('USER_01','HOBBY_01', '등산')
,('USER_01','HOBBY_02','요리')
,('USER_02','HOBBY_03','음악감상')
,('USER_02','HOBBY_04','수영')
,('USER_03','HOBBY_05','영화감상')
,('USER_03','HOBBY_06','자전거')
,('USER_04','HOBBY_07','요가')
,('USER_04','HOBBY_08','그림 그리기')
,('USER_05','HOBBY_09','독서')
,('USER_05','HOBBY_10','공원 산책');

INSERT INTO ADD_INFO
(USERS_ID, ADD_INFO_ID, DEL_ADD)
VALUES
('USER_01','ADD_01', '서울특별시 강남구')
,('USER_01','ADD_02', '경기도 수원시')
,('USER_02','ADD_02', '경기도 수원시')
,('USER_03','ADD_03', '인천광역시 부평구')
,('USER_04','ADD_04', '대전광역시 서구')
,('USER_05','ADD_05', '경상북도 포항시 북구')
,('USER_05','ADD_04', '대전광역시 서구');

-- OPTION 1. '김영희' 레코드 삭제
DELETE FROM ADD_INFO
WHERE USERS_ID = 'USER_02';

DELETE FROM HOBBIES
WHERE USERS_ID = 'USER_02';

DELETE FROM USERS
WHERE USERS_ID = 'USER_02';

-- OPTION 2. '대전광역시 서구'를 '대전광역시 동구'로 UPDATE
UPDATE ADD_INFO
SET DEL_ADD = '대전광역시 동구'
WHERE ADD_INFO_ID = 'ADD_04';

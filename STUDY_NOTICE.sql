CREATE TABLE `NOTICE` (
	`NOTICE_ID`	VARCHAR(255)	NOT NULL,
	`CONTENTS`	VARCHAR(255)	NULL,
	`WRITER`	VARCHAR(255)	NULL
);
CREATE TABLE `VISITOR` (
	`VISITOR_ID`	VARCHAR(255)	NOT NULL,
	`NOTICE_ID`	VARCHAR(255)	NOT NULL,
	`VISITOR_NAME`	VARCHAR(255)	NULL
);
ALTER TABLE `NOTICE` ADD CONSTRAINT `PK_NOTICE` PRIMARY KEY (
	`NOTICE_ID`
);
ALTER TABLE `VISITOR` ADD CONSTRAINT `PK_VISITOR` PRIMARY KEY (
	`VISITOR_ID`,
	`NOTICE_ID`
);
ALTER TABLE `VISITOR` ADD CONSTRAINT `FK_NOTICE_TO_VISITOR_1` FOREIGN KEY (
	`NOTICE_ID`
)
REFERENCES `NOTICE` (
	`NOTICE_ID`
);
CREATE TABLE `CARS_INFORMATION` (
	`CARS_INFORMATIION_ID`	VARCHAR(255)	NOT NULL,
	`COMPANY_NAME`	VARCHAR(255)	NULL,
	`CAR_NAME`	VARCHAR(255)	NULL,
	`CAR_YEAR`	VARCHAR(255)	NULL
);

CREATE TABLE `OPTIONS` (
	`OPTIONS_ID`	VARCHAR(255)	NOT NULL,
	`NAME`	VARCHAR(255)	NULL
);

CREATE TABLE `CARS_INFORMATION_OPTIONS` (
	`CARS_INFORMATION_OPTIONS_ID`	VARCHAR(255)	NOT NULL,
	`OPTIONS_ID`	VARCHAR(255)	NOT NULL,
	`CARS_INFORMATIION_ID`	VARCHAR(255)	NOT NULL
);

ALTER TABLE `CARS_INFORMATION` ADD CONSTRAINT `PK_CARS_INFORMATION` PRIMARY KEY (
	`CARS_INFORMATIION_ID`
);

ALTER TABLE `OPTIONS` ADD CONSTRAINT `PK_OPTIONS` PRIMARY KEY (
	`OPTIONS_ID`
);

ALTER TABLE `CARS_INFORMATION_OPTIONS` ADD CONSTRAINT `PK_CARS_INFORMATION_OPTIONS` PRIMARY KEY (
	`CARS_INFORMATION_OPTIONS_ID`,
	`OPTIONS_ID`,
	`CARS_INFORMATIION_ID`
);

ALTER TABLE `CARS_INFORMATION_OPTIONS` ADD CONSTRAINT `FK_OPTIONS_TO_CARS_INFORMATION_OPTIONS_1` FOREIGN KEY (
	`OPTIONS_ID`
)
REFERENCES `OPTIONS` (
	`OPTIONS_ID`
);

ALTER TABLE `CARS_INFORMATION_OPTIONS` ADD CONSTRAINT `FK_CARS_INFORMATION_TO_CARS_INFORMATION_OPTIONS_1` FOREIGN KEY (
	`CARS_INFORMATIION_ID`
)
REFERENCES `CARS_INFORMATION` (
	`CARS_INFORMATIION_ID`
);


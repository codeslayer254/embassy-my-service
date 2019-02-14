CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE SEQUENCE HIBERNATE_SEQUENCE
  INCREMENT 1
  MINVALUE 100
  MAXVALUE 9223372036854775807
  START 100
  CACHE 1;

CREATE TABLE ADDRESS
(
  ID BIGINT NOT NULL,
  HOUSE_NUMBER CHARACTER VARYING(255),
  STREET CHARACTER VARYING(255),
  ZIP_CODE CHARACTER VARYING(255),
  CONSTRAINT ADDRESS_PKEY PRIMARY KEY (ID)
);

CREATE TABLE COMPANY
(
  ID BIGINT NOT NULL,
  NAME CHARACTER VARYING(255) NOT NULL,
  CONSTRAINT COMPANY_PKEY PRIMARY KEY (ID),
  CONSTRAINT UKS7T58YCLDRJRFTPUN092TKHU7 UNIQUE (NAME)
);

CREATE TABLE PUBLIC.CAR
(
  ID BIGINT NOT NULL,
  REGISTRATION_NUMBER CHARACTER VARYING(255),
  COMPANY_ID BIGINT,
  CONSTRAINT CAR_PKEY PRIMARY KEY (ID),
  CONSTRAINT FKJQP14DKMI2LH5KJAVV4T0DKQY FOREIGN KEY (COMPANY_ID)
      REFERENCES COMPANY (ID) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE DEPARTMENT
(
  ID BIGINT NOT NULL,
  NAME CHARACTER VARYING(255) NOT NULL,
  COMPANY_ID BIGINT,
  CONSTRAINT DEPARTMENT_PKEY PRIMARY KEY (ID),
  CONSTRAINT FKH1M88Q0F7SC0MK76KJU4KCN6F FOREIGN KEY (COMPANY_ID)
      REFERENCES COMPANY (ID) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);


CREATE TABLE CATEGORY
(
  ID BIGINT NOT NULL,
  NAME CHARACTER VARYING(255) NOT NULL,
  CONSTRAINT CATEGORY_PKEY PRIMARY KEY (ID)
);

CREATE TABLE EMPLOYEE
(
  ID UUID NOT NULL,
  TITLE CHARACTER VARYING(255),
  NAME CHARACTER VARYING(255) NOT NULL,
  SURNAME CHARACTER VARYING(255) NOT NULL,
  EMPLOYEE_TITLE CHARACTER VARYING(255) NOT NULL,
  BIO CHARACTER VARYING(255) NOT NULL,
  IMAGE_NAME CHARACTER VARYING(255) NOT NULL,
  EXTENSION JSONB,
  ADDRESS_ID BIGINT,
  DEPARTMENT_ID BIGINT,
  CATEGORY_ID BIGINT,
  CONSTRAINT EMPLOYEE_PKEY PRIMARY KEY (ID),
  CONSTRAINT FKBEJTWVG9BXUS2MFFSM3SWJ3U9 FOREIGN KEY (DEPARTMENT_ID) --// Todo: Get rid of this shit dude!
      REFERENCES DEPARTMENT (ID) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
      CONSTRAINT FKBP91O1GYK9XQ5T48ZVGLAJ0ML FOREIGN KEY (CATEGORY_ID)
      REFERENCES CATEGORY (ID) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT FKGA73HDTPB67TWLR9C1I337TYT FOREIGN KEY (ADDRESS_ID)
      REFERENCES ADDRESS (ID) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);


CREATE TABLE EVENT
(
  ID UUID NOT NULL,
  TITLE CHARACTER VARYING(255),
  START_DATE TIMESTAMP NOT NULL,
  END_DATE TIMESTAMP,
  BODY TEXT,
  EXTENSION JSONB,
  DATE_PUBLISHED TIMESTAMP NOT NULL,
  WEBSITE CHARACTER VARYING(255),
  LOCATION CHARACTER VARYING(255) NOT NULL,
  EVENT_BANNER CHARACTER VARYING(255) NOT NULL,
  CONSTRAINT EVENT_PKEY PRIMARY KEY (ID)
);


CREATE TABLE PAGE_CATEGORY
(
  ID BIGINT NOT NULL,
  NAME CHARACTER VARYING(255) NOT NULL,
  CONSTRAINT PAGE_CATEGORY_PKEY PRIMARY KEY (ID)
);

ALTER TABLE IF EXISTS PAGE_CATEGORY ADD CONSTRAINT NAME UNIQUE (NAME);


CREATE TABLE NAVIGATION
(
  ID INTEGER NOT NULL,
  TITLE CHARACTER VARYING(255) NOT NULL,
  IMAGE_NAME CHARACTER VARYING(255) NOT NULL,
  DESCRIPTION CHARACTER VARYING(255),
  BODY TEXT,
  WRITER CHARACTER VARYING(255),
  ENABLED BOOLEAN,
  DATE_PUBLISHED TIMESTAMP NOT NULL,
  PAGE_CATEGORY_ID BIGINT,
  CONSTRAINT NAVIGATION_PKEY PRIMARY KEY (ID),
  CONSTRAINT FKHB84JFYON78YWMA8X22448MZV FOREIGN KEY (PAGE_CATEGORY_ID)
      REFERENCES PAGE_CATEGORY (ID) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);

ALTER TABLE IF EXISTS NAVIGATION ADD CONSTRAINT TITLE UNIQUE (TITLE);

CREATE TABLE NAVIGATION_CATEGORIES (
   NAVIGATION_ID INTEGER NOT NULL,
   PAGE_CATEGORY_ID INT8 NOT NULL,
   PRIMARY KEY (NAVIGATION_ID, PAGE_CATEGORY_ID)
);

ALTER TABLE IF EXISTS NAVIGATION_CATEGORIES ADD CONSTRAINT NAVIGATION_CATEGORIES_NAVIGATION
  FOREIGN KEY (NAVIGATION_ID) REFERENCES NAVIGATION;

ALTER TABLE IF EXISTS NAVIGATION_CATEGORIES ADD CONSTRAINT NAVIGATION_CATEGORIES_PAGE_CATEGORY
  FOREIGN KEY (PAGE_CATEGORY_ID) REFERENCES PAGE_CATEGORY;


CREATE TABLE OFFICE
(
  ID BIGINT NOT NULL,
  NAME CHARACTER VARYING(255) NOT NULL,
  ADDRESS_ID BIGINT,
  DEPARTMENT_ID BIGINT,
  CONSTRAINT OFFICE_PKEY PRIMARY KEY (ID),
  CONSTRAINT FK4FFKMQMLNYV67LD0DCTCVJSFJ FOREIGN KEY (DEPARTMENT_ID)
      REFERENCES DEPARTMENT (ID) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT FKAK81M3GKJ8XQ5T48XUFLBJ0KN FOREIGN KEY (ADDRESS_ID)
      REFERENCES ADDRESS (ID) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);


CREATE TABLE OAUTH_CLIENT_DETAILS (
  CLIENT_ID VARCHAR(255) PRIMARY KEY,
  RESOURCE_IDS VARCHAR(255),
  CLIENT_SECRET VARCHAR(255),
  SCOPE VARCHAR(255),
  AUTHORIZED_GRANT_TYPES VARCHAR(255),
  WEB_SERVER_REDIRECT_URI VARCHAR(255),
  AUTHORITIES VARCHAR(255),
  ACCESS_TOKEN_VALIDITY INTEGER,
  REFRESH_TOKEN_VALIDITY INTEGER,
  ADDITIONAL_INFORMATION VARCHAR(4096),
  AUTOAPPROVE VARCHAR(255)
);

CREATE TABLE OAUTH_CLIENT_TOKEN (
  TOKEN_ID VARCHAR(255),
  TOKEN BYTEA,
  AUTHENTICATION_ID VARCHAR(255) PRIMARY KEY,
  USER_NAME VARCHAR(255),
  CLIENT_ID VARCHAR(255)
);

CREATE TABLE OAUTH_ACCESS_TOKEN (
  TOKEN_ID VARCHAR(255),
  TOKEN BYTEA,
  AUTHENTICATION_ID VARCHAR(255) PRIMARY KEY,
  USER_NAME VARCHAR(255),
  CLIENT_ID VARCHAR(255),
  AUTHENTICATION BYTEA,
  REFRESH_TOKEN VARCHAR(255)
);

CREATE TABLE OAUTH_REFRESH_TOKEN (
  TOKEN_ID VARCHAR(255),
  TOKEN BYTEA,
  AUTHENTICATION BYTEA
);

CREATE TABLE OAUTH_CODE (
  CODE VARCHAR(255),
  AUTHENTICATION BYTEA
);

CREATE TABLE OAUTH_APPROVALS (
  USERID VARCHAR(255),
  CLIENTID VARCHAR(255),
  SCOPE VARCHAR(255),
  STATUS VARCHAR(10),
  EXPIRESAT TIMESTAMP,
  LASTMODIFIEDAT TIMESTAMP
);


CREATE TABLE AUTHORITY (
   ID  BIGSERIAL NOT NULL,
   NAME VARCHAR(255),
   PRIMARY KEY (ID)
);

ALTER TABLE IF EXISTS AUTHORITY ADD CONSTRAINT AUTHORITY_NAME UNIQUE (NAME);

CREATE TABLE USER_ (
   ID  BIGSERIAL NOT NULL,
   ACCOUNT_EXPIRED BOOLEAN,
   ACCOUNT_LOCKED BOOLEAN,
   CREDENTIALS_EXPIRED BOOLEAN,
   ENABLED BOOLEAN,
   PASSWORD VARCHAR(255),
   USER_NAME VARCHAR(255),
   PRIMARY KEY (ID)
);

ALTER TABLE IF EXISTS USER_ ADD CONSTRAINT USER_USER_NAME UNIQUE (USER_NAME);

CREATE TABLE USERS_AUTHORITIES (
   USER_ID INT8 NOT NULL,
   AUTHORITY_ID INT8 NOT NULL,
   PRIMARY KEY (USER_ID, AUTHORITY_ID)
);

ALTER TABLE IF EXISTS USERS_AUTHORITIES ADD CONSTRAINT USERS_AUTHORITIES_AUTHORITY
  FOREIGN KEY (AUTHORITY_ID) REFERENCES AUTHORITY;

ALTER TABLE IF EXISTS USERS_AUTHORITIES ADD CONSTRAINT USERS_AUTHORITIES_USER_
  FOREIGN KEY (USER_ID) REFERENCES USER_;

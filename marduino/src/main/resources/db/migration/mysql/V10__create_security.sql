-- OAUTH
CREATE TABLE oauth_client_details (
  client_id VARCHAR(255) PRIMARY KEY,
  resource_ids VARCHAR(255),
  client_secret VARCHAR(255),
  scope VARCHAR(255),
  authorized_grant_types VARCHAR(255),
  web_server_redirect_uri VARCHAR(255),
  authorities VARCHAR(255),
  access_token_validity INTEGER,
  refresh_token_validity INTEGER,
  additional_information VARCHAR(4096),
  autoapprove VARCHAR(255)
);

CREATE TABLE oauth_client_token (
  token_id VARCHAR(255),
  token blob,
  authentication_id VARCHAR(255) PRIMARY KEY,
  user_name VARCHAR(255),
  client_id VARCHAR(255)
);

CREATE TABLE oauth_access_token (
  token_id VARCHAR(255),
  token blob,
  authentication_id VARCHAR(255) PRIMARY KEY,
  user_name VARCHAR(255),
  client_id VARCHAR(255),
  authentication blob,
  refresh_token VARCHAR(255)
);

CREATE TABLE oauth_refresh_token (
  token_id VARCHAR(255),
  token blob,
  authentication blob
);

CREATE TABLE OAUTH_CODE (
  code VARCHAR(255),
  authentication blob
);


CREATE TABLE OAUTH_APPROVALS (
  userid VARCHAR(255),
  clientid VARCHAR(255),
  scope VARCHAR(255),
  status VARCHAR(10),
  expiresat TIMESTAMP,
  lastmodifiedat TIMESTAMP
);


-- Roles

CREATE TABLE authority (
   id  BIGINT NOT NULL,
   name VARCHAR(255),
   PRIMARY KEY (id)
);

ALTER TABLE authority ADD CONSTRAINT authority_name UNIQUE (NAME);

CREATE TABLE user_ (
   id  BIGINT NOT NULL,
   account_expired BOOLEAN,
   account_locked BOOLEAN,
   credentials_expired BOOLEAN,
   enabled BOOLEAN,
   password VARCHAR(255),
   user_name VARCHAR(255),
   PRIMARY KEY (id)
);

ALTER TABLE  user_ ADD CONSTRAINT user_user_name UNIQUE (user_name);

CREATE TABLE users_authorities (
   user_id INT8 NOT NULL,
   authority_id INT8 NOT NULL,
   PRIMARY KEY (user_id, authority_id)
);

ALTER TABLE users_authorities ADD CONSTRAINT users_authorities_authority
  FOREIGN KEY (authority_id) REFERENCES authority(id);

ALTER TABLE users_authorities ADD CONSTRAINT users_authorities_user_
  FOREIGN KEY (user_id) REFERENCES user_(id);

  INSERT INTO authority(id, name) VALUES (1, 'HARDWARE_WRITE');
  INSERT INTO authority(id, name) VALUES (2, 'CLIENT_READ');
  INSERT INTO authority(id, name) VALUES (3, 'CLIENT_CONFIG_WRITE');

  INSERT INTO user_(id, user_name, password, account_expired, account_locked, credentials_expired, enabled)
  VALUES (1, 'admin', /*admin1234*/'$2a$08$qvrzQZ7jJ7oy2p/msL4M0.l83Cd0jNsX6AJUitbgRXGzge4j035ha', FALSE, FALSE, FALSE, TRUE);


INSERT INTO users_authorities(user_id, authority_id) VALUES (1, 1);
INSERT INTO users_authorities(user_id, authority_id) VALUES (1, 2);
INSERT INTO users_authorities(user_id, authority_id) VALUES (1, 3);


INSERT INTO oauth_client_details(client_id, resource_ids, client_secret, scope, authorized_grant_types, authorities, access_token_validity, refresh_token_validity)
 VALUES ('spring-security-oauth2-read-client', 'resource-server-rest-api',
 /*spring-security-oauth2-read-client-password1234*/'$2a$04$WGq2P9egiOYoOFemBRfsiO9qTcyJtNRnPKNBl5tokP7IP.eZn93km',
 'read', 'password,authorization_code,refresh_token,implicit', 'USER', 10800, 2592000);

INSERT INTO oauth_client_details(client_id, resource_ids, client_secret, scope, authorized_grant_types, authorities, access_token_validity, refresh_token_validity)
 VALUES ('spring-security-oauth2-read-write-client', 'resource-server-rest-api',
 /*spring-security-oauth2-read-write-client-password1234*/'$2a$04$soeOR.QFmClXeFIrhJVLWOQxfHjsJLSpWrU1iGxcMGdu.a5hvfY4W',
 'read,write', 'password,authorization_code,refresh_token,implicit', 'USER', 10800, 2592000);


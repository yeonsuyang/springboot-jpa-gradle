create table IF NOT EXISTS MEMBER (
                                     ID VARCHAR(255) NOT NULL,
                                     NAME VARCHAR(255),
                                     AGE INTEGER,
                                     PRIMARY KEY(ID)
                                   )






/* create table IF NOT EXISTS oauth_client_details (
                                                    client_id VARCHAR(256) PRIMARY KEY,
                                                    resource_ids VARCHAR(256),
                                                    client_secret VARCHAR(256),
                                                    scope VARCHAR(256),
                                                    authorized_grant_types VARCHAR(256),
                                                    web_server_redirect_uri VARCHAR(256),
                                                    authorities VARCHAR(256),
                                                    access_token_validity INTEGER,
                                                    refresh_token_validity INTEGER,
                                                    additional_information VARCHAR(4096),
                                                    autoapprove VARCHAR(256)
);

-- insert into oauth_client_details(client_id, resource_ids,client_secret,scope,authorized_grant_types,web_server_redirect_uri,authorities,access_token_validity,refresh_token_validity,additional_information,autoapprove)
--values('test_auth',null,'{bcrypt}$2a$10$mE9TLO.qe6F2ixBnw8SGmOBGI.ASBAyaqHm.vcYYkM4ZUkNVH68Qi','read,write','authorization_code,refresh_token','http://localhost:8080/oauth2/callback','ROLE_USER',36000,50000,null,null);

--insert into user(uid,name,password)values('ys','yeonsu','{bcrypt}$2a$10$LepYS2Dj4uZdvrT3hEoAh.HQ.PYkatYIIhJKdbdxbA1t12ACSBbm6');
-- insert into user_roles values('ys','ROLE_USER');



create table IF NOT EXISTS oauth_client_token (
                                                  token_id VARCHAR(256),
                                                  token LONGVARBINARY,
                                                  authentication_id VARCHAR(256) PRIMARY KEY,
                                                  user_name VARCHAR(256),
                                                  client_id VARCHAR(256)
);

create table IF NOT EXISTS oauth_access_token (
                                                  token_id VARCHAR(256),
                                                  token LONGVARBINARY,
                                                  authentication_id VARCHAR(256) PRIMARY KEY,
                                                  user_name VARCHAR(256),
                                                  client_id VARCHAR(256),
                                                  authentication LONGVARBINARY,
                                                  refresh_token VARCHAR(256)
);

create table IF NOT EXISTS oauth_refresh_token (
                                                   token_id VARCHAR(256),
                                                   token LONGVARBINARY,
                                                   authentication LONGVARBINARY
);

create table IF NOT EXISTS oauth_code (
                                          code VARCHAR(256), authentication LONGVARBINARY
);

create table IF NOT EXISTS oauth_approvals (
                                               userId VARCHAR(256),
                                               clientId VARCHAR(256),
                                               scope VARCHAR(256),
                                               status VARCHAR(10),
                                               expiresAt TIMESTAMP,
                                               lastModifiedAt TIMESTAMP
); */
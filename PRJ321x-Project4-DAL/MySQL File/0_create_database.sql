CREATE DATABASE IF NOT EXISTS prj321x_project4;

USE prj321x_project4;
 
CREATE TABLE user_table(
    user_id int not null auto_increment,
    user_name varchar(60) not null,
    user_password varchar(255) not null,

    PRIMARY KEY (user_id)
);

CREATE TABLE post_table(
    post_id int not null auto_increment,
    post_title varchar(255) not null,
    post_author varchar(255) not null,
    post_summary varchar(500) not null,
    post_detail text not null,
    post_create_date datetime not null,
    post_is_publish boolean,
  
    PRIMARY KEY (post_id)
);
 
INSERT INTO  user_table(user_name, user_password)
VALUES ('operator',  'operator#A1');

INSERT INTO  user_table(user_name, user_password)
VALUES ('operator1',  'operator#A1');

INSERT INTO  user_table(user_name, user_password)
VALUES ('operator2',  'operator#A1');

INSERT INTO  user_table(user_name, user_password)
VALUES ('operator3',  'operator#A1');
 
INSERT INTO  post_table(post_title,
post_author,
post_summary,
post_detail,
post_create_date,
post_is_publish)
VALUES ('post1', 'operator','post1','post1','2020-01-01',1);
 
INSERT INTO  post_table(
post_title,
post_author,
post_summary,
post_detail,
post_create_date,
post_is_publish)
VALUES ('post2', 'operator1','post2','post2','2020-03-01',0);


INSERT INTO  post_table(post_title,
post_author,
post_summary,
post_detail,
post_create_date,
post_is_publish)
VALUES ('post3', 'operator2','post3','post3','2020-02-20',0);


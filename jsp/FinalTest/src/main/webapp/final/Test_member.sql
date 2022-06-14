CREATE TABLE IF NOT EXISTS Test_member(
   id VARCHAR(10) NOT NULL,
   pass VARCHAR(20),
   name  VARCHAR(20),
   email VARCHAR(20),
   PRIMARY KEY (id)
);

select * from Test_member;
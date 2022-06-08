DROP TABLE member;
CREATE TABLE IF NOT EXISTS member(
	id VARCHAR(20) NOT NULL,
	passwd VARCHAR(20),
	name VARCHAR(30),
	PRIMARY KEY (id)
);

desc member;

SELECT * FROM member;
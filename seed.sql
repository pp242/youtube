DROP TABLE IF EXISTS video;


CREATE TABLE video (
	id SERIAL PRIMARY KEY,
	title VARCHAR,
	body TEXT,
	link TEXT




);


INSERT INTO video (title, body, link) VALUES ('Marvel Punisher','After exacting revenge on those responsible for the death of his wife and children, Frank Castle uncovers a conspiracy that runs far deeper than New York’s criminal underworld.','https://www.youtube.com/embed/lIY6zFL95hE');
INSERT INTO video (title, body, link) VALUES ('Post 1','Body text 1','link code');
INSERT INTO video (title, body, link) VALUES ('Post 1','Body text 1','link code');
INSERT INTO video (title, body, link) VALUES ('Post 1','Body text 1','link code');
INSERT INTO video (title, body, link) VALUES ('Post 1','Body text 1','link code');


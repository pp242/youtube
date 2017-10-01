DROP TABLE IF EXISTS video;


CREATE TABLE video (
	id SERIAL PRIMARY KEY,
	title VARCHAR,
	body TEXT,
	link TEXT,
	genre VARCHAR



);

INSERT INTO video (title, body, link, genre) VALUES ('Marvel Punisher','After exacting revenge on those responsible for the death of his wife and children, Frank Castle uncovers a conspiracy that runs far deeper than New York’s criminal underworld.','https://www.youtube.com/embed/lIY6zFL95hE','action');
INSERT INTO video (title, body, link, genre) VALUES ('Thor: Ragnarok International Trailer #3 (2017) | Movieclips Trailers','Thor: Ragnarok International Trailer #3 (2017): Check out the new trailer starring Tom Hiddleston, Chris Hemsworth, Cate Blanchett, and Idris Elba! Be the first to watch, comment, and share trailers and movie teasers/clips dropping soon @MovieclipsTrailers. ','https://www.youtube.com/embed/2IfUrALaZ8k','Film & Animation');
INSERT INTO video (title, body, link, genre) VALUES ('Honest Trailers - Wonder Woman','If we re being Honest theres no way this trailer pleases all the fans no matter how good or bad it is. Im sure this superhero can relate. - It s Wonder Woman!','https://www.youtube.com/embed/Eef-1HLKgoQ','Film & Animation');
INSERT INTO video (title, body, link, genre) VALUES ('Captain America: Civil War Trailer - Budget Videos','Captain America: Civil War Budget Trailer! We love making these videos, and we hope you enjoy watching them. If you like what you see, please subscribe to our channel for more content!','https://www.youtube.com/embed/SBU6QA_i5HQ','comedy');


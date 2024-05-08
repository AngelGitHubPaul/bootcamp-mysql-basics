INSERT INTO users (email, password, datetime_created) VALUES ("johnsmith@gmail.com", "passwordA", "2021-01-01 01:00:00");
INSERT INTO users (email, password, datetime_created) VALUES ("juandelacruz@gmail.com", "passwordB", "2021-01-01 02:00:00");
INSERT INTO users (email, password, datetime_created) VALUES ("janesmith@gmail.com", "passwordC", "2021-01-01 03:00:00");
INSERT INTO users (email, password, datetime_created) VALUES ("mariadelacruz@gmail.com", "passwordD", "2021-01-01 04:00:00");
INSERT INTO users (email, password, datetime_created) VALUES ("johndoe@gmail.com", "passwordE", "2021-01-01 05:00:00");

INSERT INTO posts (author_id, title, content, datetime_posted) VALUES (1, "First Code", "Hello World!", "2021-01-02 01:00:00");
INSERT INTO posts (author_id, title, content, datetime_posted) VALUES (1, "Second Code", "Hello Earth!", "2021-01-02 02:00:00");
INSERT INTO posts (author_id, title, content, datetime_posted) VALUES (2, "Third Code", "Welcome to Mars!", "2021-01-02 03:00:00");
INSERT INTO posts (author_id, title, content, datetime_posted) VALUES (4, "Fourth Code", "Bye bye solar system!", "2021-01-02 04:00:00");

INSERT INTO post_likes (post_id, user_id, datetime_liked) VALUES (1, 1, "2021-01-01 05:00:00");
INSERT INTO post_likes (post_id, user_id, datetime_liked) VALUES (3, 1, "2021-01-03 04:00:00");
INSERT INTO post_likes (post_id, user_id, datetime_liked) VALUES (3, 2, "2021-01-03 03:00:00");
INSERT INTO post_likes (post_id, user_id, datetime_liked) VALUES (4, 2, "2021-01-04 02:00:00");
INSERT INTO post_likes (post_id, user_id, datetime_liked) VALUES (3, 4, "2021-01-09 01:00:00");

INSERT INTO post_comments (post_id, user_id, content, datetime_commented) VALUES (1, 1, "I wish I could visit mars.", "2021-01-01 01:00:00");
INSERT INTO post_comments (post_id, user_id, content, datetime_commented) VALUES (3, 1, "This is what I'll say when I become an astronaut", "2021-01-05 01:00:00");

SELECT * FROM posts WHERE author_id = 1;

SELECT email, datetime_created FROM users;

SELECT * FROM post_likes WHERE post_id = 3;

SELECT * FROM post_likes WHERE post_id = 4;

UPDATE posts SET content = "Hello to the people of the Earth!" WHERE id = 2;

UPDATE post_comments SET content = "I wish I could visit all the planets" WHERE id = 1;

DELETE FROM users WHERE email = "johndoe@gmail.com";

DELETE FROM post_likes WHERE id = 2;
CREATE TABLE posts (
    id INT DEFAULT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    body  VARCHAR(1000000) NOT NULL,
    created_at TIMESTAMP,
<<<<<<< HEAD
    updated_at TIMESTAMP,
    user_id INT
=======
    updated_at TIMESTAMP
>>>>>>> FETCH_HEAD
);

CREATE TABLE comments (
    id INT DEFAULT NULL AUTO_INCREMENT PRIMARY KEY,
    body  VARCHAR(1000000) NOT NULL,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
<<<<<<< HEAD
    post_id INT,
    user_id INT
);

CREATE TABLE users (
  id INT DEFAULT NULL AUTO_INCREMENT PRIMARY KEY,
  email  VARCHAR(1000000) NOT NULL,
  login  VARCHAR(1000000) NOT NULL,
  displayName  VARCHAR(1000000) NOT NULL
);

INSERT  INTO  users (email, login, displayName) VALUES ('','','Guest')
=======
    post_id INT
);
>>>>>>> FETCH_HEAD

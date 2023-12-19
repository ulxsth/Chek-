CREATE DATABASE cheki;
CREATE USER 'user'@'%' IDENTIFIED BY 'password';
GRANT ALL ON myapp.* TO 'user'@'%';

USE cheki;

CREATE TABLE users (
  id VARCHAR(16) PRIMARY KEY,
  name VARCHAR(255),
  description VARCHAR(255)
);

CREATE TABLE user_cards (
  id VARCHAR(16) PRIMARY KEY,
  user_id VARCHAR(16),

  FOREIGN KEY (user_id) REFERENCES users(id)
);

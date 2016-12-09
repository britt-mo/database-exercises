USE dating;

CREATE TABLE users(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar (25) NOT NULL,
  gender ENUM('Male', 'Female', 'Non-Binary', 'Prefer to disclose later'),
  age char(2),
  location varchar(35),
  occupation VARCHAR(20),
  smoker ENUM('y', 'n'),
  drinker ENUM('y','n'),
  Religion VARCHAR(25),
  ethnicity VARCHAR(25),
  hair_color VARCHAR(15),
  eye_color VARCHAR(15),
  PRIMARY KEY(id)
);

CREATE TABLE messages(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  message VARCHAR(500) NOT NULL,
  recipient_id INT UNSIGNED DEFAULT NULL,
  sender_id INT UNSIGNED DEFAULT NULL,
  FOREIGN KEY (recipient_id) REFERENCES users (id),
  FOREIGN KEY (sender_id) REFERENCES users (id),
  PRIMARY KEY (id)
);


CREATE TABLE connections(
  id INT UNSIGNED not null AUTO_INCREMENT,
  interested_user INT UNSIGNED DEFAULT NULL,
  interested_in INT UNSIGNED DEFAULT NULL,
  match_made ENUM('0', '1', '2') DEFAULT '0',
  FOREIGN KEY (interested_user) REFERENCES users (id),
  FOREIGN KEY (interested_in) REFERENCES users (id),
  PRIMARY KEY (id)
);

CREATE TABLE interests(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  interest VARCHAR(15),
  PRIMARY KEY (id)
);

CREATE TABLE user_interests(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT UNSIGNED,
  interest_id INT UNSIGNED,
  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (interest_id) REFERENCES interests (id),
  PRIMARY KEY (id)
);

CREATE TABLE user_looking_for_interests(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT UNSIGNED,
  interest_id INT UNSIGNED,
  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (interest_id) REFERENCES interests (id),
  PRIMARY KEY (id)
);

CREATE TABLE attributes(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  attribute VARCHAR(20),
  PRIMARY KEY (id)
);

CREATE TABLE user_attributes(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT UNSIGNED,
  attribute_id INT UNSIGNED,
  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (attribute_id) REFERENCES attributes (id),
  PRIMARY KEY (id)
);

CREATE TABLE user_looking_for_attributes(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT UNSIGNED,
  attribute_id INT UNSIGNED,
  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (attribute_id) REFERENCES attributes (id),
  PRIMARY KEY (id)
);
CREATE TABLE users (
	user_id int  PRIMARY KEY,
	email VARCHAR ( 255 ) UNIQUE NOT NULL,
	password VARCHAR ( 50 ) NOT NULL,
	firstname VARCHAR ( 50 ) NOT NULL,
    lastname VARCHAR ( 50 ) NOT NULL,
	isAdmin BOOLEAN NOT NULL
);
CREATE TABLE menu(
    menu_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    image VARCHAR(255) NOT NULL,
    user_id int,
  CONSTRAINT fk_menu FOREIGN KEY(user_id) REFERENCES users(user_id)
);
CREATE TABLE menu_date(
   menu_date_id INT PRIMARY KEY,
   date DATE NOT NULL,
   menu_id INT,
 CONSTRAINT fk_menu_date FOREIGN KEY(menu_id) REFERENCES menu(menu_id)
);


CREATE TABLE users_menu(
	menu_date_id int,
	user_id int,
	requirements VARCHAR ( 255 ),
	PRIMARY KEY(menu_date_id, user_id),
    CONSTRAINT fk_users_menu
	FOREIGN KEY (menu_date_id) REFERENCES menu_date (menu_date_id),
	FOREIGN KEY (user_id) REFERENCES users (user_id)
);

ALTER TABLE menu
ADD COLUMN active BOOLEAN;

CREATE SEQUENCE IF NOT EXISTS user_id_seq;
ALTER TABLE users ALTER COLUMN user_id SET DEFAULT nextval('user_id_seq');
ALTER SEQUENCE user_id_seq owned by users.user_id;

CREATE SEQUENCE IF NOT EXISTS menu_id_seq;
ALTER TABLE menu ALTER COLUMN menu_id SET DEFAULT nextval('menu_id_seq');
ALTER SEQUENCE menu_id_seq owned by menu.menu_id;

CREATE SEQUENCE IF NOT EXISTS menu_date_id_seq;
ALTER TABLE menu_date ALTER COLUMN menu_date_id  SET DEFAULT nextval('menu_date_id_seq');
ALTER SEQUENCE menu_date_id_seq owned by menu_date.menu_date_id;

ALTER TABLE users
ADD COLUMN active BOOLEAN;
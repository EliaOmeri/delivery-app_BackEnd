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

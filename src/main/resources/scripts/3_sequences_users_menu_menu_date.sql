CREATE SEQUENCE IF NOT EXISTS user_id_seq;
ALTER TABLE users ALTER COLUMN user_id SET DEFAULT nextval('user_id_seq');
ALTER SEQUENCE user_id_seq owned by users.user_id;

CREATE SEQUENCE IF NOT EXISTS menu_id_seq;
ALTER TABLE menu ALTER COLUMN menu_id SET DEFAULT nextval('menu_id_seq');
ALTER SEQUENCE menu_id_seq owned by menu.menu_id;

CREATE SEQUENCE IF NOT EXISTS menu_date_id_seq;
ALTER TABLE menu_date ALTER COLUMN menu_date_id  SET DEFAULT nextval('menu_date_id_seq');
ALTER SEQUENCE menu_date_id_seq owned by menu_date.menu_date_id;

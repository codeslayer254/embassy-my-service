INSERT INTO COMPANY(ID, NAME) VALUES (1, 'Pepsi');
INSERT INTO COMPANY(ID, NAME) VALUES (2, 'Coca Cola');
INSERT INTO COMPANY(ID, NAME) VALUES (3, 'Sprite');


INSERT INTO CAR(ID, REGISTRATION_NUMBER, COMPANY_ID) VALUES (1, 'XYZ10ABC', 1);
INSERT INTO CAR(ID, REGISTRATION_NUMBER, COMPANY_ID) VALUES (2, 'XYZ11ABC', 1);
INSERT INTO CAR(ID, REGISTRATION_NUMBER, COMPANY_ID) VALUES (3, 'XYZ12ABC', 1);
INSERT INTO CAR(ID, REGISTRATION_NUMBER, COMPANY_ID) VALUES (4, 'XYZ13ABC', 2);


INSERT INTO ADDRESS(ID, HOUSE_NUMBER, STREET, ZIP_CODE) VALUES (1, 1, 'Street X', '12-341');
INSERT INTO ADDRESS(ID, HOUSE_NUMBER, STREET, ZIP_CODE) VALUES (2, 2, 'Street Y', '12-342');
INSERT INTO ADDRESS(ID, HOUSE_NUMBER, STREET, ZIP_CODE) VALUES (3, 3, 'Street Z', '12-343');
INSERT INTO ADDRESS(ID, HOUSE_NUMBER, STREET, ZIP_CODE) VALUES (4, 4, 'Street XX', '12-344');
INSERT INTO ADDRESS(ID, HOUSE_NUMBER, STREET, ZIP_CODE) VALUES (5, 5, 'Street YY', '12-345');
INSERT INTO ADDRESS(ID, HOUSE_NUMBER, STREET, ZIP_CODE) VALUES (6, 6, 'Street ZZ', '12-346');
INSERT INTO ADDRESS(ID, HOUSE_NUMBER, STREET, ZIP_CODE) VALUES (7, 7, 'Street XXX', '12-347');

INSERT INTO DEPARTMENT(ID, NAME, COMPANY_ID) VALUES (1, 'Sales & Marketing', 1);
INSERT INTO DEPARTMENT(ID, NAME, COMPANY_ID) VALUES (2, 'Research & Development', 1);
INSERT INTO DEPARTMENT(ID, NAME, COMPANY_ID) VALUES (3, 'Administration', 1);
INSERT INTO DEPARTMENT(ID, NAME, COMPANY_ID) VALUES (4, 'Human Resources', 2);
INSERT INTO DEPARTMENT(ID, NAME, COMPANY_ID) VALUES (5, 'Sales & Marketing', 3);

INSERT INTO CATEGORY(ID, NAME) VALUES (1, 'DIPLOMATIC');
INSERT INTO CATEGORY(ID, NAME) VALUES (2, 'LOCAL STAFF');

INSERT INTO EMPLOYEE(ID, TITLE, NAME, SURNAME, EMPLOYEE_TITLE, BIO, IMAGE_NAME, ADDRESS_ID, DEPARTMENT_ID,  CATEGORY_ID, EXTENSION)
VALUES (uuid_generate_v4(), 'Ms','Dorcas', 'Rukunga', 'CHARGÉ D’AFFAIRES', 'Chargé D’Affaires a.i (Malaysia, The Philippines, Indonesia & Brunei)', 'images/staff/dorcas.jpg', 1, 1, 1, '{"data":{ "facebook": "Fanta Orange", "instagram": "Coca-Cola", "linkedin": "Bottle", "email": "1.5l"}}');

INSERT INTO EMPLOYEE(ID, TITLE, NAME, SURNAME, EMPLOYEE_TITLE, BIO, IMAGE_NAME, ADDRESS_ID, DEPARTMENT_ID,  CATEGORY_ID, EXTENSION)
VALUES (uuid_generate_v4(), 'Ms','Mutero', 'Mutero', 'FINANCIAL ATTACHÉ', 'Financial Affairs', 'images/staff/Hanna-300x300.jpg', 1, 1, 1, '{"data":{ "facebook": "Fanta Orange", "instagram": "Coca-Cola", "linkedin": "Bottle", "email": "1.5l"}}');

INSERT INTO EMPLOYEE(ID, TITLE, NAME, SURNAME, EMPLOYEE_TITLE, BIO, IMAGE_NAME, ADDRESS_ID, DEPARTMENT_ID,  CATEGORY_ID, EXTENSION)
VALUES (uuid_generate_v4(), 'Ms','Ruth', 'Kitonyi', 'FIRST SECRETARY', 'First Secretary', 'https://res.cloudinary.com/dpnxlc0jh/image/upload/v1541939384/ruth_khc_kl_mi8qd3.png', 1, 1, 1, '{"data":{ "facebook": "Fanta Orange", "instagram": "Coca-Cola", "linkedin": "Bottle", "email": "1.5l"}}');

INSERT INTO EMPLOYEE(ID, TITLE, NAME, SURNAME, EMPLOYEE_TITLE, BIO, IMAGE_NAME, ADDRESS_ID, DEPARTMENT_ID,  CATEGORY_ID, EXTENSION)
VALUES (uuid_generate_v4(), 'Ms','Fridah', 'Moraa', 'ADMIN ATTACHÈ', 'Administration', 'https://res.cloudinary.com/dpnxlc0jh/image/upload/v1541939384/fridah_khc_kl_f9msdf.png  ', 1, 1, 1, '{"data":{ "facebook": "Fanta Orange", "instagram": "Coca-Cola", "linkedin": "Bottle", "email": "1.5l"}}');
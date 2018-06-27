ALTER TABLE products CHANGE id objectID INT(11) NOT NULL AUTO_INCREMENT;
ALTER products FOREIGN KEY (objectID) REFERENCES products;
ALTER TABLE products ADD FOREIGN KEY (objectID) REFERENCES products(id);

ALTER TABLE users ADD l_name VARCHAR(255) AFTER role_id;
ALTER TABLE users ADD f_name VARCHAR(255) AFTER l_name;
ALTER TABLE users ADD m_name VARCHAR(255) AFTER f_name;
ALTER TABLE users ADD username VARCHAR(255) AFTER m_name;

--customers
ALTER TABLE products ADD objectID INT(10) UNSIGNED;
CREATE TABLE customers (
id INT(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
lname VARCHAR(255),
fname VARCHAR(255),
mname VARCHAR(255),
gender VARCHAR(10),
dob VARCHAR(255),
address VARCHAR(255),
contact VARCHAR(255),
email VARCHAR(255)
);


CREATE TABLE reservations (
id INT(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
flag int(11),
customer_id int(11),
rooms int(11),
checkin VARCHAR(10),
checkout VARCHAR(255),
barcode VARCHAR(255),
status tinyint(1),
created_at TIMESTAMP,
updated_at TIMESTAMP
);

CREATE TABLE rooms (
id INT(10) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
type VARCHAR(255),
price VARCHAR(255),
created_at TIMESTAMP,
updated_at TIMESTAMP
);
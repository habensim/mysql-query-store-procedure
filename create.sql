CREATE TABLE provinces(
	id INT PRIMARY KEY,
	name VARCHAR(255)
);
CREATE TABLE users(
	id INT PRIMARY KEY,
            email VARCHAR(255),
	name VARCHAR(255),
	birth_date DATE,
	province_id INT,
	FOREIGN KEY (province_id) REFERENCES provinces(id)
);
CREATE TABLE borrowers(
	id INT PRIMARY KEY,
	user_id INT,
	FOREIGN KEY (user_id) REFERENCES users(id)
);
CREATE TABLE statuses(
	id INT PRIMARY KEY,
	name VARCHAR(255)
);
CREATE TABLE loans(
	id INT PRIMARY KEY,
	borrower_id INT,
	FOREIGN KEY (borrower_id) REFERENCES borrowers(id),
	status_id INT,
	FOREIGN KEY (status_id) REFERENCES statuses(id),
	disburse_date DATE
);
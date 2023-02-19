CREATE VIEW view_loans AS
SELECT 
	loans.id,
	users.email,
	users.name,
	provinces.name AS province_name,
	statuses.name AS status_name,
	loans.disburse_date
FROM loans
INNER JOIN borrowers ON loans.borrower_id = borrowers.id 
INNER JOIN users ON borrowers.id = users.id 
INNER JOIN provinces ON users.province_id = provinces.id 
INNER JOIN statuses ON loans.status_id = statuses.id;

SELECT id, email, name, province_name, status_name, disburse_date FROM view_loans;


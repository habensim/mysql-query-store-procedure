CREATE PROCEDURE get_unique_users_by_provinsi_name(IN from_date DATE, IN to_date DATE)
BEGIN
	SELECT provinces.name,
		COUNT(DISTINCT users.id) AS unique_users
	FROM users
	INNER JOIN borrowers ON users.id = borrowers.user_id 
	INNER JOIN loans ON borrowers.id = loans.borrower_id 
	INNER JOIN statuses ON loans.status_id = statuses.id
	INNER JOIN provinces ON users.province_id = provinces.id
	WHERE loans.disburse_date BETWEEN from_date AND to_date
	GROUP BY provinces.name;
END

CALL get_unique_users_by_provinsi_name('2022-01-01', '2023-02-18');
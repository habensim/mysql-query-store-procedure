CREATE PROCEDURE get_unique_users_by_age_date_and_status_loan(IN from_date DATE, IN to_date DATE)
BEGIN
	SELECT
		CASE 
			WHEN TIMESTAMPDIFF(YEAR, users.birth_date, CURDATE()) < 21 THEN '< 21 tahun'
			WHEN TIMESTAMPDIFF(YEAR, users.birth_date, CURDATE()) BETWEEN 21 AND 40 THEN '21 - 40 tahun'
			ELSE '> 40 tahun'
		END AS age,
		COUNT(DISTINCT users.id) as JumlahUser
	FROM users
	INNER JOIN borrowers ON users.id = borrowers.user_id 
	INNER JOIN loans ON borrowers.id = loans.borrower_id 
	WHERE loans.disburse_date BETWEEN from_date AND to_date
	AND loans.status_id IN (SELECT id FROM statuses WHERE name IN ('Disbursed', 'Completed'))
	GROUP BY age;
END


CALL get_unique_users_by_age_date_and_status_loan('2022-01-01', '2023-02-18');
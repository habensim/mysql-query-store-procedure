INSERT INTO provinces (id, name)
	VALUES (1, 'Nanggroe Aceh Darussalam'),
		   (2, 'Sumatera Utara'),
	       (3, 'Sumatera Selatan'),
		   (4, 'Sumatera Barat'),
		   (5, 'Bengkulu'),
	       (6, 'Riau'),
		   (7, 'Kepulauan Riau'),
		   (8, 'Jambi'),
		   (9, 'Lampung'),
		   (10, 'Bangka Belitung');

INSERT INTO statuses (id, name)
	VALUES (111, 'Waiting Approval'),
		   (222, 'Disbursed'),
           (333, 'Completed');

INSERT INTO users(id, email, name, birth_date, province_id)
VALUES (1, 'bambang@gmail.com', 'Bambang Gentolet', '1980-02-03', 1),
	   (2, 'cokicoki@gmail.com', 'Coki Coki', '1990-04-05', 2),
	   (3, 'bokir@gmail.com', 'Bokir Hidayat', '2000-06-07', 3),
	   (4, 'parulian@yahoo.com', 'Parulian Manurung', '2002-01-12', 5),
	   (5, 'manuela@hotmail.com','Manuela Mercedes', '2005-03-15', 4);

INSERT INTO borrowers(id, user_id)
VALUES (1, 1),
	   (2, 2),
	   (3, 3),
	   (4, 4),
	   (5, 5);

INSERT INTO loans(id, borrower_id, status_id, disburse_date)
VALUES (1, 1, 111, '2023-01-13'),
	   (2, 1, 222, '2023-01-14'),
	   (3, 3, 111, '2023-01-15'),
	   (4, 3, 222, '2023-01-16'),
	   (5, 3, 333, '2023-01-16'),
	   (6, 2, 333, '2023-01-17');

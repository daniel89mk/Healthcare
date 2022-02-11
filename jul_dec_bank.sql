CREATE TABLE jul_to_dec(
	payer_name VARCHAR,
	trans_number INT,
	acct_number INT,
	acct_type VARCHAR,
	acct_name VARCHAR,
	post_date DATE,
	amount FLOAT,
	description VARCHAR,
	type VARCHAR,
	text VARCHAR
);


SELECT * FROM jul_to_dec_weekly;

SELECT payer_name, date_trunc('week', post_date::date) AS weekly, SUM(amount) 
INTO jul_to_dec_weekly
FROM jul_to_dec
GROUP BY weekly, payer_name
ORDER BY weekly;


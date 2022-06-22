USE bank;
SELECT * FROM account;
SELECT * FROM bank.card; 
SELECT * FROM bank.disp;

SELECT * FROM bank.order
WHERE amount > 10000;

SELECT * FROM bank.order
WHERE k_symbol = 'SIPO';

SELECT account_id, amount, k_symbol FROM bank.order
WHERE k_symbol = 'SIPO';

SELECT account_id AS 'Account', amount, k_symbol as 'Type of Payment' FROM bank.order
WHERE (k_symbol = 'SIPO') AND (amount >  1000);

# always put a comma inbetween listing columns
SELECT account_id as 'Account', amount, k_symbol AS 'Type of Payment' FROM bank.order
WHERE (k_symbol IN ('SIPO','LEASING','UVER')) AND (amount > 1000);

SELECT account_id AS 'Account', amount, k_symbol AS 'Type of Payment' FROM bank.order
WHERE (k_symbol = 'SIPO') AND NOT (amount > 1000); 

SELECT * FROM bank.loan;

SELECT *, amount-payments AS balance
FROM bank.loan;

# '' for 
SELECT *, amount-payments AS balance, round((amount-payments)/1000,2) AS 'balance in thousands'
FROM bank.loan;

SELECT * FROM bank.account
LIMIT 10;

#10 newest accounts 
SELECT * FROM bank.account
ORDER BY account_id DESC
LIMIT 10;

SELECT DISTINCT frequency FROM bank.account;

SELECT * from bank.district;

SELECT A2 AS district_name, A11 AS average_salary
FROM bank.district
WHERE A11> 10000;

# Activity1 2.05 No.
SELECT *
FROM card 
WHERE type = 'junior' 
ORDER BY card_id ASC
LIMIT 10;

SELECT loan_id, account_id, (amount-payments) AS debt FROM loan
WHERE status = '8';
select count(*) from loan;
-- hit return 20 times - then start on exercise 


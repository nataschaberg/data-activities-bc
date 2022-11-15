USE bank;

/*# 2.07 Activity 3
Keep using the `bank` database.
1. Find the districts with more than 100 clients.
2. Find the transactions (type, operation) with a mean amount greater than 10000.
*/
SELECT district_id, COUNT(*) AS num_clients_per_distr
  FROM client
 GROUP BY district_id
HAVING num_clients_per_distr > 100
 ORDER BY num_clients_per_distr DESC;

SELECT type, operation, ROUND(AVG(amount), 2) AS mean_amount
  FROM trans
 GROUP BY type, operation
HAVING mean_amount > 10000;
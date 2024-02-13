SELECT 
    address,
    CAST(ROUND(MAX(age) - (MIN(age::numeric) / MAX(age)), 2) AS float) AS formula,
    CAST(ROUND(AVG(age), 2) AS float) AS average,
    ROUND(MAX(age) - (MIN(age::numeric) / MAX(age)), 2) > ROUND(AVG(age), 2) AS comparison
FROM person
GROUP BY address
ORDER BY address;

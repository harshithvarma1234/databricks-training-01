-- Q1
-- Extract numeric characters at the beginning of mixed_value

SELECT
    mixed_value,
    REGEXP_SUBSTR(mixed_value, '^[0-9]+') AS extracted_value
FROM regex_practice;


-- Q2
-- Extract numeric characters at the end of mixed_value

SELECT
    mixed_value,
    REGEXP_SUBSTR(mixed_value, '[0-9]+$') AS extracted_value
FROM regex_practice;


-- Q3
-- Extract first single character from mixed_value

SELECT
    mixed_value,
    REGEXP_SUBSTR(mixed_value, '^.') AS first_character
FROM regex_practice;


-- Q4
-- Extract last single character from mixed_value

SELECT
    mixed_value,
    REGEXP_SUBSTR(mixed_value, '.$') AS last_character
FROM regex_practice;


-- Q5
-- Extract exactly two consecutive numeric characters

SELECT
    mixed_value,
    REGEXP_SUBSTR(mixed_value, '[0-9]{2}') AS two_digits
FROM regex_practice;


-- Q6
-- Extract exactly one numeric character

SELECT
    mixed_value,
    REGEXP_SUBSTR(mixed_value, '[0-9]') AS single_digit
FROM regex_practice;


-- Q7
-- Extract country code from phone number

SELECT
    phone,
    REGEXP_SUBSTR(phone, '[0-9]+') AS country_code
FROM regex_practice;


-- Q8
-- Extract numeric portion between alphabetic characters

SELECT
    mixed_value,
    REGEXP_SUBSTR(mixed_value, '[0-9]+') AS numeric_part
FROM regex_practice;


-- Q9
-- Extract text before @ symbol in email

SELECT
    email,
    REGEXP_SUBSTR(email, '^[^@]+') AS username
FROM regex_practice;


-- Q10
-- Extract text after @ symbol including domain

SELECT
    email,
    REGEXP_SUBSTR(email, '@(.+)$') AS domain_text
FROM regex_practice;


-- Q11
-- Extract domain name without @ symbol

SELECT
    email,
    REGEXP_SUBSTR(email, '[^@]+$') AS domain_name
FROM regex_practice;


-- Q12
-- Extract text after last dot in email

SELECT
    email,
    REGEXP_SUBSTR(email, '[^.]+$') AS extension
FROM regex_practice;


-- Q13
-- Extract continuous alphabetic characters

SELECT
    mixed_value,
    REGEXP_SUBSTR(mixed_value, '[A-Za-z]+') AS alphabets
FROM regex_practice;


-- Q14
-- Extract continuous numeric characters

SELECT
    mixed_value,
    REGEXP_SUBSTR(mixed_value, '[0-9]+') AS numbers
FROM regex_practice;


-- Q15
-- Extract first three characters from full_text

SELECT
    full_text,
    REGEXP_SUBSTR(full_text, '^...') AS first_three
FROM regex_practice;


-- Q16
-- Extract last two characters from full_text

SELECT
    full_text,
    REGEXP_SUBSTR(full_text, '..$') AS last_two
FROM regex_practice;


-- Q17
-- Extract employee number between prefix and underscore

SELECT
    full_text,
    REGEXP_SUBSTR(full_text, '[0-9]+') AS employee_number
FROM regex_practice;


-- Q18
-- Extract country code at end of full_text

SELECT
    full_text,
    REGEXP_SUBSTR(full_text, '[0-9]+$') AS country_code
FROM regex_practice;


-- Q19
-- Extract alphabetic text between underscores

SELECT
    full_text,
    REGEXP_SUBSTR(full_text, '_[A-Za-z]+_') AS middle_text
FROM regex_practice;


-- Q20
-- Extract numeric characters after plus sign in phone

SELECT
    phone,
    REGEXP_SUBSTR(phone, '[0-9]+') AS country_code
FROM regex_practice;
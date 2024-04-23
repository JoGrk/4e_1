ALTER TABLE my_contacts
ADD State char(2);

ALTER TABLE my_contacts
ADD City varchar(255);

SELECT
    location,
    RIGHT(location, 2) as State,
    substring_index(location,',',1) as City
FROM my_contacts;

UPDATE my_contacts 
    SET State=RIGHT(location, 2), 
    City=substring_index(location,',',1);

ALTER TABLE my_contacts
ADD i1 varchar(255), 
ADD i2 varchar(255),
ADD i3 varchar(255);

UPDATE my_contacts 
    SET i1=substring_index(interests,',',1);

SELECT 
    trim(substr(interests,length(i1)+2))
FROM my_contacts;

UPDATE my_contacts
    SET interests=trim(substr(interests,length(i1)+2));

UPDATE my_contacts 
    SET i2=substring_index(interests,',',1);

UPDATE my_contacts
    SET interests=trim(substr(interests,length(i2)+2));


UPDATE my_contacts 
    SET i3=substring_index(interests,',',1);

UPDATE my_contacts
    SET interests=trim(substr(interests,length(i3)+2));

ALTER TABLE my_contacts
    DROP COLUMN interests;
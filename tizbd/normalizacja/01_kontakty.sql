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

SELECT i1, i2, i3
FROM my_contacts;

CREATE TABLE interests as
select i1 as name from my_contacts WHERE i1 != ''AND i1 is NOT NULL
UNION
select i2 from my_contacts WHERE i2 != '' AND i2 is NOT NULL
UNION
select i3 from my_contacts WHERE i3 != '' AND i3 is NOT NULL;

ALTER TABLE interests
    ADD id int primary key auto_increment first;

ALTER TABLE my_contacts 
    ADD id int primary key auto_increment first;

CREATE TABLE interests_contacts as
SELECT 
    my_contacts.id as id_contacts,
    interests.id as id_interests
from my_contacts, interests
WHERE i1=name
UNION
SELECT
    my_contacts.id as id_contacts,
    interests.id as id_interests
from my_contacts, interests
WHERE i2=name
UNION
SELECT
    my_contacts.id as id_contacts,
    interests.id as id_interests
from my_contacts, interests
WHERE i3=name;

ALTER TABLE interests_contacts
ADD primary key (id_contacts, id_interests); 

SELECT last_name, name
from my

 
CREATE VIEW contactsinterests as
SELECT my_contacts.*, name, id_contacts, id_interests
FROM my_contacts
INNER JOIN interests_contacts ON my_contacts.id = interests_contacts.id_contacts
INNER JOIN interests ON interests_contacts.id_interests = interests.id; 







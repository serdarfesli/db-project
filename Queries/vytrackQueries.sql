select * from orocrm_contact;
select * from orocrm_contact_email;
select concat(first_name,' ',last_name) as "full name",e.email from orocrm_contact c join orocrm_contact_email e
on c.id = e.owner_id where e.email='mbrackstone9@example.com';

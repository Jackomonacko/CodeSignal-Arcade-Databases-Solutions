CREATE PROCEDURE automaticNotifications()
   SELECT email
   FROM users
   WHERE role NOT IN ("admin","premium")
   ORDER BY email;

Here is another query that works:

CREATE PROCEDURE automaticNotifications()
  SELECT email
  FROM users
  WHERE role != 'premium' AND role != 'admin'
  ORDER BY email;

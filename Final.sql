--  DATABASE NAME -> db 
-- TABLE NAMES -> tb, room, admins

 
CREATE TABLE db.tb (
    customer_name VARCHAR(100),
    room_number VARCHAR(20),
    phone_number VARCHAR(15),
    check_in_time DATETIME
);
CREATE TABLE db.room (
    room_no VARCHAR(10) PRIMARY KEY,
    room_type VARCHAR(50)
);
CREATE TABLE db.admins (admin_id VARCHAR(50) PRIMARY KEY,
    email VARCHAR(100),
    password VARCHAR(100),
    name VARCHAR(100),
    phone_number VARCHAR(20),
    aadhar_number VARCHAR(20),
    bank_account_number VARCHAR(50),
    bank_type VARCHAR(50)
);

INSERT INTO db.admins
VALUES (101, "abs@gmail.com", "sdf", "Sarath", 677676, 567898765, 35646757645, "SBI");

select * from db.tb;
select * from db.room;
select * from db.admins;

SELECT t1.customer_name, t2.room_type, t2.room_no, t1.phone_number, t1.check_in_time 
FROM db.tb t1 JOIN db.room t2 ON t1.room_number = t2.room_no;

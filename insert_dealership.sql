INSERT INTO customer (first_name, last_name, email, phone_number) VALUES
('Dennis', 'Reynolds','popthattopoff@gmail.com','(215)512-7966'),
('Dee','Reynolds','lookslikeabird@yahoo.com','(215)512-7934'),
('Ronald','MacDonald','tackingonmass@hotmail.com','(267)762-3099'),
('Charlie','Kelly','thenightmancometh@aol.com','(267)541-8138'),
('Frank','Reynolds','toeknife@icloud.com','(445)544-8792');

INSERT INTO car (car_year, make, model, color, customer_id) VALUES
('1998','Honda','Civic','Silver',2),
('2005','Toyota','Camry','White',3),
('2012','Ford','Mustang','Black',4),
('2016','Audi','A5','Red',5),
('2022','Jeep','Wrangler','Green',1);

INSERT INTO mechanic (first_name, last_name, email, phone_number) VALUES
('Spongebob', 'Squarepants','imready@gmail.com','(894)579-2113'),
('Patrick','Star','waitforyoutogetback@yahoo.com','(478)833-5001'),
('Sandy','Cheeks','iwannagohome@hotmail.com','(770)976-3042'),
('Squidward','Tentacles','leavemealone@aol.com','(678)608-4522'),
('Eugene','Krabs','givememymoney@icloud.com','(201)394-8874');

INSERT INTO dealership (manager_name, phone_number, district) VALUES
('Mickey', '(719)850-3210','Denver'),
('Minnie','(330)736-6822','Chicago'),
('Goofy','(404)641-2100','Atlanta'),
('Donald','(646)983-8620','Los Angeles'),
('Pluto','(212)726-8000','New York City');

INSERT INTO salesperson (first_name, last_name, email, phone_number, dealership_id) VALUES
('Denzel', 'Washington', 'kingkongaintgotnothingonme@gmail.com','(619)906-3241',4),
('Will', 'Smith', 'keepmywifesnameoutyourmouth@yahoo.com','(981)517-8559',2),
('Leonardo','Di Caprio', 'moveoverrose@hotmail.com','(303)678-7074',5),
('Johnny','Depp','yourfavoritecourtroomactor@aol.com','(727)205-6148',1),
('Mark','Wahlberg','noseriouslywhoisthat@icloud.com','(936)647-7800',3);

INSERT INTO part (part_name, part_desc, price, mechanic_id) VALUES
('Engine','Kicks like a 12-gauge shotgun', 100, 4),
('Battery','Static Shock Level Voltage', 80, 2),
('Brakes', 'Stopped the Hulk in the last Avengers',50, 5),
('Tires','Stolen off my sons hot wheel set', 120, 1),
('Steering Wheel','Rumored to have steered Columbus to the Americas', 40, 3);

INSERT INTO service_record (vin_num, service_desc, price, dealership_id) VALUES
('2098094320','Fixed Engine',200, 4),
('9892796009','Replaced Battery',110, 2),
('6256009583','Tune-Up',55,5),
('0164238977','Oil Change', 35, 1),
('3792284508','Changed Altenator',90,3);

INSERT INTO service_ticket (service_desc, price, mechanic_id, car_id) VALUES
('Fixed Engine',200, 4,3),
('Replaced Battery',110, 2,1),
('Tune-Up',55,5,5),
('Oil Change', 35, 1,2),
('Changed Altenator',90,3,4);

INSERT INTO invoice (amount, car_id,customer_id, salesperson_id) VALUES
(10000,1,2,3),
(15000,4,5,1),
(20000,2,3,4),
(25000,5,1,2),
(30000,3,4,5);

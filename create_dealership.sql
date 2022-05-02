DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(13)
);

DROP TABLE IF EXISTS dealership CASCADE;
CREATE TABLE dealership(
    dealership_id SERIAL PRIMARY KEY,
    manager_name VARCHAR(100),
    phone_number VARCHAR(13),
    district VARCHAR(50)
);

DROP TABLE IF EXISTS mechanic CASCADE;
CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(13)
);

DROP TABLE IF EXISTS salesperson CASCADE;
CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(13),
    dealership_id INTEGER NOT NULL,
    FOREIGN KEY(dealership_id) REFERENCES dealership(dealership_id)
);

DROP TABLE IF EXISTS car CASCADE;
CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    car_year VARCHAR(10),
    make VARCHAR(100),
    model VARCHAR(100),
    color VARCHAR(50),
    salesperson_id INTEGER,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

DROP TABLE IF EXISTS invoice CASCADE;
CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    amount INTEGER,
    invoice_date TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc',now()),
    customer_id INTEGER NOT NULL,
    salesperson_id INTEGER NOT NULL,
    car_id INTEGER NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY(car_id) REFERENCES car(car_id)
);

DROP TABLE IF EXISTS service_ticket CASCADE;
CREATE TABLE service_ticket(
    ticket_id SERIAL PRIMARY KEY,
    service_desc TEXT,
    price INTEGER,
    service_date TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc',now()),
    mechanic_id INTEGER NOT NULL,
    car_id INTEGER NOT NULL,
    FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id),
    FOREIGN KEY(car_id) REFERENCES car(car_id)
);

DROP TABLE IF EXISTS service_record CASCADE;
CREATE TABLE service_record(
    vin_num VARCHAR(50) PRIMARY KEY,
    service_desc TEXT,
    price INTEGER,
    service_date TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc',now()),
    dealership_id INTEGER NOT NULL,
    FOREIGN KEY(dealership_id) REFERENCES dealership(dealership_id)
);

DROP TABLE IF EXISTS part CASCADE;
CREATE TABLE part(
    part_id SERIAL PRIMARY KEY,
    part_name VARCHAR(50),
    part_desc TEXT,
    price INTEGER,
    mechanic_id INTEGER,
    FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id)
);

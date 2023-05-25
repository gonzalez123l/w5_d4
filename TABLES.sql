
CREATE TABLE Customer(
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  address VARCHAR(50),
  city VARCHAR(50),
  _state VARCHAR(50),
  zip INTEGER
);

CREATE TABLE Salesperson (
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);
CREATE TABLE Invoice (
    invoice_id SERIAL PRIMARY KEY,
    vehicle_id INTEGER,
	invoice_date INTEGER,
	salesperson_id INTEGER,
	total_amount NUMERIC(10,2),
    FOREIGN KEY (salesperson_id)
        REFERENCES Salesperson(salesperson_id),
    FOREIGN KEY (vehicle_id)
        REFERENCES Vehicle(vehicle_id)
);

CREATE TABLE Vehicle (
    vehicle_id SERIAL PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    _year INTEGER,
    _cost NUMERIC(10,2),
    customer_id INTEGER,
    FOREIGN KEY (customer_id)
        REFERENCES Customer(customer_id)
);

CREATE TABLE Part (
  part_id Serial PRIMARY KEY,
  _name VARCHAR(50),
  _cost NUMERIC(10,2),
  quantity INTEGER
);

CREATE TABLE Service_part (
  sp_id SERIAL PRIMARY KEY,
  service_id INTEGER,
  part_id INTEGER,
  FOREIGN KEY (part_id)
	REFERENCES Part(part_id)
);

CREATE TABLE Mechanic (
    mechanic_id SERIAL PRIMARY KEY,
    fname VARCHAR(100),
    lname VARCHAR(100)
);

CREATE TABLE Service (
  service_id SERIAL PRIMARY KEY,
  service_name VARCHAR(50),
  service_part INTEGER,
  fee NUMERIC(10,2),
  vehicle_id INTEGER,
  FOREIGN KEY (vehicle_id) 
	REFERENCES Vehicle(vehicle_id),
  FOREIGN KEY (service_part) 
	REFERENCES Service_part(sp_id)
);
CREATE TABLE Mechanic_Service (
  ms_id SERIAL PRIMARY KEY,
  service_id INTEGER,
  mechanic_id INTEGER,
  FOREIGN KEY (service_id) 
	REFERENCES Service(service_id),
  FOREIGN KEY (mechanic_id)
	REFERENCES Mechanic(mechanic_id)
);

CREATE TABLE Mechanic(
  mechanic_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);









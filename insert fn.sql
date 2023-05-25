--FN for inserting into salesperson
CREATE OR REPLACE FUNCTION insert_salesperson (
    f_name VARCHAR, 
	l_name VARCHAR
) 
RETURNS INTEGER AS $$
DECLARE salesperson_id_ INTEGER;
BEGIN
    INSERT INTO Salesperson
    VALUES (DEFAULT, first_name, last_name)
    RETURNING salesperson_id INTO salesperson_id_;
    RETURN salesperson_id_;
END;
$$ 
LANGUAGE PLPGSQL;
SELECT insert_salesperson('Kenndrick', 'Lamar');


-- Fn for insersting customer
CREATE OR REPLACE FUNCTION insert_customer(
  f_name VARCHAR,
  l_name VARCHAR,
  _address VARCHAR,
  _city VARCHAR,
  c_state VARCHAR,
  _zipcode INTEGER,
)
RETURNS INTEGER AS $$
DECLARE customer_id_pk INTEGER;
BEGIN
    INSERT INTO Customer
    VALUES (DEFAULT, first_name, last_name, address, city, _state, zip)
    RETURNING customer_id INTO customer_id_;
    RETURN customer_id_;
END;
$$ 
LANGUAGE PLPGSQL;

SELECT insert_customer('Eddie', 'Murphy', '1212', 'forest','fl','232323');

-- Fn for insterting mechanic
CREATE OR REPLACE FUNCTION insert_mechanic(
	f_name
	l_name
) RETURNS INTEGER AS $$
DECLARE mechanic_id_pk INTEGER;
BEGIN
	INSERT INTO Mechanic
	VALUES (DEFAULT, first_name, last_name)
	RETURNING mechanic_id into mechanic_id_;
	RETURN mechanic_id_;
END;
$$
LANGUAGE PLPGSQL;

SELECT insert_mechanic('John','Trevolta')








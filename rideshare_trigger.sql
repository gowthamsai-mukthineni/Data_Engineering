-- MAIN TABLES

CREATE TABLE drivers (
    driver_id INT PRIMARY KEY,
    driver_name VARCHAR(50),
    city VARCHAR(50),
    rating DECIMAL(3,2)
);

CREATE TABLE trips (
    trip_id INT PRIMARY KEY,
    driver_id INT REFERENCES drivers(driver_id),
    fare DECIMAL(10,2),
    trip_type VARCHAR(20),
    trip_date DATE
);

CREATE TABLE vehicles (
    vehicle_id INT PRIMARY KEY,
    driver_id INT REFERENCES drivers(driver_id),
    vehicle_type VARCHAR(20),
    vehicle_year INT
);

-- AUDIT TABLES

CREATE TABLE drivers_audit (
    audit_id SERIAL PRIMARY KEY,
    driver_id INT,
    driver_name VARCHAR(50),
    city VARCHAR(50),
    rating DECIMAL(3,2),
    action_type VARCHAR(20),
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE trips_audit (
    audit_id SERIAL PRIMARY KEY,
    trip_id INT,
    driver_id INT,
    fare DECIMAL(10,2),
    trip_type VARCHAR(20),
    trip_date DATE,
    action_type VARCHAR(20),
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE vehicles_audit (
    audit_id SERIAL PRIMARY KEY,
    vehicle_id INT,
    driver_id INT,
    vehicle_type VARCHAR(20),
    vehicle_year INT,
    action_type VARCHAR(20),
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- DRIVERS TRIGGER FUNCTION

CREATE OR REPLACE FUNCTION drivers_audit_function()
RETURNS TRIGGER AS
$$
BEGIN

    IF TG_OP='INSERT' THEN

        INSERT INTO drivers_audit
        (driver_id, driver_name, city, rating, action_type, action_time)
        VALUES
        (NEW.driver_id, NEW.driver_name, NEW.city, NEW.rating,
         'INSERT', CURRENT_TIMESTAMP);

        RETURN NEW;

    ELSIF TG_OP='UPDATE' THEN

        INSERT INTO drivers_audit
        (driver_id, driver_name, city, rating, action_type, action_time)
        VALUES
        (NEW.driver_id, NEW.driver_name, NEW.city, NEW.rating,
         'UPDATE', CURRENT_TIMESTAMP);

        RETURN NEW;

    ELSE

        INSERT INTO drivers_audit
        (driver_id, driver_name, city, rating, action_type, action_time)
        VALUES
        (OLD.driver_id, OLD.driver_name, OLD.city, OLD.rating,
         'DELETE', CURRENT_TIMESTAMP);

        RETURN OLD;

    END IF;

END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER drivers_audit_trigger
AFTER INSERT OR UPDATE OR DELETE
ON drivers
FOR EACH ROW
EXECUTE FUNCTION drivers_audit_function();

-- TRIPS TRIGGER FUNCTION

CREATE OR REPLACE FUNCTION trips_audit_function()
RETURNS TRIGGER AS
$$
BEGIN

    IF TG_OP='INSERT' THEN

        INSERT INTO trips_audit
        (trip_id, driver_id, fare, trip_type, trip_date, action_type, action_time)
        VALUES
        (NEW.trip_id, NEW.driver_id, NEW.fare, NEW.trip_type,
         NEW.trip_date, 'INSERT', CURRENT_TIMESTAMP);

        RETURN NEW;

    ELSIF TG_OP='UPDATE' THEN

        INSERT INTO trips_audit
        (trip_id, driver_id, fare, trip_type, trip_date, action_type, action_time)
        VALUES
        (NEW.trip_id, NEW.driver_id, NEW.fare, NEW.trip_type,
         NEW.trip_date, 'UPDATE', CURRENT_TIMESTAMP);

        RETURN NEW;

    ELSE

        INSERT INTO trips_audit
        (trip_id, driver_id, fare, trip_type, trip_date, action_type, action_time)
        VALUES
        (OLD.trip_id, OLD.driver_id, OLD.fare, OLD.trip_type,
         OLD.trip_date, 'DELETE', CURRENT_TIMESTAMP);

        RETURN OLD;

    END IF;

END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER trips_audit_trigger
AFTER INSERT OR UPDATE OR DELETE
ON trips
FOR EACH ROW
EXECUTE FUNCTION trips_audit_function();

-- VEHICLES TRIGGER FUNCTION

CREATE OR REPLACE FUNCTION vehicles_audit_function()
RETURNS TRIGGER AS
$$
BEGIN

    IF TG_OP='INSERT' THEN

        INSERT INTO vehicles_audit
        (vehicle_id, driver_id, vehicle_type, vehicle_year, action_type, action_time)
        VALUES
        (NEW.vehicle_id, NEW.driver_id, NEW.vehicle_type,
         NEW.vehicle_year, 'INSERT', CURRENT_TIMESTAMP);

        RETURN NEW;

    ELSIF TG_OP='UPDATE' THEN

        INSERT INTO vehicles_audit
        (vehicle_id, driver_id, vehicle_type, vehicle_year, action_type, action_time)
        VALUES
        (NEW.vehicle_id, NEW.driver_id, NEW.vehicle_type,
         NEW.vehicle_year, 'UPDATE', CURRENT_TIMESTAMP);

        RETURN NEW;

    ELSE

        INSERT INTO vehicles_audit
        (vehicle_id, driver_id, vehicle_type, vehicle_year, action_type, action_time)
        VALUES
        (OLD.vehicle_id, OLD.driver_id, OLD.vehicle_type,
         OLD.vehicle_year, 'DELETE', CURRENT_TIMESTAMP);

        RETURN OLD;

    END IF;

END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER vehicles_audit_trigger
AFTER INSERT OR UPDATE OR DELETE
ON vehicles
FOR EACH ROW
EXECUTE FUNCTION vehicles_audit_function();
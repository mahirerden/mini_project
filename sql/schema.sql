DROP DATABASE IF EXISTS carshowroomDB;
CREATE DATABASE carshowroomDB;

USE carshowroomDB;

CREATE TABLE customers
(
  customer_id INT NOT NULL
  AUTO_INCREMENT,
  first_name VARCHAR
  (30) NULL,
  last_name VARCHAR
  (30) NULL,
  address VARCHAR
  (100) NULL,
  email VARCHAR
  (100) NULL,
  phone VARCHAR
  (16) NULL,
  creditcard_type VARCHAR
  (30) NULL,
  creditcard_number VARCHAR
  (100),
  PRIMARY KEY
  (customer_id)
);


  CREATE TABLE cars
  (
    car_id INT NOT NULL
    AUTO_INCREMENT,
  car_make VARCHAR
    (30) NULL,
  car_model VARCHAR
    (30) NULL,
  car_year INT
    (20) NULL,
  car_vin VARCHAR
    (1000),
  car_color VARCHAR
    (30) NULL,
  PRIMARY KEY
    (car_id)
);

    CREATE TABLE orders
    (
      order_id INT NOT NULL
      AUTO_INCREMENT,
  customer_id INT,
  car_id INT,
  FOREIGN KEY
      (customer_id) REFERENCES customers
      (customer_id),
  FOREIGN KEY
      (car_id) REFERENCES cars
      (car_id),
  PRIMARY KEY
      (order_id)
);

      ALTER TABLE cars AUTO_INCREMENT=1001;
      ALTER TABLE orders AUTO_INCREMENT=5001;

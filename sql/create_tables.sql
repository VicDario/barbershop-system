CREATE TABLE shop (
    id INTEGER PRIMARY KEY NOT NULL,
    name VARCHAR(20) NOT NULL,
    street VARCHAR(20) NOT NULL,
    street_number INTEGER NOT NULL,
    community VARCHAR(20) NOT NULL
);

CREATE TABLE phone_shop (
    shop_id INTEGER NOT NULL,
    phone VARCHAR(12) NOT NULL,
    PRIMARY KEY (shop_id),
    FOREIGN KEY (shop_id) REFERENCES shop(id)
);

CREATE TABLE rrss_shop (
    shop_id INTEGER NOT NULL,
    name VARCHAR(20) NOT NULL,
    user VARCHAR(20) NOT NULL,
    PRIMARY KEY (shop_id),
    FOREIGN KEY (shop_id) REFERENCES shop(id)
);

CREATE TABLE schedule_shop (
    shop_id INTEGER NOT NULL,
    week_day VARCHAR(20) NOT NULL,
    start_time VARCHAR(20) NOT NULL,
    end_time VARCHAR(20) NOT NULL,
    PRIMARY KEY (shop_id),
    FOREIGN KEY (shop_id) REFERENCES shop(id)
);

CREATE TABLE employees (
    rut    VARCHAR(15) PRIMARY KEY NOT NULL,
    name VARCHAR(20) NOT NULL,
    surname_employee VARCHAR(20) NOT NULL,
    picture VARCHAR(40) NOT NULL,
    description_employee  VARCHAR(200) NOT NULL,
    salary FLOAT NOT NULL,
    type_employee INTEGER NOT NULL,
    start_activities INTEGER NOT NULL,
    category VARCHAR(20) NOT NULL
); 

CREATE TABLE schedule_employees (
    rut_employee VARCHAR(15) NOT NULL,
    week_date VARCHAR(15) NOT NULL,
    start_time INTEGER NOT NULL,
    end_time INTEGER NOT null,
    PRIMARY KEY (rut_employee),
    FOREIGN KEY (rut_employee) REFERENCES employees(rut)
);

CREATE TABLE skills_receptionist(
    rut_employee VARCHAR(15) NOT NULL,
    skills VARCHAR(50) NOT NULL,
    PRIMARY KEY (rut_employee),
    FOREIGN KEY (rut_employee) REFERENCES employees(rut)
);

CREATE TABLE certificates_employees (
    rut_employee VARCHAR(15) NOT NULL,
    certificates INTEGER NOT NULL,
    PRIMARY KEY (rut_employee),
    FOREIGN KEY (rut_employee) REFERENCES employees(rut)
);

CREATE TABLE service (
    code INTEGER PRIMARY KEY NOT NULL,
    name VARCHAR(20) NOT NULL,
    base_price FLOAT NOT NULL
);

CREATE TABLE make (
    rut_employee VARCHAR(15) NOT NULL,
    service_code INTEGER NOT NULL,
    is_expert VARCHAR(60) NOT NULL,
    PRIMARY KEY (rut_employee, service_code),
    FOREIGN KEY (rut_employee) REFERENCES employees(rut),
    FOREIGN KEY (service_code) REFERENCES service(code)
);

CREATE TABLE combo (
    number INTEGER PRIMARY KEY,
    combo_price FLOAT NOT NULL
);

CREATE TABLE offer_in (
    number_combo INTEGER NOT NULL,
    service_code INTEGER NOT NULL,
    PRIMARY KEY(number_combo, service_code),
    FOREIGN KEY (number_combo) REFERENCES combo(number),
    FOREIGN KEY (service_code) REFERENCES service(code)
);

CREATE TABLE client (
    rut VARCHAR(15) PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    surname VARCHAR(20) NOT NULL,
    street VARCHAR(20) NOT NULL,
    street_number INTEGER NOT NULL,
    community VARCHAR(20) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(60) NOT NULL,
    complexity INTEGER NOT NULL
);

CREATE TABLE review (  
    service_code INTEGER NOT NULL,
    client_rut VARCHAR(15)NOT NULL,
    score INTEGER NOT NULL,
    review INTEGER NOT NULL,
    date DATE NOT NULL,
    PRIMARY KEY (service_code, client_rut),
    FOREIGN KEY (service_code) REFERENCES service(code),
    FOREIGN KEY (client_rut) REFERENCES client(rut)
);

CREATE TABLE phones_client (
    client_rut VARCHAR(15) NOT NULL,
    phone VARCHAR(12) NOT NULL,
    PRIMARY KEY (client_rut), 
    FOREIGN KEY (client_rut) REFERENCES client(rut) 
);
    
CREATE TABLE sales_voucher (
    number_voucher INTEGER PRIMARY KEY NOT NULL,
    day INTEGER NOT NULL,
    month INTEGER NOT NULL,
    year INTEGER NOT NULL,
    client_rut VARCHAR(15) NOT NULL,
    FOREIGN KEY (client_rut) REFERENCES client(rut)
);

CREATE TABLE product (
    code INTEGER PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    price FLOAT NOT NULL,
    description VARCHAR(100) NOT NULL
);

CREATE TABLE sales_in (
    number_voucher INTEGER NOT NULL,
    code_product INTEGER NOT NULL,
    number INTEGER NOT NULL,
    discount FLOAT NOT NULL,
    PRIMARY KEY (number_voucher, code_product),
    FOREIGN KEY (number_voucher) REFERENCES sales_voucher(number_voucher),
    FOREIGN KEY (code_product) REFERENCES product(code)
);

CREATE TABLE sell (
    shop_id INTEGER NOT NULL,
    code_product INTEGER NOT NULL,
    stock INTEGER NOT NULL,
    PRIMARY KEY (shop_id, code_product),
    FOREIGN KEY (shop_id) REFERENCES shop(id),
    FOREIGN KEY (code_product) REFERENCES product(code)
);

CREATE TABLE booking(
    code INTEGER PRIMARY KEY,
    date TIMESTAMP NOT NULL,
    state VARCHAR(50) NOT NULL,
    client_rut VARCHAR(15) NOT NULL,
    FOREIGN KEY (client_rut) REFERENCES client(rut)
);

CREATE TABLE payment_document(
    number_document INTEGER PRIMARY KEY NOT NULL,
    booking_code INTEGER UNIQUE,
    FOREIGN KEY (booking_code) REFERENCES booking(code)
);

CREATE TABLE discounts_codes(
    code INTEGER PRIMARY KEY NOT NULL,
    percentage FLOAT NOT NULL,
    caducity_date VARCHAR(20) NOT NULL
);

CREATE TABLE discount (
    code_discount INTEGER NOT NULL,
    number_payment_document INTEGER NOT NULL,
    mount FLOAT NOT NULL,
    PRIMARY KEY (code_discount, number_payment_document),
    FOREIGN KEY (code_discount) REFERENCES discounts_codes(code),
    FOREIGN KEY (number_payment_document) REFERENCES payment_document(number_document)
);
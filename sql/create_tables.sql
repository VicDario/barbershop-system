CREATE TABLE shops (
    id INTEGER PRIMARY KEY NOT NULL,
    name VARCHAR(20) NOT NULL,
    street VARCHAR(25) NOT NULL,
    street_number INTEGER NOT NULL,
    community VARCHAR(25) NOT NULL
);

CREATE TABLE phones_shops (
    shop_id INTEGER NOT NULL,
    phone VARCHAR(12) NOT NULL,
    FOREIGN KEY (shop_id) REFERENCES shops(id)
);

CREATE TABLE rrss_shops (
    shop_id INTEGER NOT NULL,
    name VARCHAR(20) NOT NULL,
    username VARCHAR(20) NOT NULL,
    FOREIGN KEY (shop_id) REFERENCES shops(id)
);

CREATE TABLE schedule_shops (
    shop_id INTEGER NOT NULL,
    week_day VARCHAR(20) NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    FOREIGN KEY (shop_id) REFERENCES shops(id)
);

CREATE TABLE employees (
    rut VARCHAR(15) PRIMARY KEY NOT NULL,
    name VARCHAR(20) NOT NULL,
    surname VARCHAR(20) NOT NULL,
    picture VARCHAR(100),
    description VARCHAR(200),
    salary INTEGER NOT NULL,
    employee_type INTEGER NOT NULL,
    start_activities DATE NOT NULL,
    category VARCHAR(20),
    shop_id INTEGER NOT NULL,
    FOREIGN KEY (shop_id) REFERENCES shops(id)
); 

CREATE TABLE schedule_employees (
    employee_rut VARCHAR(15) NOT NULL,
    week_day VARCHAR(15) NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT null,
    FOREIGN KEY (employee_rut) REFERENCES employees(rut)
);

CREATE TABLE skills_receptionist (
    employee_rut VARCHAR(15) NOT NULL,
    skill VARCHAR(50) NOT NULL,
    FOREIGN KEY (employee_rut) REFERENCES employees(rut)
);

CREATE TABLE certificates_employees (
    employee_rut VARCHAR(15) NOT NULL,
    certificate VARCHAR(100) NOT NULL,
    FOREIGN KEY (employee_rut) REFERENCES employees(rut)
);

CREATE TABLE services (
    code INTEGER PRIMARY KEY NOT NULL,
    name VARCHAR(30) NOT NULL,
    base_price FLOAT NOT NULL
);

CREATE TABLE performs (
    employee_rut VARCHAR(15) NOT NULL,
    service_code INTEGER NOT NULL,
    is_expert BOOLEAN NOT NULL,
    PRIMARY KEY (employee_rut, service_code),
    FOREIGN KEY (employee_rut) REFERENCES employees(rut),
    FOREIGN KEY (service_code) REFERENCES services(code)
);

CREATE TABLE combos (
    combo_number INTEGER PRIMARY KEY,
    price INTEGER NOT NULL CONSTRAINT positive_price CHECK (price > 0)
);

CREATE TABLE offer_in (
    combo_number INTEGER NOT NULL,
    service_code INTEGER NOT NULL,
    PRIMARY KEY(combo_number, service_code),
    FOREIGN KEY (combo_number) REFERENCES combos(combo_number),
    FOREIGN KEY (service_code) REFERENCES services(code)
);

CREATE TABLE clients (
    rut VARCHAR(15) PRIMARY KEY,
    name VARCHAR(25) NOT NULL,
    surname VARCHAR(25) NOT NULL,
    street VARCHAR(25) NOT NULL,
    street_number INTEGER NOT NULL,
    community VARCHAR(25) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(60) NOT NULL,
    complexity INTEGER NOT NULL
);

CREATE TABLE reviews (  
    service_code INTEGER NOT NULL,
    client_rut VARCHAR(15)NOT NULL,
    score INTEGER NOT NULL,
    review VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    PRIMARY KEY (service_code, client_rut),
    FOREIGN KEY (service_code) REFERENCES services(code),
    FOREIGN KEY (client_rut) REFERENCES clients(rut)
);

CREATE TABLE phones_clients (
    client_rut VARCHAR(15) NOT NULL,
    phone VARCHAR(12) NOT NULL,
    FOREIGN KEY (client_rut) REFERENCES clients(rut) 
);
    
CREATE TABLE sales_vouchers (
    number_voucher INTEGER PRIMARY KEY NOT NULL,
    date DATE NOT NULL, 
    client_rut VARCHAR(15) NOT NULL,
    shop_id INTEGER NOT NULL,
    FOREIGN KEY (client_rut) REFERENCES clients(rut),
    FOREIGN KEY (shop_id) REFERENCES shops(id)
);

CREATE TABLE products (
    code INTEGER PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    price INTEGER NOT NULL CONSTRAINT positive_price CHECK (price > 0),
    description VARCHAR(100) NOT NULL
);

CREATE TABLE sales_in (
    number_voucher INTEGER NOT NULL,
    product_code INTEGER NOT NULL,
    number INTEGER NOT NULL,
    discount INTEGER NOT NULL,
    PRIMARY KEY (number_voucher, product_code),
    FOREIGN KEY (number_voucher) REFERENCES sales_vouchers(number_voucher),
    FOREIGN KEY (product_code) REFERENCES products(code)
);

CREATE TABLE sells (
    shop_id INTEGER NOT NULL,
    product_code INTEGER NOT NULL,
    stock INTEGER NOT NULL CONSTRAINT valid_stock CHECK (stock >= 0),
    PRIMARY KEY (shop_id, product_code),
    FOREIGN KEY (shop_id) REFERENCES shops(id),
    FOREIGN KEY (product_code) REFERENCES products(code)
);

CREATE TABLE bookings (
    code INTEGER PRIMARY KEY,
    date TIMESTAMP NOT NULL,
    status VARCHAR(12) NOT NULL,
    client_rut VARCHAR(15) NOT NULL,
    shop_id INTEGER NOT NULL,
    FOREIGN KEY (client_rut) REFERENCES clients(rut),
    FOREIGN KEY (shop_id) REFERENCES shops(id)
);

CREATE TABLE attends (
    booking_code INTEGER NOT NULL,
    service_code INTEGER NOT NULL,
    employee_rut VARCHAR(15) NOT NULL,
    PRIMARY KEY (booking_code, service_code),
    FOREIGN KEY (booking_code) REFERENCES bookings(code),
    FOREIGN KEY (service_code) REFERENCES services(code),
    FOREIGN KEY (employee_rut) REFERENCES employees(rut)
);

CREATE TABLE payment_documents (
    document_number INTEGER PRIMARY KEY NOT NULL,
    booking_code INTEGER UNIQUE,
    FOREIGN KEY (booking_code) REFERENCES bookings(code)
);

CREATE TABLE discounts_codes (
    code INTEGER PRIMARY KEY NOT NULL,
    percentage FLOAT NOT NULL CONSTRAINT valid_discount CHECK (percentage > 0 AND percentage <= 1),
    expiration_date DATE NOT NULL
);

CREATE TABLE discounts (
    code_discount INTEGER NOT NULL,
    payment_document_number INTEGER NOT NULL,
    mount INTEGER NOT NULL,
    PRIMARY KEY (code_discount, payment_document_number),
    FOREIGN KEY (code_discount) REFERENCES discounts_codes(code),
    FOREIGN KEY (payment_document_number) REFERENCES payment_documents(document_number)
);
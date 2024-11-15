INSERT INTO shops (id, name, street, street_number, community) VALUES (5100, 'PJVBARBER SHOP', 'Amonategui', 092, 'Santiago');
INSERT INTO shops (id, name, street, street_number, community) VALUES (5200, 'VDSTYLES SHOP', 'ANDRES BELLO', 620, 'Povidencia') ;
INSERT INTO shops (id, name, street, street_number, community) VALUES (5400, 'PL BARBER SHOP', 'AVENIDA ITALIA', 850, 'Providencia') ;
INSERT INTO shops (id, name, street, street_number, community) VALUES (5600, 'FJ BARBER SHOP', 'MARACAIBO', 993, 'Santiago');
INSERT INTO shops (id, name, street, street_number, community) VALUES (5800, 'MA STYLES SHOP', 'CLAUDIO ARRAY', 421, 'Santiago');

INSERT INTO phone_shop(shop_id, phone) VALUES (5100, '964537263');
INSERT INTO phone_shop(shop_id, phone) VALUES (5100, '939431233');
INSERT INTO phone_shop(shop_id, phone) VALUES (5200, '962498726');
INSERT INTO phone_shop(shop_id, phone) VALUES (5400, '921013094');
INSERT INTO phone_shop(shop_id, phone) VALUES (5600, '978960939');
INSERT INTO phone_shop(shop_id, phone) VALUES (5800, '923948241');

INSERT INTO rrss_shop(shop_id, name, username) VALUES (5100, 'Instagram', 'pjvbarber.cl');
INSERT INTO rrss_shop(shop_id, name, username) VALUES (5100, 'Facebook', 'pjvbarber');
INSERT INTO rrss_shop(shop_id, name, username) VALUES (5200, 'Facebook', 'vd.stylescl');
INSERT INTO rrss_shop(shop_id, name, username) VALUES (5400, 'Instagram', 'pl__barbershop');
INSERT INTO rrss_shop(shop_id, name, username) VALUES (5600, 'Facebook', 'fjbarber._cl');
INSERT INTO rrss_shop(shop_id, name, username) VALUES (5800, 'Instagram', 'mastylescl_');

INSERT INTO schedule_shop(shop_id, week_day, start_time, end_time) VALUES (5100, 'Lunes', '09:00', '19:00');
INSERT INTO schedule_shop(shop_id, week_day, start_time, end_time) VALUES (5100, 'Martes', '09:00', '19:00');
INSERT INTO schedule_shop(shop_id, week_day, start_time, end_time) VALUES (5100, 'Miercoles', '09:00', '19:00');
INSERT INTO schedule_shop(shop_id, week_day, start_time, end_time) VALUES (5100, 'Jueves', '09:00', '19:00');
INSERT INTO schedule_shop(shop_id, week_day, start_time, end_time) VALUES (5100, 'Viernes', '09:00', '19:00');
INSERT INTO schedule_shop(shop_id, week_day, start_time, end_time) VALUES (5200, 'Lunes', '09:00', '19:00');
INSERT INTO schedule_shop(shop_id, week_day, start_time, end_time) VALUES (5200, 'Martes', '09:00', '19:00');
INSERT INTO schedule_shop(shop_id, week_day, start_time, end_time) VALUES (5200, 'Miercoles', '09:00', '19:00');
INSERT INTO schedule_shop(shop_id, week_day, start_time, end_time) VALUES (5200, 'Jueves', '09:00', '19:00');
INSERT INTO schedule_shop(shop_id, week_day, start_time, end_time) VALUES (5200, 'Viernes', '09:00', '19:00');
INSERT INTO schedule_shop(shop_id, week_day, start_time, end_time) VALUES (5400, 'Martes', '09:00', '19:00');
INSERT INTO schedule_shop(shop_id, week_day, start_time, end_time) VALUES (5400, 'Miercoles', '09:00', '19:00');
INSERT INTO schedule_shop(shop_id, week_day, start_time, end_time) VALUES (5400, 'Jueves', '09:00', '19:00');
INSERT INTO schedule_shop(shop_id, week_day, start_time, end_time) VALUES (5400, 'Viernes', '09:00', '19:00');
INSERT INTO schedule_shop(shop_id, week_day, start_time, end_time) VALUES (5400, 'Sabado', '09:00', '14:00');

INSERT INTO employees(rut, name, surname, picture, salary, employee_type, start_activities, category, shop_id) VALUES ('25345678-9', 'Pedro', 'Vargas', 'https://images.app.goo.gl/KWAV2UbV42WUxQZq6', 8000, 0, '2023-08-20', 'Barbero', 5100);
INSERT INTO employees(rut, name, surname, picture, salary, employee_type, start_activities, category, shop_id) VALUES ('26983090-0', 'Victor', 'Diaz', 'https://images.app.goo.gl/rYU5dEpRCEvJZAJS6', 15000, 0, '2021-02-17', 'Barbero', 5200);
INSERT INTO employees(rut, name, surname, picture, salary, employee_type, start_activities, category, shop_id) VALUES ('27321459-1', 'Pablo', 'Lopez', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3Bn2OfR0FhkDpo3xxsA1eAMHF9HCjqx7MmQ&s', 50000, 0, '2021-01-01', 'Estilista', 5100);
INSERT INTO employees(rut, name, surname, picture, salary, employee_type, start_activities, category, shop_id) VALUES ('22098341-2', 'Felipe', 'Jara', 'https://images.app.goo.gl/8eLUMepyurr6BrTV9', 12099, 0, '2022-03-01', 'Estilista', 5400);
INSERT INTO employees(rut, name, surname, picture, salary, employee_type, start_activities, category, shop_id) VALUES ('9083942-3', 'Miguel', 'Alvarez', 'https://images.app.goo.gl/LhjWhznujq2M4WY98', 60095, 0, '2021-12-03', 'Barbero', 5400);
INSERT INTO employees(rut, name, surname, picture, salary, employee_type, start_activities, shop_id) VALUES ('12849342-3', 'Manuel', 'Alvarez', 'https://images.app.goo.gl/LhjWhznujq2M4WY98', 600950, 1, '2022-12-15', 5600);

INSERT INTO schedule_employees(employee_rut, week_day, start_time, end_time) VALUES ('25345678-9', 'Lunes', '09:00', '19:00');
INSERT INTO schedule_employees(employee_rut, week_day, start_time, end_time) VALUES ('25345678-9', 'Martes', '09:00', '19:00');
INSERT INTO schedule_employees(employee_rut, week_day, start_time, end_time) VALUES ('25345678-9', 'Miercoles', '09:00', '19:00');
INSERT INTO schedule_employees(employee_rut, week_day, start_time, end_time) VALUES ('25345678-9', 'Jueves', '09:00', '19:00');
INSERT INTO schedule_employees(employee_rut, week_day, start_time, end_time) VALUES ('25345678-9', 'Viernes', '09:00', '19:00');
INSERT INTO schedule_employees(employee_rut, week_day, start_time, end_time) VALUES ('26983090-0', 'Lunes', '09:00', '19:00');
INSERT INTO schedule_employees(employee_rut, week_day, start_time, end_time) VALUES ('26983090-0', 'Martes', '09:00', '19:00');
INSERT INTO schedule_employees(employee_rut, week_day, start_time, end_time) VALUES ('26983090-0', 'Miercoles', '09:00', '19:00');
INSERT INTO schedule_employees(employee_rut, week_day, start_time, end_time) VALUES ('26983090-0', 'Jueves', '09:00', '19:00');
INSERT INTO schedule_employees(employee_rut, week_day, start_time, end_time) VALUES ('26983090-0', 'Viernes', '09:00', '19:00');

INSERT INTO skills_receptionist(employee_rut, skill) VALUES ('12849342-3', 'Habla ingles');
INSERT INTO skills_receptionist(employee_rut, skill) VALUES ('12849342-3', 'Excelente servicio al cliente');
INSERT INTO skills_receptionist(employee_rut, skill) VALUES ('12849342-3', 'Manejo de Office');

INSERT INTO certificates_employees(employee_rut, certificate) VALUES ('25345678-9', 'Fake certificate');
INSERT INTO certificates_employees(employee_rut, certificate) VALUES ('26983090-0', 'Fake certificate');
INSERT INTO certificates_employees(employee_rut, certificate) VALUES ('27321459-1', 'Fake certificate');
INSERT INTO certificates_employees(employee_rut, certificate) VALUES ('22098341-2', 'Fake certificate');
INSERT INTO certificates_employees(employee_rut, certificate) VALUES ('9083942-3', 'Fake certificate');

INSERT INTO service(code, name, base_price) VALUES (100, 'Corte de caBello', 10000);
INSERT INTO service(code, name, base_price) VALUES (200, 'Corte de barba', 8000);
INSERT INTO service(code, name, base_price) VALUES (300, 'Peinado', 6000);
INSERT INTO service(code, name, base_price) VALUES (400, 'Tinte de pelo', 20000);
INSERT INTO service(code, name, base_price) VALUES (500, 'Alisado de cabello', 25000);

INSERT INTO performs(employee_rut, service_code, is_expert) VALUES ('25345678-9', 100, TRUE);
INSERT INTO performs(employee_rut, service_code, is_expert) VALUES ('26983090-0', 200, TRUE);
INSERT INTO performs(employee_rut, service_code, is_expert) VALUES ('27321459-1', 300, TRUE);
INSERT INTO performs(employee_rut, service_code, is_expert) VALUES ('22098341-2', 400, FALSE);
INSERT INTO performs(employee_rut, service_code, is_expert) VALUES ('9083942-3', 500, FALSE);

INSERT INTO combo(combo_number, price) VALUES (1, 20000);
INSERT INTO combo(combo_number, price) VALUES (2, 25000);
INSERT INTO combo(combo_number, price) VALUES (3, 30000);
INSERT INTO combo(combo_number, price) VALUES (4, 35000);
INSERT INTO combo(combo_number, price) VALUES (5, 40000);

INSERT INTO offer_in(combo_number, service_code) VALUES (1, 100);
INSERT INTO offer_in(combo_number, service_code) VALUES (1, 200);
INSERT INTO offer_in(combo_number, service_code) VALUES (2, 300);
INSERT INTO offer_in(combo_number, service_code) VALUES (2, 400);
INSERT INTO offer_in(combo_number, service_code) VALUES (2, 500);

INSERT INTO client(rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('25345678-9', 'Pedro', 'Vargas', 'Amonategui', 92, 'Santiago', '1993-08-20', 'pedrovargas@email.com', 4);
INSERT INTO client(rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('26983090-0', 'Victor', 'Diaz', 'ANDRES BELLO', 620, 'Povidencia', '1991-02-17', 'victordiaz@email.com', 3);
INSERT INTO client(rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('27321459-1', 'Pablo', 'Lopez', 'AVENIDA ITALIA', 850, 'Providencia', '1990-01-01', 'pablolopez@email.com', 1);
INSERT INTO client(rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('22098341-2', 'Felipe', 'Jara', 'MARACAIBO', 993, 'Santiago', '1992-03-01', 'felipejara@email.com', 2);
INSERT INTO client(rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('9083942-3', 'Miguel', 'Alvarez', 'CLAUDIO ARRAY', 421, 'Santiago', '1991-12-03', 'miguelalvarez@email.com', 3);

INSERT INTO review(service_code, client_rut, score, review, date) VALUES (100, '25345678-9', 5, 'Excelente servicio', '2023-08-20');
INSERT INTO review(service_code, client_rut, score, review, date) VALUES (200, '26983090-0', 4, 'Muy buen servicio', '2021-02-17');
INSERT INTO review(service_code, client_rut, score, review, date) VALUES (300, '27321459-1', 3, 'Buen servicio', '2021-01-01');
INSERT INTO review(service_code, client_rut, score, review, date) VALUES (400, '22098341-2', 2, 'Servicio regular', '2022-03-01');
INSERT INTO review(service_code, client_rut, score, review, date) VALUES (500, '9083942-3', 1, 'Mal servicio', '2021-12-03');

INSERT INTO phones_client(client_rut, phone) VALUES ('25345678-9', '25502310');
INSERT INTO phones_client(client_rut, phone) VALUES ('26983090-0', '250232090');
INSERT INTO phones_client(client_rut, phone) VALUES ('27321459-1', '210130941');
INSERT INTO phones_client(client_rut, phone) VALUES ('22098341-2', '278960939');
INSERT INTO phones_client(client_rut, phone) VALUES ('9083942-3', '239482411');

INSERT INTO sales_voucher(number_voucher, date, client_rut, shop_id) VALUES (1, '2023-01-09', '25345678-9', 5100);
INSERT INTO sales_voucher(number_voucher, date, client_rut, shop_id) VALUES (2, '2021-06-02', '26983090-0', 5100);
INSERT INTO sales_voucher(number_voucher, date, client_rut, shop_id) VALUES (3, '2021-09-11', '27321459-1', 5200);
INSERT INTO sales_voucher(number_voucher, date, client_rut, shop_id) VALUES (4, '2022-02-23', '22098341-2', 5200);
INSERT INTO sales_voucher(number_voucher, date, client_rut, shop_id) VALUES (5, '2021-08-01', '9083942-3', 5400);

INSERT INTO product(code, name, price, description) VALUES (100, 'Cera para barba', 5000, 'Cera para barba');
INSERT INTO product(code, name, price, description) VALUES (200, 'Aceite para barba', 7000, 'Aceite para barba');
INSERT INTO product(code, name, price, description) VALUES (300, 'Shampoo para barba', 6000, 'Shampoo para barba');
INSERT INTO product(code, name, price, description) VALUES (400, 'Crema para barba', 8000, 'Crema para barba');
INSERT INTO product(code, name, price, description) VALUES (500, 'Tinte para barba', 10000, 'Tinte para barba');

INSERT INTO sales_in(number_voucher, code_product, number, discount) VALUES (1, 100, 2, 0);
INSERT INTO sales_in(number_voucher, code_product, number, discount) VALUES (2, 200, 1, 0);
INSERT INTO sales_in(number_voucher, code_product, number, discount) VALUES (3, 300, 3, 0);
INSERT INTO sales_in(number_voucher, code_product, number, discount) VALUES (4, 400, 1, 0);
INSERT INTO sales_in(number_voucher, code_product, number, discount) VALUES (5, 500, 2, 0);

INSERT INTO sell(shop_id, code_product, stock) VALUES (5100, 100, 10);
INSERT INTO sell(shop_id, code_product, stock) VALUES (5200, 200, 20);
INSERT INTO sell(shop_id, code_product, stock) VALUES (5400, 300, 30);
INSERT INTO sell(shop_id, code_product, stock) VALUES (5600, 400, 40);
INSERT INTO sell(shop_id, code_product, stock) VALUES (5800, 500, 50);

INSERT INTO booking(code, date, status, client_rut) VALUES (1, '2023-08-20 09:00', 'Completed', '25345678-9');
INSERT INTO booking(code, date, status, client_rut) VALUES (2, '2021-02-17 11:00', 'Completed', '26983090-0');
INSERT INTO booking(code, date, status, client_rut) VALUES (3, '2021-01-01 13:00', 'Completed', '27321459-1');
INSERT INTO booking(code, date, status, client_rut) VALUES (4, '2022-03-01 14:00', 'Completed', '22098341-2');
INSERT INTO booking(code, date, status, client_rut) VALUES (5, '2021-12-03 15:00', 'Completed', '9083942-3');

INSERT INTO payment_document(document_number, booking_code) VALUES (1, 1);
INSERT INTO payment_document(document_number, booking_code) VALUES (2, 2);
INSERT INTO payment_document(document_number, booking_code) VALUES (3, 3);
INSERT INTO payment_document(document_number, booking_code) VALUES (4, 4);
INSERT INTO payment_document(document_number, booking_code) VALUES (5, 5);

INSERT INTO discounts_codes(code, percentage, expiration_date) VALUES (1, 0.10, '2023-08-20');
INSERT INTO discounts_codes(code, percentage, expiration_date) VALUES (2, 0.20, '2024-02-17');
INSERT INTO discounts_codes(code, percentage, expiration_date) VALUES (3, 0.25, '2024-01-01');
INSERT INTO discounts_codes(code, percentage, expiration_date) VALUES (4, 0.05, '2025-03-01');
INSERT INTO discounts_codes(code, percentage, expiration_date) VALUES (5, 0.15, '2024-12-03');

INSERT INTO discount(code_discount, number_payment_document, mount) VALUES (1, 1, 1000);
INSERT INTO discount(code_discount, number_payment_document, mount) VALUES (2, 2, 2000);

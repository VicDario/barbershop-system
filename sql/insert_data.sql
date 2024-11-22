INSERT INTO shops (id, name, street, street_number, community) VALUES (5100, 'PJVBARBER SHOP', 'Amonategui', 092, 'Santiago');
INSERT INTO shops (id, name, street, street_number, community) VALUES (5200, 'VDSTYLES SHOP', 'ANDRES BELLO', 620, 'Povidencia') ;
INSERT INTO shops (id, name, street, street_number, community) VALUES (5400, 'PL BARBER SHOP', 'AVENIDA ITALIA', 850, 'Providencia') ;
INSERT INTO shops (id, name, street, street_number, community) VALUES (5600, 'FJ BARBER SHOP', 'MARACAIBO', 993, 'Santiago');
INSERT INTO shops (id, name, street, street_number, community) VALUES (5800, 'MA STYLES SHOP', 'CLAUDIO ARRAY', 421, 'Santiago');

INSERT INTO phones_shops (shop_id, phone) VALUES (5100, '964537263');
INSERT INTO phones_shops (shop_id, phone) VALUES (5100, '939431233');
INSERT INTO phones_shops (shop_id, phone) VALUES (5200, '962498726');
INSERT INTO phones_shops (shop_id, phone) VALUES (5400, '921013094');
INSERT INTO phones_shops (shop_id, phone) VALUES (5600, '978960939');
INSERT INTO phones_shops (shop_id, phone) VALUES (5800, '923948241');

INSERT INTO rrss_shops (shop_id, name, username) VALUES (5100, 'Instagram', 'pjvbarber.cl');
INSERT INTO rrss_shops (shop_id, name, username) VALUES (5100, 'Facebook', 'pjvbarber');
INSERT INTO rrss_shops (shop_id, name, username) VALUES (5200, 'Facebook', 'vd.stylescl');
INSERT INTO rrss_shops (shop_id, name, username) VALUES (5400, 'Instagram', 'pl__barbershop');
INSERT INTO rrss_shops (shop_id, name, username) VALUES (5600, 'Facebook', 'fjbarber._cl');
INSERT INTO rrss_shops (shop_id, name, username) VALUES (5800, 'Instagram', 'mastylescl_');

INSERT INTO schedule_shops (shop_id, week_day, start_time, end_time) VALUES (5100, 'Lunes', '09:00', '19:00');
INSERT INTO schedule_shops (shop_id, week_day, start_time, end_time) VALUES (5100, 'Martes', '09:00', '19:00');
INSERT INTO schedule_shops (shop_id, week_day, start_time, end_time) VALUES (5100, 'Miercoles', '09:00', '19:00');
INSERT INTO schedule_shops (shop_id, week_day, start_time, end_time) VALUES (5100, 'Jueves', '09:00', '19:00');
INSERT INTO schedule_shops (shop_id, week_day, start_time, end_time) VALUES (5100, 'Viernes', '09:00', '19:00');
INSERT INTO schedule_shops (shop_id, week_day, start_time, end_time) VALUES (5200, 'Lunes', '09:00', '19:00');
INSERT INTO schedule_shops (shop_id, week_day, start_time, end_time) VALUES (5200, 'Martes', '09:00', '19:00');
INSERT INTO schedule_shops (shop_id, week_day, start_time, end_time) VALUES (5200, 'Miercoles', '09:00', '19:00');
INSERT INTO schedule_shops (shop_id, week_day, start_time, end_time) VALUES (5200, 'Jueves', '09:00', '19:00');
INSERT INTO schedule_shops (shop_id, week_day, start_time, end_time) VALUES (5200, 'Viernes', '09:00', '19:00');
INSERT INTO schedule_shops (shop_id, week_day, start_time, end_time) VALUES (5400, 'Martes', '09:00', '19:00');
INSERT INTO schedule_shops (shop_id, week_day, start_time, end_time) VALUES (5400, 'Miercoles', '09:00', '19:00');
INSERT INTO schedule_shops (shop_id, week_day, start_time, end_time) VALUES (5400, 'Jueves', '09:00', '19:00');
INSERT INTO schedule_shops (shop_id, week_day, start_time, end_time) VALUES (5400, 'Viernes', '09:00', '19:00');
INSERT INTO schedule_shops (shop_id, week_day, start_time, end_time) VALUES (5400, 'Sabado', '09:00', '14:00');

INSERT INTO employees (rut, name, surname, picture, salary, employee_type, start_activities, category, shop_id) VALUES ('25345678-9', 'Pedro', 'Vargas', 'https://images.app.goo.gl/KWAV2UbV42WUxQZq6', 8000, 0, '2023-08-20', 'Barbero', 5100);
INSERT INTO employees (rut, name, surname, picture, salary, employee_type, start_activities, category, shop_id) VALUES ('26983090-0', 'Victor', 'Diaz', 'https://images.app.goo.gl/rYU5dEpRCEvJZAJS6', 15000, 0, '2021-02-17', 'Barbero', 5200);
INSERT INTO employees (rut, name, surname, picture, salary, employee_type, start_activities, category, shop_id) VALUES ('27321459-1', 'Pablo', 'Lopez', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3Bn2OfR0FhkDpo3xxsA1eAMHF9HCjqx7MmQ&s', 50000, 0, '2021-01-01', 'Estilista', 5100);
INSERT INTO employees (rut, name, surname, picture, salary, employee_type, start_activities, category, shop_id) VALUES ('22098341-2', 'Felipe', 'Jara', 'https://images.app.goo.gl/8eLUMepyurr6BrTV9', 12099, 0, '2022-03-01', 'Estilista', 5400);
INSERT INTO employees (rut, name, surname, picture, salary, employee_type, start_activities, category, shop_id) VALUES ('9083942-3', 'Miguel', 'Alvarez', 'https://images.app.goo.gl/LhjWhznujq2M4WY98', 60095, 0, '2021-12-03', 'Barbero', 5400);
INSERT INTO employees (rut, name, surname, picture, salary, employee_type, start_activities, shop_id) VALUES ('12849342-3', 'Manuel', 'Alvarez', 'https://images.app.goo.gl/LhjWhznujq2M4WY98', 600950, 1, '2022-12-15', 5600);

INSERT INTO schedule_employees (employee_rut, week_day, start_time, end_time) VALUES ('25345678-9', 'Lunes', '09:00', '19:00');
INSERT INTO schedule_employees (employee_rut, week_day, start_time, end_time) VALUES ('25345678-9', 'Martes', '09:00', '19:00');
INSERT INTO schedule_employees (employee_rut, week_day, start_time, end_time) VALUES ('25345678-9', 'Miercoles', '09:00', '19:00');
INSERT INTO schedule_employees (employee_rut, week_day, start_time, end_time) VALUES ('25345678-9', 'Jueves', '09:00', '19:00');
INSERT INTO schedule_employees (employee_rut, week_day, start_time, end_time) VALUES ('25345678-9', 'Viernes', '09:00', '19:00');
INSERT INTO schedule_employees (employee_rut, week_day, start_time, end_time) VALUES ('26983090-0', 'Lunes', '09:00', '19:00');
INSERT INTO schedule_employees (employee_rut, week_day, start_time, end_time) VALUES ('26983090-0', 'Martes', '09:00', '19:00');
INSERT INTO schedule_employees (employee_rut, week_day, start_time, end_time) VALUES ('26983090-0', 'Miercoles', '09:00', '19:00');
INSERT INTO schedule_employees (employee_rut, week_day, start_time, end_time) VALUES ('26983090-0', 'Jueves', '09:00', '19:00');
INSERT INTO schedule_employees (employee_rut, week_day, start_time, end_time) VALUES ('26983090-0', 'Viernes', '09:00', '19:00');

INSERT INTO skills_receptionist (employee_rut, skill) VALUES ('12849342-3', 'Habla ingles');
INSERT INTO skills_receptionist (employee_rut, skill) VALUES ('12849342-3', 'Excelente servicio al cliente');
INSERT INTO skills_receptionist (employee_rut, skill) VALUES ('12849342-3', 'Manejo de Office');

INSERT INTO certificates_employees (employee_rut, certificate) VALUES ('25345678-9', 'Fake certificate');
INSERT INTO certificates_employees (employee_rut, certificate) VALUES ('26983090-0', 'Fake certificate');
INSERT INTO certificates_employees (employee_rut, certificate) VALUES ('27321459-1', 'Fake certificate');
INSERT INTO certificates_employees (employee_rut, certificate) VALUES ('22098341-2', 'Fake certificate');
INSERT INTO certificates_employees (employee_rut, certificate) VALUES ('9083942-3', 'Fake certificate');

INSERT INTO services (code, name, base_price) VALUES (100, 'Corte de cabello', 10000);
INSERT INTO services (code, name, base_price) VALUES (200, 'Corte de barba', 8000);
INSERT INTO services (code, name, base_price) VALUES (300, 'Peinado', 6000);
INSERT INTO services (code, name, base_price) VALUES (193, 'Coloración de cabello', 50000);
INSERT INTO services (code, name, base_price) VALUES (500, 'Alisado de cabello', 25000);
INSERT INTO services (code, name, base_price) VALUES (100, 'Corte de Cabello', 10000);
INSERT INTO services (code, name, base_price) VALUES (821, 'Trenzas', 15000);
INSERT INTO services (code, name, base_price) VALUES (500, 'Alisado de cabello', 20000);
INSERT INTO services (code, name, base_price) VALUES (193, 'Coloración de cabello', 50000);
INSERT INTO services (code, name, base_price) VALUES (508, 'Peinado Formal', 25000);
INSERT INTO services (code, name, base_price) VALUES (364, 'Masaje capilar', 45000);
INSERT INTO services (code, name, base_price) VALUES (715, 'Tratamiento capilar', 30000);
INSERT INTO services (code, name, base_price) VALUES (200, 'Corte de barba', 8000);
INSERT INTO services (code, name, base_price) VALUES (653, 'Extensiones de Cabello', 120000);
INSERT INTO services (code, name, base_price) VALUES (300, 'Peinado', 6000);



INSERT INTO performs (employee_rut, service_code, is_expert) VALUES ('25345678-9', 100, TRUE);
INSERT INTO performs (employee_rut, service_code, is_expert) VALUES ('26983090-0', 200, TRUE);
INSERT INTO performs (employee_rut, service_code, is_expert) VALUES ('27321459-1', 300, TRUE);
INSERT INTO performs (employee_rut, service_code, is_expert) VALUES ('22098341-2', 400, FALSE);
INSERT INTO performs (employee_rut, service_code, is_expert) VALUES ('9083942-3', 500, FALSE);

INSERT INTO combos (combo_number, price) VALUES (1, 20000);
INSERT INTO combos (combo_number, price) VALUES (2, 25000);
INSERT INTO combos (combo_number, price) VALUES (3, 30000);
INSERT INTO combos (combo_number, price) VALUES (4, 35000);
INSERT INTO combos (combo_number, price) VALUES (5, 40000);

INSERT INTO offer_in (combo_number, service_code) VALUES (1, 100);
INSERT INTO offer_in (combo_number, service_code) VALUES (1, 200);
INSERT INTO offer_in (combo_number, service_code) VALUES (2, 300);
INSERT INTO offer_in (combo_number, service_code) VALUES (2, 400);
INSERT INTO offer_in (combo_number, service_code) VALUES (2, 500);

INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('25345678-9', 'Pedro', 'Vargas', 'Amonategui', 92, 'Santiago', '1993-08-20', 'pedrovargas@email.com', 4);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('26983090-0', 'Victor', 'Diaz', 'ANDRES BELLO', 620, 'Povidencia', '1991-02-17', 'victordiaz@email.com', 3);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('27321459-1', 'Pablo', 'Lopez', 'AVENIDA ITALIA', 850, 'Providencia', '1990-01-01', 'pablolopez@email.com', 1);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('22098341-2', 'Felipe', 'Jara', 'MARACAIBO', 993, 'Santiago', '1992-03-01', 'felipejara@email.com', 2);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('9083942-3', 'Miguel', 'Alvarez', 'CLAUDIO ARRAY', 421, 'Santiago', '1991-12-03', 'miguelalvarez@email.com', 3);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('25483920-1', 'Sofia', 'Martinez', 'LOS LEONES', 320, 'Providencia', '1995-04-12', 'sofiamartinez@email.com', 2);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('26789431-2', 'Javier', 'Fuentes', 'ALONSO DE CORDOVA', 512, 'Las Condes', '1989-10-15', 'javierfuentes@email.com', 3);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('19452345-6', 'Camila', 'Torres', 'VITACURA', 700, 'Vitacura', '1993-07-09', 'camilatorres@email.com', 4);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('22987456-7', 'Diego', 'Rojas', 'SAN IGNACIO', 150, 'Santiago', '1990-06-20', 'diegorojas@email.com', 1);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('21789453-8', 'Maria', 'Paredes', 'AVENIDA MATTA', 812, 'Santiago', '1994-11-05', 'mariaparedes@email.com', 2);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('18976432-9', 'Tomas', 'Sepulveda', 'LIRA', 402, 'Santiago', '1987-03-18', 'tomassepulveda@email.com', 3);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('27893412-0', 'Fernanda', 'Navarro', 'PROVIDENCIA', 123, 'Providencia', '1996-05-23', 'fernandanavarro@email.com', 4);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('20678342-1', 'Sebastian', 'Vidal', 'LASTARRIA', 55, 'Santiago', '1991-01-30', 'sebastianvidal@email.com', 2);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('23478965-4', 'Valentina', 'Carrasco', 'BELGICA', 622, 'Las Condes', '1992-09-08', 'valentinacarrasco@email.com', 1);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('24897613-5', 'Nicolas', 'Morales', 'PORTUGAL', 750, 'Santiago', '1990-12-14', 'nicolasmorales@email.com', 3);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('28765432-1', 'Andrea', 'Gomez', 'PEDRO DE VALDIVIA', 310, 'Providencia', '1994-08-17', 'andreagomez@email.com', 3);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('19564321-7', 'Cristian', 'Muñoz', 'ALAMEDA', 1420, 'Santiago', '1988-12-04', 'cristianmunoz@email.com', 2);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('26783214-9', 'Daniela', 'Silva', 'SAN DAMIAN', 912, 'Las Condes', '1993-05-11', 'danielasilva@email.com', 4);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('20987654-2', 'Ignacio', 'Cortes', 'RAUL LABBE', 78, 'Vitacura', '1991-03-29', 'ignaciocortes@email.com', 1);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('23476581-5', 'Jose', 'Herrera', 'NUEVA PROVIDENCIA', 220, 'Providencia', '1995-06-14', 'joseherrera@email.com', 3);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('24367821-6', 'Karla', 'Reyes', 'SUECIA', 450, 'Providencia', '1992-09-27', 'karlareyes@email.com', 2);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('27568312-4', 'Matias', 'Pino', 'RANCAGUA', 105, 'Santiago', '1990-02-18', 'matiaspino@email.com', 4);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('21987654-8', 'Antonia', 'Moreno', 'JOSE MANUEL INFANTE', 333, 'Ñuñoa', '1996-10-22', 'antoniamoreno@email.com', 1);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('26458731-0', 'Francisco', 'Araya', 'PRINCIPE DE GALES', 520, 'Las Condes', '1990-07-19', 'franciscoaraya@email.com', 2);
INSERT INTO clients (rut, name, surname, street, street_number, community, birthdate, email, complexity) VALUES ('21456378-3', 'Catalina', 'Vega', 'IRARRAZAVAL', 870, 'Ñuñoa', '1994-01-05', 'catalinavega@email.com', 3);


INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (100, '25345678-9', 5, 'Excelente servicio', '2023-08-20');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (200, '26983090-0', 4, 'Muy buen servicio', '2021-02-17');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (300, '27321459-1', 3, 'Buen servicio', '2021-01-01');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (400, '22098341-2', 2, 'Servicio regular', '2022-03-01');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (500, '9083942-3', 1, 'Mal servicio', '2021-12-03');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (437, '25483920-1', 5, 'Servicio excelente y muy profesional', '2023-07-15');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (821, '26789431-2', 4, 'Buen servicio', '2023-08-02');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (674, '19452345-6', 5, 'Me encantó el trato y la calidad', '2023-06-18');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (193, '22987456-7', 3, 'El servicio estuvo bien, pero podría mejorar', '2023-09-05');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (508, '21789453-8', 4, 'Muy buena atención, recomendado', '2023-10-01');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (364, '18976432-9', 5, 'Excelente resultado, volveré sin dudas', '2023-08-28');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (715, '27893412-0', 2, 'No cumplió con mis expectativas', '2023-07-12');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (292, '20678342-1', 4, 'Buena experiencia, muy detallistas', '2023-11-10');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (653, '23478965-4', 5, 'Increíble servicio, superó mis expectativas', '2023-09-15');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (899, '24897613-5', 3, 'El servicio fue aceptable', '2023-06-20');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (437, '28765432-1', 4, 'Atención amable y rápida', '2023-08-30');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (821, '19564321-7', 5, 'Todo impecable, volveré pronto', '2023-07-25');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (674, '26783214-9', 3, 'Bien, pero podrían mejorar algunos detalles', '2023-10-08');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (193, '20987654-2', 5, '¡Me encantó! Muy recomendable', '2023-09-01');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (508, '23476581-5', 4, 'Buena relación calidad-precio', '2023-06-10');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (364, '24367821-6', 2, 'No me gustó la atención', '2023-08-15');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (715, '27568312-4', 4, 'Excelente, aunque algo costoso', '2023-11-01');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (292, '21987654-8', 3, 'Servicio promedio, pero limpio', '2023-07-30');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (653, '26458731-0', 5, 'Muy atentos y profesionales', '2023-09-20');
INSERT INTO reviews (service_code, client_rut, score, review, date) VALUES (899, '21456378-3', 4, 'Cumplieron mis expectativas, gracias', '2023-08-25');



INSERT INTO phones_clients (client_rut, phone) VALUES ('25345678-9', '25502310');
INSERT INTO phones_clients (client_rut, phone) VALUES ('26983090-0', '250232090');
INSERT INTO phones_clients (client_rut, phone) VALUES ('27321459-1', '210130941');
INSERT INTO phones_clients (client_rut, phone) VALUES ('22098341-2', '278960939');
INSERT INTO phones_clients (client_rut, phone) VALUES ('9083942-3', '239482411');

INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (1, '2023-01-09', '25345678-9', 5100);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (2, '2021-06-02', '26983090-0', 5100);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (3, '2021-09-11', '27321459-1', 5200);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (4, '2022-02-23', '22098341-2', 5200);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (5, '2021-08-01', '9083942-3', 5400);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (6, '2024-08-01', '27321459-1', 5400);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (7, '2024-06-15', '9083942-3', 5600);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (8, '2023-02-28', '9083942-3', 5600);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (9, '2024-06-15', '25345678-9', 5100);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (10, '2022-07-20', '9083942-3', 5600);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (1, '2023-01-09', '25483920-1', 5100);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (2, '2023-02-14', '26789431-2', 5200);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (3, '2023-03-20', '19452345-6', 5300);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (4, '2023-04-18', '22987456-7', 5400);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (5, '2023-05-22', '21789453-8', 5500);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (6, '2023-06-12', '18976432-9', 5100);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (7, '2023-07-04', '27893412-0', 5200);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (8, '2023-08-25', '20678342-1', 5400);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (9, '2023-09-15', '23478965-4', 5400);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (10, '2023-10-20', '24897613-5', 5400);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (11, '2023-01-22', '28765432-1', 5100);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (12, '2023-02-10', '19564321-7', 5200);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (13, '2023-03-18', '26783214-9', 5800);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (14, '2023-04-25', '20987654-2', 5400);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (15, '2023-05-30', '23476581-5', 5600);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (16, '2023-06-14', '24367821-6', 5100);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (17, '2023-07-09', '27568312-4', 5200);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (18, '2023-08-21', '21987654-8', 5400);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (19, '2023-09-13', '26458731-0', 5400);
INSERT INTO sales_vouchers (number_voucher, date, client_rut, shop_id) VALUES (20, '2023-10-05', '21456378-3', 5800);


INSERT INTO products (code, name, price, description) VALUES (100, 'Cera para barba', 5000, 'Cera para barba');
INSERT INTO products (code, name, price, description) VALUES (200, 'Aceite para barba', 7000, 'Aceite para barba');
INSERT INTO products (code, name, price, description) VALUES (300, 'Shampoo para barba', 6000, 'Shampoo para barba');
INSERT INTO products (code, name, price, description) VALUES (400, 'Crema para barba', 8000, 'Crema para barba');
INSERT INTO products (code, name, price, description) VALUES (500, 'Tinte para barba', 10000, 'Tinte para barba');
INSERT INTO products (code, name, price, description) VALUES (600, 'Peine para barba', 3000, 'Peine especial para barba');
INSERT INTO products (code, name, price, description) VALUES (700, 'Cuchilla de afeitar', 2000, 'Cuchilla para un afeitado perfecto');
INSERT INTO products (code, name, price, description) VALUES (800, 'Espuma de afeitar', 4000, 'Espuma para un afeitado cómodo');
INSERT INTO products (code, name, price, description) VALUES (900, 'Toalla caliente', 1500, 'Toalla para tratamiento de barba');
INSERT INTO products (code, name, price, description) VALUES (1000, 'Bálsamo para barba', 7500, 'Bálsamo hidratante para barba');
INSERT INTO products (code, name, price, description) VALUES (1100, 'Shampoo hidratante', 6000, 'Shampoo para cabello seco y dañado');
INSERT INTO products (code, name, price, description) VALUES (1200, 'Acondicionador nutritivo', 7000, 'Acondicionador para fortalecer el cabello');
INSERT INTO products (code, name, price, description) VALUES (1300, 'Aceite reparador', 8000, 'Aceite para reparar puntas abiertas y proteger el cabello');
INSERT INTO products (code, name, price, description) VALUES (1400, 'Mascarilla capilar', 8500, 'Mascarilla para un cabello suave y brillante');
INSERT INTO products (code, name, price, description) VALUES (1500, 'Spray fijador', 5000, 'Spray para fijar peinados de forma duradera');

INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (1, 100, 2, 0);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (1, 200, 1, 300);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (1, 1100, 3, 0);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (2, 300, 4, 0);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (2, 400, 2, 200);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (2, 500, 1, 300);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (2, 1200, 1, 0);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (3, 600, 3, 0);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (3, 700, 2, 0);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (4, 400, 5, 0);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (4, 700, 2, 0);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (4, 800, 1, 0);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (5, 100, 3, 100);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (5, 1100, 4, 100);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (6, 300, 1, 0);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (6, 400, 3, 0);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (6, 1200, 2, 0);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (7, 500, 4, 100);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (7, 600, 1, 0);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (7, 700, 3, 0);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (8, 800, 2, 0);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (8, 1100, 3, 0);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (9, 700, 1, 0);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (9, 500, 5, 100);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (9, 600, 2, 0);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (10, 800, 2, 200);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (10, 1100, 3, 0);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (10, 700, 1, 0);
INSERT INTO sales_in (number_voucher, product_code, number, discount) VALUES (10, 500, 5, 300);


INSERT INTO sells (shop_id, product_code, stock) VALUES (5100, 100, 10);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5100, 200, 30);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5100, 300, 30);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5100, 400, 15);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5100, 500, 25);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5100, 1100, 20);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5200, 100, 50);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5200, 200, 35);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5200, 300, 40);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5200, 400, 20);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5200, 1100, 10);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5200, 1200, 10);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5400, 500, 15);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5400, 600, 25);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5400, 700, 20);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5400, 800, 30);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5400, 1200, 15);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5600, 100, 40);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5600, 200, 20);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5600, 400, 40);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5600, 700, 10);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5600, 1100, 25);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5600, 800, 30);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5800, 500, 50);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5800, 600, 35);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5800, 700, 20);
INSERT INTO sells (shop_id, product_code, stock) VALUES (5800, 800, 15);

INSERT INTO bookings (code, date, status, client_rut, shop_id) VALUES (1, '2023-08-20 09:00', 'Completed', '25345678-9', 5100);
INSERT INTO bookings (code, date, status, client_rut, shop_id) VALUES (2, '2021-02-17 11:00', 'Completed', '26983090-0', 5100);
INSERT INTO bookings (code, date, status, client_rut, shop_id) VALUES (3, '2024-01-01 13:00', 'Completed', '27321459-1', 5200);
INSERT INTO bookings (code, date, status, client_rut, shop_id) VALUES (4, '2022-03-01 14:00', 'Completed', '22098341-2', 5200);
INSERT INTO bookings (code, date, status, client_rut, shop_id) VALUES (5, '2021-12-03 15:00', 'Completed', '9083942-3', 5400);
INSERT INTO bookings (code, date, status, client_rut, shop_id) VALUES (6, '2024-03-23 12:00', 'Completed', '27321459-1', 5100);
INSERT INTO bookings (code, date, status, client_rut, shop_id) VALUES (1, '2023-08-20 09:00', 'Completed', '25483920-1', 5100);
INSERT INTO bookings (code, date, status, client_rut, shop_id) VALUES (2, '2023-08-21 14:00', 'Completed', '26789431-2', 5200);
INSERT INTO bookings (code, date, status, client_rut, shop_id) VALUES (3, '2023-08-22 11:30', 'Cancelled', '19452345-6', 5300);
INSERT INTO bookings (code, date, status, client_rut, shop_id) VALUES (4, '2023-08-23 16:00', 'Completed', '22987456-7', 5400);
INSERT INTO bookings (code, date, status, client_rut, shop_id) VALUES (5, '2023-08-24 10:00', 'Pending', '21789453-8', 5400);
INSERT INTO bookings (code, date, status, client_rut, shop_id) VALUES (6, '2023-08-25 09:00', 'Completed', '18976432-9', 5100);
INSERT INTO bookings (code, date, status, client_rut, shop_id) VALUES (7, '2023-08-26 13:00', 'Completed', '27893412-0', 5200);
INSERT INTO bookings (code, date, status, client_rut, shop_id) VALUES (8, '2023-08-27 15:00', 'Cancelled', '20678342-1', 5300);
INSERT INTO bookings (code, date, status, client_rut, shop_id) VALUES (9, '2023-08-28 17:30', 'Completed', '23478965-4', 5400);
INSERT INTO bookings (code, date, status, client_rut, shop_id) VALUES (10, '2023-08-29 18:00', 'Pending', '24897613-5', 5600);


INSERT INTO attends (booking_code, service_code, employee_rut) VALUES (1, 100, '25345678-9');
INSERT INTO attends (booking_code, service_code, employee_rut) VALUES (1, 200, '25345678-9');
INSERT INTO attends (booking_code, service_code, employee_rut) VALUES (2, 200, '22098341-2');
INSERT INTO attends (booking_code, service_code, employee_rut) VALUES (2, 400, '22098341-2');
INSERT INTO attends (booking_code, service_code, employee_rut) VALUES (3, 300, '22098341-2');
INSERT INTO attends (booking_code, service_code, employee_rut) VALUES (4, 200, '27321459-1');
INSERT INTO attends (booking_code, service_code, employee_rut) VALUES (5, 500, '9083942-3');
INSERT INTO attends (booking_code, service_code, employee_rut) VALUES (6, 500, '27321459-1');
INSERT INTO attends (booking_code, service_code, employee_rut) VALUES (1, 437, '25345678-9'); -- Pedro Vargas, Barbero, Shop 5100
INSERT INTO attends (booking_code, service_code, employee_rut) VALUES (2, 821, '26983090-0'); -- Victor Diaz, Barbero, Shop 5200
INSERT INTO attends (booking_code, service_code, employee_rut) VALUES (3, 674, '27321459-1'); -- Pablo Lopez, Estilista, Shop 5100
INSERT INTO attends (booking_code, service_code, employee_rut) VALUES (4, 193, '22098341-2'); -- Felipe Jara, Estilista, Shop 5400
INSERT INTO attends (booking_code, service_code, employee_rut) VALUES (5, 508, '9083942-3'); -- Miguel Alvarez, Barbero, Shop 5400
INSERT INTO attends (booking_code, service_code, employee_rut) VALUES (6, 364, '25345678-9'); -- Pedro Vargas, Barbero, Shop 5100
INSERT INTO attends (booking_code, service_code, employee_rut) VALUES (7, 715, '26983090-0'); -- Victor Diaz, Barbero, Shop 5200
INSERT INTO attends (booking_code, service_code, employee_rut) VALUES (8, 292, '12849342-3'); -- Manuel Alvarez, Gerente, Shop 5600
INSERT INTO attends (booking_code, service_code, employee_rut) VALUES (9, 653, '22098341-2'); -- Felipe Jara, Estilista, Shop 5400
INSERT INTO attends (booking_code, service_code, employee_rut) VALUES (10, 899, '9083942-3'); -- Miguel Alvarez, Barbero, Shop 5400

INSERT INTO payment_documents (document_number, booking_code) VALUES (1, 1);
INSERT INTO payment_documents (document_number, booking_code) VALUES (2, 2);
INSERT INTO payment_documents (document_number, booking_code) VALUES (3, 3);
INSERT INTO payment_documents (document_number, booking_code) VALUES (4, 4);
INSERT INTO payment_documents (document_number, booking_code) VALUES (5, 5);
INSERT INTO payment_documents (document_number, booking_code) VALUES (6, 6);
INSERT INTO payment_documents (document_number, booking_code) VALUES (1, 1);
INSERT INTO payment_documents (document_number, booking_code) VALUES (2, 2);
INSERT INTO payment_documents (document_number, booking_code) VALUES (3, 3);
INSERT INTO payment_documents (document_number, booking_code) VALUES (4, 4);
INSERT INTO payment_documents (document_number, booking_code) VALUES (5, 5);
INSERT INTO payment_documents (document_number, booking_code) VALUES (6, 6);
INSERT INTO payment_documents (document_number, booking_code) VALUES (7, 7);
INSERT INTO payment_documents (document_number, booking_code) VALUES (8, 8);
INSERT INTO payment_documents (document_number, booking_code) VALUES (9, 9);
INSERT INTO payment_documents (document_number, booking_code) VALUES (10, 10);


INSERT INTO discounts_codes (code, percentage, expiration_date) VALUES (1, 0.10, '2023-08-20');
INSERT INTO discounts_codes (code, percentage, expiration_date) VALUES (2, 0.20, '2024-02-17');
INSERT INTO discounts_codes (code, percentage, expiration_date) VALUES (3, 0.25, '2024-01-01');
INSERT INTO discounts_codes (code, percentage, expiration_date) VALUES (4, 0.05, '2025-03-01');
INSERT INTO discounts_codes (code, percentage, expiration_date) VALUES (5, 0.15, '2024-12-03');

INSERT INTO discounts (code_discount, payment_document_number, mount) VALUES (1, 1, 1000);
INSERT INTO discounts (code_discount, payment_document_number, mount) VALUES (2, 2, 2000);

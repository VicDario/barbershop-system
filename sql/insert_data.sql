INSERT INTO shop (id, name, street, street_number, community) VALUES (05100, 'PJVBARBER SHOP', 'Amonategui', 092, 'Santiago');
INSERT INTO shop (id, name, street, street_number, community) VALUES (05200, 'VDSTYLES SHOP', 'ANDRES BELLO', 620, 'Povidencia'); 
INSERT INTO shop (id, name, street, street_number, community) VALUES (05400, 'PL BARBER SHOP', 'AVENIDA ITALIA', 850, 'Providencia'); 
INSERT INTO shop (id, name, street, street_number, community) VALUES (05600, 'FJ BARBER SHOP', 'MARACAIBO', 993, 'Santiago');
INSERT INTO shop (id, name, street, street_number, community) VALUES (05800, 'MA STYLES SHOP', 'CLAUDIO ARRAY', 421, 'Santiago');

INSERT INTO phone_shop(shop_id, phone) VALUES (05100, '250502310');
INSERT INTO phone_shop(shop_id, phone) VALUES (05200, '250232090');
INSERT INTO phone_shop(shop_id, phone) VALUES (05400, '210130941');
INSERT INTO phone_shop(shop_id, phone) VALUES (05600, '278960939');
INSERT INTO phone_shop(shop_id, phone) VALUES (05800, '239482411');

INSERT INTO rrss_shop(shop_id, name, "user") VALUES (05100, 'Instagram', 'pjvbarber.cl');
INSERT INTO rrss_shop(shop_id, name, "user") VALUES (05200, 'Facebook', 'vd.stylescl');
INSERT INTO rrss_shop(shop_id, name, "user") VALUES (05400, 'Instagram', 'pl__barbershop');
INSERT INTO rrss_shop(shop_id, name, "user") VALUES (05600, 'Facebook', 'fjbarber._cl');
INSERT INTO rrss_shop(shop_id, name, "user") VALUES (05800, 'Instagram', 'mastylescl_');

INSERT INTO schedule_shop(shop_id, week_day, start_time, end_time) VALUES (05100, 'Lunes', '09:00', '19:00');
INSERT INTO schedule_shop(shop_id, week_day, start_time, end_time) VALUES (05200, 'Martes', '09:00', '19:00');
INSERT INTO schedule_shop(shop_id, week_day, start_time, end_time) VALUES (05400, 'Miercoles', '09:00', '19:00');
INSERT INTO schedule_shop(shop_id, week_day, start_time, end_time) VALUES (05600, 'Jueves', '09:00', '19:00');
INSERT INTO schedule_shop(shop_id, week_day, start_time, end_time) VALUES (05800, 'Viernes', '09:00', '19:00');

INSERT INTO employees(rut, name, surname_employee, picture, description_employee, salary, type_employee, start_activities, category) VALUES ('25345678-9', 'Pedro', 'Vargas', 'https://images.app.goo.gl/KWAV2UbV42WUxQZq6', 'Barbero', 80000, 'Barberia', '20-08-2023', 'Barbero');
INSERT INTO employees(rut, name, surname_employee, picture, description_employee, salary, type_employee, start_activities, category) VALUES ('26983090-0', 'Victor', 'Diaz', 'https://images.app.goo.gl/rYU5dEpRCEvJZAJS6', 'Estilista', 150000, 'Barberia', '17-02-2021', 'Barbero');
INSERT INTO employees(rut, name, surname_employee, picture, description_employee, salary, type_employee, start_activities, category) VALUES ('27321459-1', 'Pablo', 'Lopez', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3Bn2OfR0FhkDpo3xxsA1eAMHF9HCjqx7MmQ&s', 'Barbero', 500000, 'Barberia', '2021-01-01', 'Barbero');
INSERT INTO employees(rut, name, surname_employee, picture, description_employee, salary, type_employee, start_activities, category) VALUES ('22098341-2', 'Felipe', 'Jara', 'https://images.app.goo.gl/8eLUMepyurr6BrTV9', 'Estilista', 120000, 'Barberia', '01-03-2022', 'Barbero');
INSERT INTO employees(rut, name, surname_employee, picture, description_employee, salary, type_employee, start_activities, category) VALUES ('9083942-3', 'Miguel', 'Alvarez', 'https://images.app.goo.gl/LhjWhznujq2M4WY98', 'Barbero', 60000, 'Barberia', '03-12-2021', 'Barbero');

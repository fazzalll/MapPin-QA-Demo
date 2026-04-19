INSERT INTO site_master VALUES
(1, 'Green Valley Society', 'CityOps', 'Hyderabad', 500, 'Active'),
(2, 'Lake View Township', 'UrbanGrid', 'Pune', 180, 'Active'),
(3, 'Metro Extension Zone', 'SmartInfra', 'Bengaluru', 320, 'Pilot');

INSERT INTO rtu_master VALUES
(101, 1, 'RTU-GV-101', 'v1.2.3', '2024-01-15', 'Active', 25, 'SIM900001'),
(102, 1, 'RTU-GV-102', 'v1.2.3', '2024-01-16', 'Active', 25, 'SIM900002'),
(103, 1, 'RTU-GV-103', 'v1.2.1', '2024-01-17', 'Maintenance', 30, 'SIM900003'),
(201, 2, 'RTU-LV-201', 'v1.3.0', '2024-03-01', 'Active', 20, 'SIM900101'),
(202, 2, 'RTU-LV-202', 'v1.3.0', '2024-03-02', 'Active', 20, 'SIM900102'),
(301, 3, 'RTU-ME-301', 'v1.1.8', '2024-06-10', 'Pilot', 40, 'SIM900201');

INSERT INTO rtu_alert_log VALUES
(1, 103, 'MCB_TRIP', '2026-04-01 18:10:00', '2026-04-01 20:00:00', 'High', 'Resolved'),
(2, 103, 'MAINS_OFF', '2026-04-04 19:00:00', '2026-04-04 19:45:00', 'High', 'Resolved'),
(3, 103, 'CONTACTOR_FAIL', '2026-04-06 18:20:00', NULL, 'Critical', 'Open'),
(4, 201, 'DOOR_OPENED', '2026-04-07 09:00:00', '2026-04-07 09:15:00', 'Medium', 'Resolved'),
(5, 202, 'MAINS_OFF', '2026-04-07 18:40:00', '2026-04-07 19:10:00', 'High', 'Resolved'),
(6, 301, 'AUTO_MODE', '2026-04-08 18:00:00', NULL, 'Info', 'Logged');

INSERT INTO maintenance_ticket VALUES
(1001, 103, 'Contactor Failure', '2026-04-06', NULL, 'Pending Replace', 'Rakesh'),
(1002, 103, 'Power Interruption', '2026-04-04', '2026-04-04', 'Reset', 'Farah'),
(1003, 201, 'Panel Door Alert', '2026-04-07', '2026-04-07', 'Inspection', 'Vijay'),
(1004, 202, 'Mains Failure', '2026-04-07', '2026-04-08', 'Repair', 'Anil');

INSERT INTO warehouse_stock VALUES
(1, 'RTU', 8, 1, 5, '2026-04-10'),
(2, 'Contactor', 15, 2, 10, '2026-04-10'),
(3, 'MCB', 20, 1, 8, '2026-04-10');

INSERT INTO qa_test_result VALUES
(1, 101, 'MCB Alert Detection', 'PASS', '2026-03-28', 'Divya'),
(2, 101, 'Contactor Fail Detection', 'PASS', '2026-03-28', 'Divya'),
(3, 102, 'Door Open Alert', 'PASS', '2026-03-28', 'Divya'),
(4, 103, 'Power Supply Failover', 'FAIL', '2026-03-28', 'Divya'),
(5, 201, 'Auto Mode Validation', 'PASS', '2026-03-30', 'Divya'),
(6, 301, 'SIM Communication Check', 'FAIL', '2026-03-30', 'Divya');

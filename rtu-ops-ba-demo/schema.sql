CREATE TABLE site_master (
    site_id INT PRIMARY KEY,
    site_name VARCHAR(100),
    client_name VARCHAR(100),
    city VARCHAR(50),
    total_lights INT,
    deployment_status VARCHAR(30)
);

CREATE TABLE rtu_master (
    rtu_id INT PRIMARY KEY,
    site_id INT,
    serial_no VARCHAR(50),
    firmware_version VARCHAR(20),
    install_date DATE,
    status VARCHAR(30),
    lights_mapped INT,
    sim_number VARCHAR(20),
    FOREIGN KEY (site_id) REFERENCES site_master(site_id)
);

CREATE TABLE rtu_alert_log (
    alert_id INT PRIMARY KEY,
    rtu_id INT,
    alert_type VARCHAR(50),
    alert_time TIMESTAMP,
    resolved_time TIMESTAMP NULL,
    severity VARCHAR(20),
    status VARCHAR(20),
    FOREIGN KEY (rtu_id) REFERENCES rtu_master(rtu_id)
);

CREATE TABLE maintenance_ticket (
    ticket_id INT PRIMARY KEY,
    rtu_id INT,
    issue_type VARCHAR(50),
    opened_date DATE,
    closed_date DATE NULL,
    resolution_type VARCHAR(30),
    technician_name VARCHAR(100),
    FOREIGN KEY (rtu_id) REFERENCES rtu_master(rtu_id)
);

CREATE TABLE warehouse_stock (
    item_id INT PRIMARY KEY,
    item_type VARCHAR(50),
    available_qty INT,
    damaged_qty INT,
    reorder_level INT,
    last_updated DATE
);

CREATE TABLE qa_test_result (
    test_id INT PRIMARY KEY,
    rtu_id INT,
    test_case VARCHAR(100),
    test_status VARCHAR(10),
    test_date DATE,
    tester_name VARCHAR(100),
    FOREIGN KEY (rtu_id) REFERENCES rtu_master(rtu_id)
);

-- 1. Deployment overview by site
SELECT
    s.site_name,
    COUNT(r.rtu_id) AS total_rtus,
    SUM(r.lights_mapped) AS total_lights_covered
FROM site_master s
JOIN rtu_master r ON s.site_id = r.site_id
GROUP BY s.site_name
ORDER BY total_lights_covered DESC;

-- 2. Repeat-failure RTUs by alert volume
SELECT
    rtu_id,
    COUNT(*) AS total_alerts
FROM rtu_alert_log
WHERE alert_type IN ('MCB_TRIP', 'CONTACTOR_FAIL', 'MAINS_OFF')
GROUP BY rtu_id
HAVING COUNT(*) >= 2
ORDER BY total_alerts DESC;

-- 3. Open maintenance backlog by issue type
SELECT
    issue_type,
    COUNT(*) AS open_tickets
FROM maintenance_ticket
WHERE closed_date IS NULL
GROUP BY issue_type
ORDER BY open_tickets DESC;

-- 4. Average repair turnaround in days
SELECT
    AVG(closed_date - opened_date) AS avg_repair_days
FROM maintenance_ticket
WHERE closed_date IS NOT NULL;

-- 5. Replacement demand versus available RTU stock
SELECT
    (SELECT COUNT(*)
     FROM maintenance_ticket
     WHERE resolution_type = 'Pending Replace' AND closed_date IS NULL) AS replacement_needed,
    (SELECT available_qty
     FROM warehouse_stock
     WHERE item_type = 'RTU') AS available_rtu_stock;

-- 6. QA pass rate
SELECT
    ROUND(100.0 * SUM(CASE WHEN test_status = 'PASS' THEN 1 ELSE 0 END) / COUNT(*), 2) AS pass_rate_percent
FROM qa_test_result;

-- 7. Site-wise open critical alerts
SELECT
    s.site_name,
    a.alert_type,
    COUNT(*) AS open_alert_count
FROM rtu_alert_log a
JOIN rtu_master r ON a.rtu_id = r.rtu_id
JOIN site_master s ON r.site_id = s.site_id
WHERE a.status = 'Open'
GROUP BY s.site_name, a.alert_type
ORDER BY open_alert_count DESC;

-- 8. RTUs that failed QA and need attention before deployment
SELECT
    q.rtu_id,
    r.serial_no,
    q.test_case,
    q.test_status,
    q.test_date
FROM qa_test_result q
JOIN rtu_master r ON q.rtu_id = r.rtu_id
WHERE q.test_status = 'FAIL'
ORDER BY q.test_date DESC;

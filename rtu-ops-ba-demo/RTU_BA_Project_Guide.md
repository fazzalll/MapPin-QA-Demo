# RTU BA Project Guide

This guide helps you understand the RTU Operations BA Demo project, explain it in interviews, and extend it into a stronger portfolio project.

## 1. What this project is really about

This project models the kind of operational data a Business Analyst would work with in an RTU-enabled smart-lighting environment.

RTUs can be thought of as field controllers that:
- control groups of lights
- report alerts and device health events
- communicate status to a central monitoring platform
- support maintenance and operational decisions

In business terms, the project is about turning raw device, site, maintenance, stock, and QA data into usable reporting.

## 2. How to understand the project step by step

### Start with the business story
Ask yourself these questions:
- How many sites are being managed?
- How many RTUs are deployed at each site?
- How many lights does each RTU support?
- Which RTUs are failing repeatedly?
- Do we have enough spare stock for replacements?
- Are devices passing in-house QA before deployment?

That is the heart of the project.

### Then understand the tables

#### `site_master`
This is the site-level view.
It tells you:
- which sites exist
- which client owns them
- city
- total lights
- deployment status

#### `rtu_master`
This is the device-level view.
It tells you:
- which RTUs are deployed
- which site they belong to
- firmware version
- install date
- current status
- number of lights mapped
- SIM number

#### `rtu_alert_log`
This is the event and device-health view.
It tells you:
- what alert happened
- which RTU raised it
- when it happened
- whether it was resolved
- severity and status

#### `maintenance_ticket`
This is the service and support view.
It tells you:
- what issue was raised
- when it was opened
- when it was closed
- how it was resolved
- who handled it

#### `warehouse_stock`
This is the inventory and spare-parts view.
It tells you:
- how many spare RTUs or parts are available
- how many are damaged
- reorder level

#### `qa_test_result`
This is the in-house testing and validation view.
It tells you:
- which RTUs were tested
- what test case was run
- pass or fail result
- test date
- tester name

## 3. How to read the SQL queries

### Query 1: Deployment overview by site
This tells leadership:
- how many RTUs are deployed at each site
- how many lights are covered

Business meaning:
This is a deployment coverage report.

### Query 2: Repeat-failure RTUs
This identifies devices that are unstable.

Business meaning:
These RTUs may need replacement, deeper analysis, or preventive maintenance.

### Query 3: Open maintenance backlog
This shows open issues by category.

Business meaning:
This helps service teams prioritize where effort is needed.

### Query 4: Average repair turnaround
This measures how long service issues take to close.

Business meaning:
This is a maintenance efficiency KPI.

### Query 5: Replacement demand vs stock available
This compares how many RTUs need replacement with how many spares are in stock.

Business meaning:
This supports stock planning and operational readiness.

### Query 6: QA pass rate
This shows how many in-house validation tests passed.

Business meaning:
This is a quality readiness KPI before deployment.

### Query 7: Site-wise open critical alerts
This identifies risky sites and unresolved issues.

Business meaning:
This helps operations managers see where real service risk exists.

### Query 8: RTUs that failed QA
This identifies devices that should not move forward without attention.

Business meaning:
This supports deployment readiness and quality control.

## 4. What a BA actually does in this kind of project

A BA here does not just make charts.
A BA helps turn operational questions into structured reporting and decision support.

Typical responsibilities:
- gather requirements from operations, maintenance, QA, and leadership teams
- define what KPIs matter
- identify which source tables and fields are needed
- write or support SQL logic for reporting
- validate whether dashboard outputs match real operational expectations
- convert device-level data into stakeholder-friendly summaries
- help teams act on failures, maintenance backlog, stock shortages, and QA gaps

## 5. What daily BA work can sound like

A realistic daily-work explanation:

- review operational data from deployed RTUs and sites
- monitor repeated alerts and open issues
- analyze maintenance backlog and repair trends
- track stock readiness for replacements
- validate QA pass/fail reporting before deployment
- update SQL-based reports and dashboard data inputs
- discuss trends with operations and support teams
- prepare weekly KPI summaries for leadership or project reviews

## 6. How to explain the $240K annual operations line

A safe and strong explanation is:

> I supported the reporting and operational visibility for deployments that collectively represented about $240K in annual operational scope. My work was on the business-analysis side, where I helped structure deployment, maintenance, stock, and QA data into usable KPI views for teams and leadership.

This is better than saying you directly generated revenue, unless you can defend that clearly.

## 7. How to extend this project further

You can extend this project in these ways.

### Add more data
Add fields such as:
- site SLA category
- downtime minutes
- warranty status
- preventive maintenance due date
- replacement cost
- technician region

### Add more queries
Examples:
- RTUs with the highest downtime
- site-wise SLA breach count
- monthly maintenance cost trend
- firmware-version-based failure comparison
- technician-wise closure rate

### Add more dashboards
New dashboard ideas:
- SLA compliance dashboard
- firmware quality dashboard
- regional maintenance performance dashboard
- cost and replacement planning dashboard

### Add alert severity logic
Create rules such as:
- critical if contactor fail is unresolved for more than 24 hours
- medium if repeated mains-off events exceed 3 in a week

### Add a process flow
Document the operational flow:
1. RTU alert occurs
2. alert enters central system
3. maintenance ticket gets created
4. service action taken
5. ticket closed or replacement requested
6. stock updated
7. leadership KPI updated

That makes the project much more BA-oriented.

## 8. What to learn next if you want to grow this

### Learn more SQL
Focus on:
- joins
- group by
- case when
- date calculations
- window functions later

### Learn Tableau basics
Focus on:
- KPI cards
- bar charts
- line trends
- filters
- calculated fields
- dashboard storytelling

### Learn operational metrics
Understand:
- uptime
- downtime
- MTTR
- backlog
- failure frequency
- stock readiness
- pass rate

### Learn stakeholder framing
Practice answering:
- What does the operations team care about?
- What does maintenance care about?
- What does QA care about?
- What does leadership want to see?

## 9. How to speak about this in interview

A simple interview answer:

> One project I worked on involved organizing RTU operational data across deployment, maintenance, stock, and QA into a structured reporting framework. The goal was to help teams monitor device health, repeated failures, open maintenance issues, stock readiness, and test pass rates in one place. I used SQL-based reporting and KPI thinking to support operational visibility and better planning across multi-site deployments.

## 10. Seven-day learning plan

### Day 1
Read the schema and understand what each table represents.

### Day 2
Study each SQL query and rewrite it in your own words.

### Day 3
Connect each query to a business KPI.

### Day 4
Sketch what the Tableau dashboard pages would look like.

### Day 5
Write 3 resume bullets and 3 interview stories from this project.

### Day 6
Add 2 more SQL queries of your own.

### Day 7
Practice explaining the full project in 1 minute and 2 minutes.

## 11. Best takeaway

The most important lesson from this project is this:

A BA adds value by taking raw operational data and turning it into clarity.

In this RTU example, that means helping stakeholders understand:
- what is deployed
- what is failing
- what needs maintenance
- what stock is available
- what is ready for deployment
- and where action is needed next

# Dashboard Spec: RTU Operations and Maintenance Visibility

## Audience
- Operations managers
- Maintenance team leads
- QA and deployment teams
- Business and leadership stakeholders

## Dashboard 1: Deployment Overview
**Purpose:** Show scale and coverage of deployed RTUs.

**KPI cards**
- Total RTUs deployed
- Total lights covered
- Active sites
- Average lights per RTU

**Views**
- Site-wise RTU count bar chart
- Lights covered by site
- RTU status split: Active, Maintenance, Pilot

## Dashboard 2: Device Health and Maintenance
**Purpose:** Identify unstable devices and service backlog.

**KPI cards**
- Open critical alerts
- Repeat-failure RTUs
- Open maintenance tickets
- Average repair turnaround

**Views**
- Alert trend by week/month
- Top failing RTUs
- Open tickets by issue type
- Site heatmap for open incidents

## Dashboard 3: Stock and QA Readiness
**Purpose:** Connect replacement readiness with quality gates.

**KPI cards**
- RTU stock available
- Replacement demand
- QA pass rate
- Failed QA devices pending review

**Views**
- Stock available vs reorder level
- Pass/fail by test case
- Failed RTUs pending redeployment

## BA talking points for interview
This project reflects daily BA work in an operational IoT environment:

1. gathered reporting requirements from operations, maintenance, and QA teams
2. defined business-friendly KPIs from raw RTU and service data
3. structured source tables needed for SQL reporting
4. translated alert, maintenance, and stock data into leadership views
5. used dashboard outputs to support maintenance prioritization and stock planning

## Resume-friendly explanation
Built SQL-based reporting and Tableau-ready KPI views for RTU-enabled smart-lighting operations, helping teams monitor device health, maintenance backlog, stock readiness, and QA validation across deployments supporting approximately $240K annually.

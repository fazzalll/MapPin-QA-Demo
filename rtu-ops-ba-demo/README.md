# RTU Operations BA Demo

A small portfolio-style project that shows the kind of daily Business Analyst work behind RTU-enabled smart-lighting operations.

## What this project demonstrates

This demo models the operational data a BA would work with in an RTU and centralized monitoring environment:

- site and RTU deployment tracking
- alert and incident analysis
- maintenance backlog and repair turnaround
- warehouse stock and replacement demand
- QA validation pass/fail reporting
- KPI design for operations and leadership reviews

## Business context

In RTU-based lighting deployments, each site can have multiple RTUs controlling and monitoring groups of lights. The central operations team needs visibility into:

- how many RTUs are deployed by site
- how many lights each RTU supports
- which RTUs are raising repeated alerts
- which maintenance tickets are still open
- whether spare stock is enough for pending replacements
- which RTUs have passed in-house QA before deployment

This is the layer where a BA adds value by structuring data into usable SQL reports and dashboard-ready KPI views.

## Files

- `schema.sql` - core tables for RTUs, sites, alerts, maintenance, stock, and QA results
- `sample_data.sql` - mock data for a few sites and devices
- `queries.sql` - BA-style SQL queries for common operational reporting needs
- `dashboard_spec.md` - Tableau/KPI dashboard plan and interview framing

## Interview-friendly summary

A BA on this kind of project would work across operations, deployment, maintenance, QA, and leadership teams to convert raw device and service data into decision-ready reporting.

Example metrics:

- Total RTUs deployed
- Total lights covered
- Repeat-failure RTUs
- Mean time to repair
- Open maintenance backlog
- Spare stock vs replacement demand
- QA pass rate by batch

## Suggested resume angle

Designed SQL-based operational reporting and KPI views for RTU-enabled smart-lighting deployments, improving visibility into device health, maintenance backlog, stock readiness, and QA validation across multi-site operations.

# Financial Performance & Variance Analysis (SaaS Enterprise)

*A Business Analyst project simulating corporate financial performance, budget vs. actual variance analysis, forecasting accuracy, and executive reporting using SQL, Power BI, and structured documentation.*

---

![SQL](https://img.shields.io/badge/SQL-Analysis-blue?style=for-the-badge)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow?style=for-the-badge)
![Business Analyst](https://img.shields.io/badge/Business%20Analysis-Documentation-green?style=for-the-badge)
![FP&A](https://img.shields.io/badge/FP%26A-Variance%20Analysis-purple?style=for-the-badge)
![Data Modeling](https://img.shields.io/badge/Data%20Modeling-SaaS-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-In%20Progress-lightgrey?style=for-the-badge)

---

## Repository navigation

This project is organized into clear, structured folders to make exploration easy:

- **`/data`** – Raw and cleaned datasets used for financial modeling and variance analysis  
- **`/sql`** – SQL scripts for data cleaning, KPI calculations, variance logic, and financial analysis  
- **`/docs`** – Business Analyst documentation (requirements, workflow map, data dictionary, findings)  
- **`/powerbi`** – Planned Power BI dashboard files and design assets  
- **`README.md`** – Full project overview, objectives, methodology, and analysis framework  

---

## Executive summary

This project simulates the financial performance of a large enterprise SaaS company over a 36‑month period. It demonstrates end‑to‑end Business Analyst and Data Analyst capabilities, including data modeling, SQL analysis, KPI development, variance investigation, forecasting accuracy, and executive‑level reporting.

The goal is to replicate a real corporate finance environment where leadership needs clear, reliable insights to understand revenue trends, cost behaviour, budget performance, and operational efficiency.

---

## Project objectives

This project was designed to showcase:

- Accurate financial storytelling using data  
- Budget vs. actual variance analysis  
- Forecast accuracy measurement  
- KPI development for SaaS performance  
- SQL‑based data cleaning, modeling, and calculations  
- Executive‑ready reporting and recommendations  
- Business Analyst documentation and workflow clarity  

---

## Dataset overview

The dataset includes 36 months of simulated SaaS financial data across:

- **Revenue streams:** subscription, usage‑based, onboarding, enterprise contracts  
- **Expense categories:** payroll, hosting, marketing, operations, G&A  
- **Departments:** Sales, Marketing, Product, Engineering, Support, Finance  
- **Cost centers:** team‑level breakdowns  
- **Budget & forecast:** monthly planned vs. actual values  
- **Variance fields:** favorable/unfavorable, rate vs. volume drivers  

Data exists in both raw and cleaned formats to demonstrate transformation logic.

---

## SQL analysis

SQL scripts in the `/sql` folder include:

- Data cleaning and normalization  
- Revenue and expense aggregation  
- Budget vs. actual variance calculations  
- Forecast accuracy formulas  
- Gross margin and operating margin KPIs  
- Anomaly detection (month‑over‑month spikes/drops)  

These scripts replicate the type of financial analysis performed in enterprise environments.

---

## KPIs and metrics

Key performance indicators include:

- **MRR (Monthly Recurring Revenue)**  
- **ARR (Annual Recurring Revenue)**  
- **Gross margin %**  
- **Operating margin %**  
- **Budget variance %**  
- **Forecast accuracy %**  
- **Departmental spend vs. budget**  
- **Revenue per customer / per product line**  

Each KPI is calculated using SQL and documented for clarity.

---

## Variance analysis framework

### Budget vs. actual variance

- Favorable (F)  
- Unfavorable (U)  
- Zero variance  

### Volume vs. rate drivers

- **Volume:** quantity changes  
- **Rate:** price or cost changes  

### Forecast vs. actual

- Accuracy %  
- Error direction  
- Error magnitude  

This mirrors real corporate FP&A methodology.

---

## Insights and findings (simulated)

Examples of insights generated from the analysis:

- Marketing overspend in Q2 led to a 12% unfavorable variance.  
- Engineering payroll increased due to headcount expansion, impacting operating margin.  
- Subscription revenue grew steadily, but enterprise contracts showed volatility.  
- Forecast accuracy improved from 78% to 91% after model adjustments.  
- Hosting costs spiked due to increased usage volume, not rate changes.  

These insights demonstrate how data informs financial decision‑making.

---

## Dashboard design (planned)

A Power BI dashboard will be added to the `/powerbi` folder.

### Page 1 – Executive summary

- Total revenue, expenses, margin  
- Year‑over‑year and month‑over‑month trends  
- High‑level variance indicators  

### Page 2 – Budget vs. actual

- Departmental variance  
- Cost center drill‑downs  
- Favorable vs. unfavorable heatmap  

### Page 3 – Forecast accuracy

- Forecast vs. actual by month  
- Error magnitude  
- Accuracy trend line  

### Page 4 – Revenue deep dive

- Revenue by product line  
- Customer segments  
- Churn and expansion indicators  

### Page 5 – Anomaly detection

- Outlier months  
- Variance drivers  
- Alerts for spikes/drops  

This section will be updated once the dashboard is complete.

---

## Business Analyst documentation

Located in the `/docs` folder:

- Requirements document  
- Workflow map  
- Data dictionary  
- Findings and recommendations  
- Assumptions and constraints  

These artifacts demonstrate structured analytical thinking and communication.

---

## Tech stack

- **SQL** – cleaning, modeling, KPI logic  
- **Power BI** – dashboard design (planned)  
- **Excel/CSV** – dataset creation  
- **Documentation** – BA workflow, requirements, findings  

---

## About this project

This project demonstrates Business Analyst and Data Analyst capabilities across financial modeling, SQL analysis, variance investigation, forecasting, and executive reporting. It simulates the type of work performed in SaaS finance, FP&A, and corporate analytics teams.

---

## Future enhancements

Planned improvements to continue expanding the project:

- Add full Power BI dashboard with executive summary and drill‑downs  
- Implement DAX measures for advanced financial modeling  
- Add Python notebook for automated variance detection and forecasting  
- Expand dataset with customer‑level revenue and churn behavior  
- Add unit tests for SQL transformations  
- Include scenario modeling (best case, worst case, expected)  
- Add interactive documentation using Markdown diagrams  

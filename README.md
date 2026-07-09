# Website Sales Performance Analysis

## Project Overview

This project analyses customer behaviour across an e-commerce website using **BigQuery SQL** and **Power BI**.

The aim was to understand how users progress through the sales funnel, identify where customers drop off, evaluate the performance of different traffic sources, and analyse revenue generated from website visitors.

The results were then visualised in an interactive Power BI dashboard to provide clear business insights.

---

## Tools Used

- BigQuery SQL
- Google Cloud Platform (BigQuery)
- Power BI
- GitHub

---

## Business Questions

This project answers the following questions:

- How many users reach each stage of the sales funnel?
- What are the conversion rates between funnel stages?
- Which traffic sources generate the highest conversions?
- How long does it take users to complete a purchase?
- What is the average order value?
- How much revenue is generated per visitor?

---

## Dataset

The dataset contains simulated website events including:

- Page Views
- Add to Cart
- Checkout Started
- Payment Information
- Purchases

Each event includes information such as:

- User ID
- Event Type
- Event Date
- Traffic Source
- Purchase Amount

---

# SQL Analysis

## 1. Sales Funnel Analysis

Calculated the number of unique users reaching each stage of the purchasing journey.

**Key Metrics**

- Page Views
- Add to Cart
- Checkout Start
- Payment Information
- Purchases

---

## 2. Conversion Rate Analysis

Calculated conversion rates between each funnel stage including:

- View → Cart
- Cart → Checkout
- Checkout → Payment
- Payment → Purchase
- Overall Conversion Rate

---

## 3. Traffic Source Performance

Compared customer behaviour across different acquisition channels.

Metrics analysed:

- Visitors
- Add to Cart
- Purchases
- Cart Conversion Rate
- Purchase Conversion Rate

---

## 4. Customer Journey Analysis

Measured how long customers take to complete each stage of the purchasing process.

Metrics:

- Average View → Cart Time
- Average Cart → Purchase Time
- Average Total Journey Time

---

## 5. Revenue Analysis

Calculated business performance metrics including:

- Total Revenue
- Total Orders
- Average Order Value
- Revenue per Buyer
- Revenue per Visitor

---

# Power BI Dashboard

The SQL outputs were imported into Power BI to build an interactive dashboard.

The dashboard includes:

- KPI Cards
- Sales Funnel
- Revenue by Traffic Source
- Conversion Rates
- Customer Journey Metrics
- Revenue Summary

---

## Key Insights

Example business insights include:

- Most users leave the website before reaching checkout.
- Organic Search generated the highest number of purchases.
- Average Order Value highlights customer spending behaviour.
- Revenue per Visitor helps evaluate marketing effectiveness.
- Funnel analysis identifies the biggest drop-off points.

---

## Repository Structure

```
website-sales-analysis/
│
├── data/
│   └── sample_data.csv
│
├── sql/
│   ├── 01_sales_funnel.sql
│   ├── 02_conversion_rates.sql
│   ├── 03_traffic_source_analysis.sql
│   ├── 04_customer_journey.sql
│   └── 05_revenue_analysis.sql
│
├── powerbi/
│   ├── Website Sales Dashboard.pbix
│   └── dashboard.png
│
├── images/
│   ├── funnel.png
│   ├── revenue.png
│   └── traffic_sources.png
│
└── README.md
```

---

## Skills Demonstrated

- SQL
- Common Table Expressions (CTEs)
- Conditional Aggregation
- Funnel Analysis
- Business Analytics
- Data Cleaning
- KPI Development
- Power BI Dashboard Design
- Data Visualisation
- Business Insight Generation

---

## Future Improvements

Potential future enhancements include:

- Customer segmentation
- Device-level analysis
- Monthly sales trends
- Cohort analysis
- Customer lifetime value (CLV)
- Retention analysis
- Predictive sales forecasting

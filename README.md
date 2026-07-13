# E-Commerce Sales Funnel Analysis

## Project Overview

This project analyses customer behaviour across an e-commerce website using **BigQuery SQL** and **Tableau**.

The aim was to understand how users progress through the sales funnel, identify where customers drop off, evaluate the performance of different traffic sources, and analyse revenue generated from website visitors.

The results were then visualised in an interactive Tableau dashboard to provide clear business insights.

---

## Tools Used

- BigQuery SQL
- Google Cloud Platform (BigQuery)
- Tableau
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

# Tableau Dashboard

The SQL outputs were imported into Tableau to build an interactive dashboard.

The dashboard includes:

- KPI cards (Visitors, Buyers, Revenue and Average Order Value)
- Sales Funnel visualisation
- Purchases by Traffic Source
- Conversion Rate summary
- Average Customer Journey metrics

---

## Key Insights

- Over 5,000 visitors entered the sales funnel, with 826 completing a purchase.
- The largest customer drop-off occurred between the Page View and Add to Cart stages.
- Organic traffic generated the highest number of purchases.
- Customers took approximately 25 minutes on average to complete their purchasing journey.
- The average order value was £106.51.

---

## Repository Structure

```
Website-Sales-Analysis-Project/
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
├── Tableau/
│   ├── Website Sales Dashboard.twb
│   └── dashboard.png
│
├── images/
│   ├── funnel_chart.png
│   ├── traffic_sources.png
│   └── conversion_rates.png
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
- Tableau Dashboard Design
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

# 🎥 Streaming Industry KPI Dashboard (2018–2024)

A Power BI dashboard project analyzing the performance of five major streaming platforms using real-world data.

---

## 📌 Project Objective

This project benchmarks the business performance of **Netflix, Disney+, Amazon Prime Video, WBD (HBO Max), and Apple TV+** from 2018 to 2024 using 5 key metrics:
- Total Revenue
- Subscriber Count
- ARPU (Average Revenue per User)
- Churn Rate
- Customer Lifetime Value (CLTV)

The goal is to uncover competitive trends and strategic performance differences across the evolving streaming landscape.

---
## 📊 Key Insights

- 📈 **Netflix** consistently leads the market ever since the first appearance of the streaming business.
- 📉 **Amazon Prime** is catching the leader at a fast pace thanks to its alternative business model.
- 📉 **Disney+** saw a decline in subscribers after 2023, yet maintained strong ARPU due to pricing models.
- ⚖️ **WBD** holds a stable position, but lacks momentum in both subscriber growth and value creation.
- 📊 **Apple TV+** shows steady ARPU growth, but still lags behind in scale and long-term user retention.
  
---

## 🛠️ Tools Used

- **Power BI**: Visualization & dashboarding
- **Python (pandas)**: Data wrangling, enrichment, and KPI calculation
- **Excel**: Manual data sourcing & formatting
- **SQL **: For queries

---
## 🧭 How to Use

### 1. Explore the Power BI Dashboard
- Download the Power BI report:  
  [Download Streaming_KPI_Dashboard.pbix](https://github.com/muhammedbaris/Data_Analysis/blob/Financial-Performance-Analytics-for-Streaming-Companies/Streaming_KPI_Dashboard.pbix)
- Open it in **Power BI Desktop**
- Interact with KPI visuals by choosing Years and Companies:
  - Revenue trends
  - Subscriber growth
  - ARPU (Average Revenue per User)
  - Annual Churn Rate
  - Customer Lifetime Value (CLTV)
  - Market comparison (TOP5 vs. TOTAL)

### 2. Take a Look at the Report (PDF)
- Read the executive summary and analysis walkthrough
- Designed to be recruiter-friendly and presentable as a case study
- [Download the PDF Report](https://github.com/muhammedbaris/Data_Analysis/blob/Financial-Performance-Analytics-for-Streaming-Companies/Streaming_KPI_Report.pdf)

### 3. Review the Data
- All data is based on public estimates (Macrotrends, Statista, Wikipedia, DemandSage, Business of Apps)
- You can view or download the final dataset:
 - [`All_Data.xlsx`](Data/All_Data.xlsx)

### 4. Run the Python Notebook (Optional)
- Rebuild the KPI dataset from scratch in Jupyter/Colab
- Understand how Revenue, Subscribers, and Churn were modeled per platform and year
- [`Streaming_KPI_Notebook.ipynb`](Notebooks/Streaming_KPI_Notebook.ipynb)

### 5. Query the Data Using SQL (Optional)
- Use the SQL script for advanced queries and analytics:
  - Revenue by year
  - Average churn per platform
  - Top company by revenue
  - Churn segmentation
- [`▶ View SQL Queries`](sql/streaming_kpi_queries.sql)


---

## 📷 Screenshots

| Visual | Description |
|--------|-------------|
| ![](Visuals/Dashboard.png) | Dashboard |
| ![](Visuals/1_Total_Revenue_with_TOP5_and_TOTAL.png) | Revenue by company with TOP5 and TOTAL |
| ![](Visuals/2_Total_Revenue.png) | Revenue by company  |
| ![](Visuals/3_Total_Subscribers.png) | Subscriber growth trend per platform |
| ![](Visuals/4_ARPU.png) | Average Revenue Per User over time |
| ![](Visuals/5_Churn.png) | Annual churn rates based on external benchmarks |
| ![](Visuals/6_CLTV.png) | Customer Lifetime Value comparison by year |
---

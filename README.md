# SQL Data Warehouse and Analytics Project  
This end-to-end portfolio project demonstrates how to build a modern data warehouse and derive actionable insights using **Microsoft SQL Server**. It showcases industry best practices in **data engineering, modeling, and analytics**, aligned with the **Medallion Architecture** (Bronze → Silver → Gold).

---

## Data Architecture – Medallion Layers

![architecture](https://github.com/user-attachments/assets/80ef95db-e901-401d-9c0d-b5e70f63827f)

### Bronze Layer
- Ingests **raw data** from CSVs (ERP & CRM systems).
- No transformations applied.
- Acts as the staging layer for traceability.

### Silver Layer
- Applies **data cleaning**, **standardization**, and **normalization**.
- Prepares data for analytical processing.

### Gold Layer
- Creates **Star Schema** with **Fact and Dimension tables**.
- Final business-ready data for reporting and insights.

---

## Project Overview

This project covers:

- **Data Engineering**: Design and build a SQL Server-based data warehouse.
- **ETL Pipelines**: Extract, clean, and load data through layered SQL workflows.
- **Data Modeling**: Star schema optimized for query performance.
- **Data Analytics**: SQL-based analysis for sales, product, and customer insights.

---

## Skills Demonstrated

- SQL Development & Optimization  
- ETL Pipeline Creation  
- Data Modeling (Star Schema)  
- Medallion Architecture Implementation  
- Data Cleansing & Integration  
- Analytical Reporting

---

## Project Objectives

### Data Warehouse Development
- Import and integrate ERP and CRM CSV datasets.
- Cleanse and resolve inconsistencies before analysis.
- Model unified schema for downstream analytics.
- Scope limited to latest snapshot (no historical tracking).

### Analytics & Reporting
- Generate insights on:
  - Customer behavior
  - Product performance
  - Sales trends
- Use SQL queries for decision-ready metrics.

---

## Repository Structure

```
data-warehouse-project/
│
├── datasets/                     # Source CSV files (ERP and CRM)
├── docs/                         # Architecture, data flow, and modeling documents
│   ├── etl.drawio
│   ├── data_architecture.drawio
│   ├── data_flow.drawio
│   ├── data_models.drawio
│   ├── data_catalog.md
│   └── naming-conventions.md
│
├── scripts/                      # SQL scripts organized by layer
│   ├── bronze/                   # Raw data ingestion
│   ├── silver/                   # Data cleaning and transformation
│   └── gold/                     # Analytical model creation
│
├── tests/                        # Data quality and validation scripts
├── README.md                     # Project overview and setup guide
├── LICENSE
├── .gitignore
└── requirements.txt              # (Optional) Any dependencies or tool references
```
---

## 👨‍💻 Author

**Sainadh Bahadursha**  
M.Sc in AI & ML | Data Science Enthusiast | Former Assistant Professor  
🔗 [LinkedIn](https://www.linkedin.com/in/sainadh-bahadursha-67b121171/) | 💻 [GitHub](https://github.com/Sainadh-Bahadursha)

---

## Acknowledgements
This project was inspired by the SQL Data Warehouse and Analytics course by (Data with Baraa)[https://www.youtube.com/watch?v=9GVqKuTVANE] on YouTube.
Big thanks for making such quality content available to learners!

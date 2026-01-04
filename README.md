# 📺 NETFLIX ELT DATA PIPELINE

## 📌 Overview

This project implements an **end-to-end ELT data pipeline** for Netflix datasets using **AWS S3, Snowflake, and dbt**. The pipeline ingests raw data, applies transformations using dbt, and builds analytics-ready **fact and dimension tables**, including **SCD Type 2 snapshots**.

---

## 🏗️ Architecture

**Source → Data Lake → Warehouse → Transform → Analytics**

* **AWS S3 (LocalStack)** – Raw data landing (Data Lake)
* **Snowflake** – Data Warehouse
* **dbt** – Transformations, testing, snapshots, and modeling

---

## 🛠️ Tech Stack

* AWS S3 (via LocalStack)
* Snowflake
* dbt (dbt-core, dbt-snowflake)
* Python
* SnowSQL

---

## 📂 Data Layers

* **Raw Landing Layer** – Original ingested data
* **Staging Layer** – Copy of raw data for safety
* **Dev Layer** – Transformed data using dbt (facts & dimensions)

---

## 🔁 dbt Features Used

* Models (staging, fact, dimension)
* Materializations (view, table, incremental, ephemeral)
* Seeds (static reference data)
* Sources (raw data definitions)
* Snapshots (SCD Type 2)
* Tests (generic & singular)
* dbt_utils package

---

## ⚙️ Pipeline Flow

1. Upload CSV data to **AWS S3 (LocalStack)**
2. Load data into **Snowflake RAW tables**
3. Transform data using **dbt staging models**
4. Build **fact & dimension tables**
5. Implement **incremental models**
6. Track history using **dbt snapshots (SCD2)**
7. Apply **data quality tests**

---

## 📊 Key Outcomes

* Analytics-ready star schema
* Incremental fact tables
* Historical tracking using SCD Type 2
* Modular, scalable ELT design

---

## 📚 References

* Netflix Dataset
* dbt Documentation
* Snowflake Documentation

---

✅ This project demonstrates **modern data engineering best practices** using ELT, dbt modeling, testing, and snapshots.

In progress......
---

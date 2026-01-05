# 📺 NETFLIX ELT DATA PIPELINE

## 📌 Project Overview

This project implements a **modern ELT data pipeline** for Netflix datasets using **AWS S3, Snowflake, and dbt**. The pipeline ingests raw data, transforms it using dbt, and builds analytics-ready **fact and dimension tables**, including **incremental models and SCD Type-2 snapshots**.

---

## 🏗️ Architecture

**Source → S3 (Data Lake) → Snowflake (Warehouse) → dbt (Transform) → Analytics**

---

## 🛠️ Tech Stack

* **AWS S3 (LocalStack)** – Raw data landing (Data Lake)
* **Snowflake** – Data Warehouse
* **dbt (dbt-core, dbt-snowflake)** – Transformations & modeling
* **Python, SnowSQL**

---

## 📂 Data Layers

* **Raw Landing Layer** – Original ingested data
* **Staging Layer** – Copy of raw data for safety & reprocessing
* **Dev Layer** – Transformed data (facts & dimensions via dbt)

---

## 🔁 dbt Concepts Used

* Models (staging, fact, dimension)
* Materializations: `view`, `table`, `incremental`, `ephemeral`
* Seeds (static reference data)
* Sources (raw table definitions)
* Snapshots (SCD Type-2)
* Tests (generic & singular)
* Macros (reusable SQL logic)
* dbt_utils package

---

## ⚙️ Pipeline Workflow

1. Store raw CSV data in **AWS S3 (LocalStack)**
2. Load data into **Snowflake RAW tables**
3. Create **staging models** using dbt
4. Build **fact & dimension tables**
5. Implement **incremental fact tables**
6. Track history using **SCD Type-2 snapshots**
7. Apply **data quality tests**
8. Generate **dbt documentation**

---

## 🧪 Testing & Quality

* **Generic Tests**: `unique`, `not_null`, `relationships`, `accepted_values`
* **Singular Tests**: Custom SQL-based validations
* Execute tests using:

```bash
dbt test
```

---

## 📸 Snapshots (SCD Type-2)

* Implemented using dbt snapshots
* Tracks historical changes with `dbt_valid_from` & `dbt_valid_to`
* Stored in a dedicated **SNAPSHOT schema**

---

## 📄 Documentation & Analysis

* Generate docs:

```bash
dbt docs generate
dbt docs serve
```

* Ad-hoc analysis supported via `/analyses` folder

---

## 📚 References

* Netflix Dataset
* dbt Documentation
* Snowflake Documentation

---

✅ This project demonstrates **end-to-end ELT, dbt best practices, incremental processing, SCD-2 handling, testing, and documentation**.

---

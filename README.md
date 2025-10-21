# 📈 Bike Buyers Data Analysis Project

## Table of Contents

- [Project Overview💡](#-project-overview)
- [Data Source💾](#-data-source)
- [Tools🛠️](#-tools)
- [Data Cleaning and Preparation🧹](#-data-cleaning-and-preparation)
- [Exploratory Data Analysis (EDA)🔍](#-exploratory-data-analysis-eda)
- [Data Analysis💻](#-data-analysis)
- [Results and Findings📊](#-results-and-findings)
- [Recommendations✅](#-recommendations)
- [Limitations🚧](#-limitations)

---

## 💡 Project Overview

This project provides a comprehensive analysis of the Bike Buyers dataset. The primary goal is to identify the key factors that influence a customer's decision to purchase a bicycle by cleaning, analyzing, and visualizing the data.

By developing a detailed profile of the ideal customer, this analysis aims to provide actionable insights for the marketing department to launch more effective, targeted campaigns and ultimately increase sales.

---

## 💾 Data Source

The dataset for this project was sourced from Kaggle and contains 1000 records of potential customers with various demographic and lifestyle attributes.

* **Dataset:** [Bike Buyers Dataset on Kaggle](https://www.kaggle.com/datasets/heeraldedhia/bike-buyers)

---

## 🛠️ Tools

* **SQL (T-SQL)**: Used for data cleaning, transformation, and in-depth analysis.
* **Microsoft Power BI**: Used for creating interactive dashboards and visualizing the findings.

---

## 🧹 Data Cleaning and Preparation

In the initial data preparation phase, the following steps were performed using T-SQL:

1.  **Data Loading and Inspection**: The dataset was loaded into a SQL Server database for initial review of data types and structure.
2.  **Handling Missing Values**: Investigated and addressed `NULL` values in key columns like `Income` to ensure data integrity.
3.  **Creating New Features**: Generated a new `AgeBracket` column from the existing `Age` data to facilitate group-based analysis.
4.  **Data Formatting**: Ensured consistency in categorical data (e.g., `Marital_Status`, `Gender`).

---

## 🔍 Exploratory Data Analysis (EDA)

The EDA was guided by a set of core analytical questions to uncover patterns and insights within the data:

1.  **What is the demographic profile of a typical bike buyer?**
    * This question explores characteristics like `Age`, `Gender`, and `Marital_Status` to build a foundational understanding of our customer base.

2.  **How do socioeconomic factors like income, education, and occupation correlate with bike purchases?**
    * We investigated if higher `Income`, specific `Education` levels, or certain `Occupation` types are strong predictors of a purchase.

3.  **What lifestyle indicators are associated with bike buyers?**
    * This involved analyzing factors such as the number of `Children`, `Cars` owned, and homeownership (`Home_Owner`).

4.  **Is there a geographic or commuting pattern among customers?**
    * We examined if the `Region` or `Commute_Distance` plays a significant role in the decision to buy a bike.

---

## 💻 Data Analysis

The core analysis was performed using T-SQL queries to aggregate, group, and compare different customer segments based on the questions outlined in the EDA. The results of these queries served as the foundation for the visualizations and findings.

---

## 📊 Results and Findings




---

## ✅ Recommendations



---

## 🚧 Limitations

*(This section will be filled upon completion of the analysis.)*

We acknowledge the following limitations in this analysis:

* **Dataset Size**: The analysis is based on a dataset of 1000 customers, which may not be fully representative of the entire market.
* **Self-Reported Data**: The data, such as income and commute distance, is self-reported and may contain inaccuracies.

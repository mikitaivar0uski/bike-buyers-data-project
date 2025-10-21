Конечно! Я обновил ваш README-файл, заполнив разделы **Data Cleaning**, **Results and Findings**, **Recommendations** и **Limitations** на основе всех наших открытий.

Вот полная, готовая версия для вашего проекта.

---

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
2.  **Duplicate Record Handling**: Identified and removed 48 duplicate records to ensure the accuracy of the analysis.
3.  **Handling Missing Values**: Investigated and addressed `NULL` values in key columns to ensure data integrity.
4.  **Creating New Features**: Generated a new `AgeBracket` column from the existing `Age` data to facilitate group-based analysis.
5.  **Data Formatting**: Ensured consistency in categorical data (e.g., `Marital_Status`, `Gender`).

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

The analysis revealed a distinct profile of the ideal bike buyer. The key findings are summarized below:

### Strongest Predictors of Purchase
* **Number of Cars:** This is the most significant factor. Customers with **0 or 1 car** have a much higher purchase rate (61% and 57% respectively) compared to those with 2 or more cars (~36%). This suggests the bike is often considered a form of transportation.
* **Age:** The highest propensity to buy is in the **middle-aged bracket (41-55 years)**, with the average buyer's age being approximately 43.
* **Income Bracket:** The relationship is not linear. The highest purchase rate is found in the **middle-income bracket ($40k-$60k)** at 54%, which is even higher than the high-income bracket (52%).

### Other Key Factors
* **Occupation:** **Professionals and Skilled Manual workers** are the two groups most likely to purchase a bike.
* **Number of Children:** Customers with **0 or 1 child** are the most likely buyers. The purchase rate declines as the number of children increases, dropping sharply for families with 4 or more children.
* **Education:** A higher level of education (Bachelors or Partial College) correlates with a higher likelihood of purchasing.

### Less Significant Factors
* **Home Ownership:** This factor has almost no impact, with renters and homeowners showing nearly identical purchase rates (49% vs. 47%).
* **Gender and Marital Status:** While single individuals show a slightly higher propensity to buy than married individuals, these demographic factors are less impactful than the lifestyle and socioeconomic indicators above.

---

## ✅ Recommendations

Based on the findings, we propose the following actionable recommendations for the marketing team:

### 🎯 **Target Audience Profile (Buyer Persona)**

Focus marketing efforts on the following customer profile:
> *A middle-aged professional (approx. 43 years old) with a mid-to-high level of education and an income of **$40k - $60k**. This individual leads an urban or suburban lifestyle with **0 or 1 car** and has **few to no children (0-1)**. They view cycling as both a practical mode of transport and a recreational activity.*

### 📣 **Key Marketing Messages**

Develop campaigns with tailored messaging:
1.  **For the Low-Car Segment:** Emphasize practicality and freedom.
    * *Message Angle:* "Beat the traffic and skip the gas station. Your efficient, healthy commute starts here."
2.  **For the 0-1 Child Segment:** Focus on personal well-being and family fun.
    * *Message Angle:* "Reclaim your time for adventure" or "The best family memories are made on two wheels."

###  CHANNEL STRATEGY

* **Digital Marketing:** Utilize targeted ads on professional social networks (like LinkedIn) and other platforms, using filters for age, occupation, education, and location (urban/suburban).
* **Content Marketing:** Create content centered around the benefits of commuting by bike and family cycling activities.

---

## 🚧 Limitations

We acknowledge the following limitations in this analysis:

* **Sampling Bias**: The data was likely collected from individuals already interested in cycling (e.g., at a bike shop or event). Therefore, the findings represent characteristics of potential bike buyers, not the general population. This is the most significant limitation.
* **Dataset Size**: The analysis is based on a dataset of 1000 customers, which may not be fully representative of the entire market.
* **Self-Reported Data**: The data, such as income and commute distance, is self-reported and may contain inaccuracies.

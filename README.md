# SMOTE-in-R
Using SMOTE in R to handle class imbalance (Dataset: Pima Indians Diabetes)

## 📌 Project Overview
This project is about how to handle **class imbalance** in datasets using the **Synthetic Minority Over-sampling Technique (SMOTE)** in R.

I used the **Pima Indians Diabetes dataset** to show:
- The original class imbalance problem.
- How SMOTE can create synthetic samples for the minority class.
- The new class distribution after applying SMOTE.

---

## 📂 Dataset
- **Source**: [`mlbench` package in R](https://cran.r-project.org/package=mlbench)
- **Dataset Name**: `PimaIndiansDiabetes`
- **Target Variable**: `diabetes` (`pos` / `neg`)

---

## 🛠 Steps Performed
1. Load and inspect the dataset.
2. Convert target labels to numeric for SMOTE processing.
3. Apply SMOTE using the [`smotefamily`](https://cran.r-project.org/package=smotefamily) package.
4. Added the R script mentioning how I ran the codes
5. Compare class balance before and after oversampling.

## 📊 Results
Before SMOTE:
neg: 500  pos: 268

After SMOTE:
neg: 500
pos: 536

##🎯 Key Learning
1. Class imbalance can bias the model towards majority class
2. SMOTE can generate synthetic data for minority class instead of just duplicating it.
3. Proper balancing can improve model fairness and improve accuracy.
---

# Install packages
install.packages("mlbench")
install.packages("dplyr")

# Load packages
library(mlbench)
library(dplyr)

remove.packages("smotefamily")  # remove any broken installation
install.packages("smotefamily", repos = "https://cloud.r-project.org")
library(smotefamily)
exists("SMOTE")


# Load dataset
data(PimaIndiansDiabetes)
df <- PimaIndiansDiabetes
head(df)
colnames(df)

# Check original class balance of diabetes column
table(df$diabetes)

# Convert the target variable: diabetes to numeric: pos = 1, neg = 0
df$diabetes_num <- ifelse(df$diabetes == "pos", 1, 0)
table(df$diabetes_num)

# Extract features (X) and target (y)
X <- df[, 1:8]  # only features (no target)
y <- df$diabetes_num  # target variable (0 or 1)

# Apply SMOTE using smotefamily
set.seed(123)
smote_result <- SMOTE(X, y, K = 5, dup_size = 1.05)

# Recombining the result into the  data frame
df_smote <- smote_result$data
df_smote$class <- as.factor(ifelse(df_smote$class == 1, "pos", "neg"))

# Check new class distribution
table(df_smote$class)



import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score, classification_report

# Load dataset (replace with actual dataset path)
data = pd.read_csv("customer_churn_sample.csv")

# Data preprocessing
data.dropna(inplace=True)
X = data.drop(columns=["Churn"])
y = data["Churn"]

# Convert categorical features to numerical
dummy_features = ["Gender", "Contract", "PaymentMethod"]
X = pd.get_dummies(X, columns=dummy_features, drop_first=True)

# Train-test split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Train model
model = RandomForestClassifier(n_estimators=100, random_state=42)
model.fit(X_train, y_train)

# Predictions
y_pred = model.predict(X_test)

# Evaluation
print("Accuracy:", accuracy_score(y_test, y_pred))
print("Classification Report:\n", classification_report(y_test, y_pred))
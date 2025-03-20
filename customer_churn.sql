-- Data Preprocessing SQL for Customer Churn Project
CREATE TABLE CustomerChurn (
    CustomerID INT PRIMARY KEY,
    Gender VARCHAR(10),
    Contract VARCHAR(20),
    PaymentMethod VARCHAR(30),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges DECIMAL(10,2),
    Churn INT
);

-- Insert sample data
INSERT INTO CustomerChurn (CustomerID, Gender, Contract, PaymentMethod, MonthlyCharges, TotalCharges, Churn)
VALUES
(101, 'Male', 'Month-to-month', 'Credit Card', 29.85, 29.85, 1),
(102, 'Female', 'One year', 'Electronic Check', 56.95, 1889.50, 0),
(103, 'Male', 'Two year', 'Mailed Check', 42.30, 1840.75, 0),
(104, 'Female', 'Month-to-month', 'Credit Card', 70.20, 258.10, 1),
(105, 'Male', 'One year', 'Electronic Check', 35.10, 3500.60, 0);

-- Check for missing values
SELECT * FROM CustomerChurn WHERE TotalCharges IS NULL;
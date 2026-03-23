## Anomaly Analysis

### 1. Insert Anomaly
We cannot insert a new customer without an order in the dataset.

### 2. Update Anomaly
Customer and sales rep details are repeated in multiple rows, causing inconsistency if not updated everywhere.

### 3. Delete Anomaly
Deleting an order may remove important customer or product information.

---

## Normalization Justification

The dataset stores all data in a single table, leading to redundancy. Customer, product, and sales rep details are repeated multiple times.

This causes update and delete anomalies. By splitting data into multiple tables like customers, products, and orders, redundancy is reduced.

Primary and foreign keys maintain relationships and ensure data integrity. Normalization makes the database efficient and reliable.

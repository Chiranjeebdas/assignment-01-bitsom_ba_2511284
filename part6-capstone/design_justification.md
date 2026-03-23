Storage Systems

I used multiple storage systems to handle different types of data efficiently. An OLTP database is used to store structured patient records and hospital transactions because it supports fast read and write operations. A Data Lake is used to store raw data such as ICU device streams and logs, as it can handle large volumes of unstructured and real-time data. A Data Warehouse is used for analytical reporting, such as monthly reports for hospital management, because it is optimized for aggregation and queries. Additionally, a Vector Database is used to support natural language queries by doctors, enabling semantic search over patient history.

OLTP vs OLAP Boundary

The OLTP system is responsible for handling real-time transactional operations such as patient updates, admissions, and treatments. The OLAP system begins after the ETL process, where cleaned and transformed data is moved into the Data Warehouse. This separation ensures that transactional performance is not affected by analytical workloads.

Trade-offs

One major trade-off in this architecture is increased system complexity due to the use of multiple storage systems and pipelines. Managing and maintaining these components can be challenging. However, this is mitigated by using automated ETL pipelines and monitoring tools, which help ensure smooth data flow and system reliability.

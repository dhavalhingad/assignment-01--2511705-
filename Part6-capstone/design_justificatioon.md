## Storage Systems

To design an effective AI-powered system for the hospital network, it is important to use different storage systems for different types of data and workloads. No single system can efficiently handle everything, so a combination of technologies works best.

For predicting patient readmission risk, a relational database such as PostgreSQL or MySQL can be used as the main operational (OLTP) system. This database stores structured patient data like demographics, medical history, treatments, and hospital visits. Since this data is highly structured and sensitive, a relational database ensures accuracy and consistency. Over time, this data can be moved into a data warehouse, where machine learning models can analyze past patterns and predict which patients are at risk of readmission.

To allow doctors to search patient history using plain English questions, a vector database is very useful. Medical documents such as reports, doctor notes, and discharge summaries can be converted into embeddings and stored. When a doctor asks a question like “Has this patient had a cardiac event before?”, the system can quickly find relevant information based on meaning, not just keywords.

For generating monthly reports like bed occupancy and departmental costs, a data warehouse is ideal. It stores cleaned and organized data, making it easier to run fast queries and generate insights for hospital management.

For real-time ICU monitoring, a data lake combined with a streaming tool like Apache Kafka can be used. This setup allows continuous collection of vital data such as heart rate and oxygen levels, which can be stored and analyzed in real time.

## OLTP vs OLAP Boundary

In this system, OLTP refers to the operational databases where day-to-day activities happen, such as updating patient records and recording treatments. These systems are designed for speed and accuracy.

OLAP begins when this data is moved into a data warehouse for analysis. Here, the data is cleaned and structured to support reporting and machine learning. Separating OLTP and OLAP ensures that heavy analysis does not slow down daily hospital operations.

## Trade-offs

One major trade-off in this design is increased complexity. Using multiple systems like relational databases, data warehouses, vector databases, and data lakes makes the architecture more difficult to manage.

To handle this, the hospital can use automated ETL pipelines and data orchestration tools to manage data flow smoothly. Strong data governance and monitoring can also help maintain consistency, security, and reliability across the entire system.
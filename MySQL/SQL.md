---
tags:
  - SQL
  - Tasks
  - Backend
  - IEEE
---
# **Task 1** 


## **What is a Database and Why Does It Exist ?**

A **database** is an organized **collection of data** that allows users to store, retrieve, manage, and manipulate information efficiently. It exists to ensure **data consistency, integrity, and accessibility** while optimizing storage and retrieval processes. Databases are used in almost every industry, from banking and healthcare to social media and e-commerce, to manage vast amounts of structured and unstructured data.

بإختصار هيا مجموعة منظمة من البيانات بنستخدمها عشان نتعامل مع الداتا بسهولة وكفاءة عالية وبرضو بنضمن **سلامة الداتا** و انها متكنش فيها تكرارات يعنى كأنك خت الداتا وهيا شكلها وحش وودتها للحلاق وخلتها تدرج

---
## **What is SQL**

**SQL (Structured Query Language)** is a programming language designed for managing and manipulating relational databases. It allows users to:

- **Retrieve data** (`SELECT`)
- **Insert new records** (`INSERT`)
- **Update existing records** (`UPDATE`)
- **Delete records** (`DELETE`)
- **Create and modify database structures** (`CREATE TABLE`, `ALTER TABLE`)

SQL is the standard language for relational database management systems (RDBMS) like MySQL, PostgreSQL, and Microsoft SQL Server.

من الاخر دى لغة البرمجة الى بنستخدمها عشان ندير  الداتا وبيبقا فيها اوامر كتير بنعرفها وبنبتدى نستعملها عشان نتعامل مع الداتا دى 

---

## **Top 5 Most Famous Databases in the World (2025)**

These databases are widely used due to their **scalability, performance, and reliability**:

1. **MySQL** – **Most popular open-source RDBMS**

    - Used by Facebook, YouTube, and Twitter.
    - Efficient for web applications, scalable, and easy to integrate.
2. **PostgreSQL** – **Advanced open-source RDBMS**
    
    - Known for **robust features, performance, and compliance with SQL standards**.
    - Used by Instagram, Apple, and Spotify.
3. **MongoDB** – **Most popular NoSQL database**
    
    - Stores data in **JSON-like documents** (flexible schema).
    - Ideal for large-scale applications, such as e-commerce and IoT platforms.
4. **Microsoft SQL Server** – **Enterprise-grade RDBMS**
    
    - Optimized for Windows environments.
    - Used by major corporations for high-security and high-availability applications.
5. **Oracle Database** – **Best for enterprise applications**
    
    - Provides **high performance, security, and reliability**.
    - Used by banks, telecom companies, and Fortune 500 companies.


- **MySQL** 
- الأشهر والأكتر استخدامًا، شغالة مع مواقع زي **فيسبوك ويوتيوب**، سهلة وتشتغل حلو مع مواقع الويب.
- **PostgreSQL** 
- قوية ومتطورة، وبتستخدمها شركات كبيرة زي **إنستجرام وأبل** لأنها بتلتزم بمعايير **SQL**.
- **MongoDB** 
- مختلفة عن العادية، بتخزن البيانات بشكل **JSON** بدل الجداول، وبتنفع للمواقع الكبيرة زي **التجارة الإلكترونية**.
- **Microsoft SQL Server** 
- شغالة حلو مع **ويندوز**، ومناسبة للشركات اللي محتاجة **أمان واستقرار** عالي.
- **Oracle Database** 
- تقيلة وفخمة، بتستخدمها البنوك والشركات الكبيرة لأنها **سريعة وآمنة جدًا**.


---
# **Task 2**


## **What is RDBMS?**

RDBMS (Relational Database Management System) is a type of database management system (DBMS) that stores data in tables with rows and columns and maintains relationships between the data. It follows the relational model and ensures **data integrity, normalization, and ACID properties** (Atomicity, Consistency, Isolation, Durability).
بيقولك ان **RDBMS** نوع منى ال **DBMS** ~~فاهم حاجة ؟~~ بس هو بيخزن الداتا على شكل جداول بدل ما يكون بشكل ملفات بيدعم خصائص ال **ACID** الى هيا  *(Atomicity, Consistency, Isolation, Durability)*

[Resources](https://cloud.google.com/learn/what-is-a-relational-database)

---

## **RDBMS vs DBMS**

| Feature               | DBMS (Database Management System)                                        | RDBMS (Relational Database Management System)                     |
| --------------------- | ------------------------------------------------------------------------ | ----------------------------------------------------------------- |
| **Structure**         | Stores data as files or hierarchical, network, or object-oriented models | Stores data in tables (rows and columns) with relationships       |
| **Data Relationship** | No strict relationships between data                                     | Uses **primary keys, foreign keys,** and relationships            |
| **Normalization**     | Not enforced                                                             | Follows normalization to reduce redundancy                        |
| **Transactions**      | No strict ACID compliance                                                | Follows **ACID** properties for data consistency                  |
| **Security**          | Less secure, lacks multi-user control                                    | Provides **role-based access control** and **multi-user support** |
| **Examples**          | File systems, XML databases, NoSQL                                       | MySQL, PostgreSQL, SQL Server, Oracle                             |

**In short:**

- **DBMS** manages data in a general way.
- **RDBMS** is an advanced DBMS that organizes data **efficiently using relations (tables).**
[Resources](https://www.geeksforgeeks.org/difference-between-rdbms-and-dbms/)

---
## **Naming Conventions in RDBMS**

Proper naming conventions improve **readability, maintainability, and consistency** in database design.

#### **1. Table Naming Conventions**

✅ Use **singular** nouns:

- ✅ `Customer`, `Order`, `Product` (preferred)
- ❌ `Customers`, `Orders`, `Products`

✅ Use **PascalCase** or **snake_case** (consistent):

- ✅ `CustomerDetails` (PascalCase)
- ✅ `customer_details` (snake_case)

#### **2. Column Naming Conventions**

✅ Use meaningful names:

- ✅ `first_name`, `last_name` (good)
- ❌ `fn`, `ln` (unclear)

✅ Avoid SQL keywords:

- ✅ `order_date` (good)
- ❌ `order` (bad, as `ORDER` is an SQL keyword)

#### **3. Primary Key & Foreign Key Naming**

✅ Primary Key: `table_name_id`

- ✅ `customer_id`, `order_id`

✅ Foreign Key: `referenced_table_id`

- ✅ `customer_id` in `Order` table

#### **4. Index Naming**

✅ Follow `idx_table_column` format

- ✅ `idx_customer_email`

#### **5. Constraint Naming**

✅ Follow `constraint_type_table_column` format

- ✅ `pk_customers_id` (Primary Key)
- ✅ `fk_orders_customer_id` (Foreign Key)

[Resources](https://www.sqlshack.com/learn-sql-naming-conventions/)

---

# Task 3 

## **Primary Key vs. Unique Key**

| Feature        | Primary Key                            | Unique Key                                                    |
| -------------- | -------------------------------------- | ------------------------------------------------------------- |
| Uniqueness     | Ensures unique values in the column(s) | Ensures unique values but allows one `NULL` (in MySQL)        |
| Number Allowed | Only one per table                     | Multiple per table                                            |
| Indexing       | Clustered index (by default)           | Non-clustered index                                           |
| Null Values    | Not allowed                            | Allowed (one `NULL` in MySQL)                                 |
| Purpose        | Uniquely identifies each row           | Ensures uniqueness but not necessarily for row identification |


- **Primary Key (المفتاح الأساسي)**:  
    ده المفتاح الرئيسي للجدول، يعني كل صف لازم يكون ليه قيمة فريدة فيه، ومينفعش يكون فيه **قيم مكررة أو قيم فاضية (NULL)**. الجدول ميقدرش يكون عنده أكتر من **Primary Key واحد**، ولما بتحدد عمود كمفتاح أساسي، MySQL بيعمل عليه فهرسة تلقائيًا عشان يسرّع الاستعلامات.
    
- **Unique Key (المفتاح الفريد)**:  
    ده برضو بيضمن إن القيم في العمود فريدة، بس الفرق إنه *بيسمح بالقيم الفاضية (NULL)، وممكن يكون فيه أكتر من Unique Key في الجدول.* ده مفيد لو عندك عمود معين مش المفروض يتكرر فيه القيم، لكن في نفس الوقت مش لازم يكون لكل صف فيه قيمة، يعني ممكن يكون فيه صفوف فاضية.

**باختصار**
لو عندك جدول وكل صف لازم يكون ليه معرّف فريد **وإجباري**، استخدم **Primary Key**.  
لو عاوز تمنع التكرار في عمود معين بس من غير ما يكون إجباري لكل الصفوف، استخدم **Unique Key**

[Resources](https://www.geeksforgeeks.org/difference-between-primary-key-and-unique-key/)

---

## **Constraints in MySQL**

Constraints enforce rules on table columns. Common constraints:

- **`PRIMARY KEY`** – Uniquely identifies a row.
- **`UNIQUE`** – Ensures unique values.
- **`NOT NULL`** – Prevents `NULL` values.
- **`CHECK`** – Validates data against a condition.
- **`DEFAULT`** – Assigns a default value.
- **`FOREIGN KEY`** – Ensures referential integrity.
- **`AUTO_INCREMENT`** – Automatically increases the value.

الـ **Constraints** هي قواعد زي الـ `PRIMARY KEY` علشان تحدد صف فريد، أو الـ `FOREIGN KEY` لضمان العلاقات بين الجداول، والـ `NOT NULL` عشان تمنع القيم الفاضية.

[Resources](https://www.w3schools.com/mysql/mysql_constraints.asp)


---

## **Indexing in MySQL**

Indexes improve query performance by making lookups faster. Types of indexes:

- **Primary Index (Clustered Index)** – Automatically created for the `PRIMARY KEY`.
- **Unique Index** – Created for `UNIQUE` constraints.
- **Full-text Index** – Supports full-text searches.
- **Composite Index** – Multiple columns in one index.
- **Spatial Index** – Used with spatial data types.

الفهرسة بتحسن سرعة البحث في البيانات، زي الـ **Clustered Index** اللي بييجي مع الـ `PRIMARY KEY` أو الـ **Full-text Index** لو عايز تبحث في نصوص كبيرة بسرعة.
### **Key benefits of using MySQL indexes**

- **Improved query speed and optimization**: MySQL indexes significantly enhance query processing, particularly with extensive datasets. By reducing the need for full table scans, indexes enable MySQL to quickly locate and retrieve necessary data. This optimization improves query response times and overall system performance, making it essential for efficient database operations.

**تحسين سرعة الاستعلامات**: الفهارس في MySQL بتخلّي الاستعلامات أسرع بكتير، لأنها بتقلل الحاجة إن MySQL يلفّ على كل الصفوف في الجدول. بدل ما يعمل مسح كامل للجدول، بيقدر يوصّل للبيانات المطلوبة بسرعة، وده بيرفع أداء النظام كله

- **Improved efficiency and resource usage**: As stated above, if indexes were not used, MySQL would have to search through every row in a table to locate the necessary data, resulting in significant utilization of system resources like CPU cycles, memory, and disk I/O. By utilizing indexes, the database can swiftly pinpoint the required rows, minimizing the data that needs to be examined and processed to enhance response times for queries and the overall performance and scalability of the system.

**تحسين كفاءة استخدام الموارد**: من غير الفهارس، MySQL بيستهلك البروسيسور والرامات والديسك بشكل كبير، لأنه بيبحث في كل الصفوف عشان يلاقي اللي هو عايزه. لكن لما الفهارس تبقى موجودة، بتحدد الصفوف المطلوبة بسرعة وبتقلل كمية البيانات اللي بيتم فحصها، وده بيحسّن أداء الاستعلامات ويوفر في الموارد، وبيخلّي النظام يستحمل عدد استعلامات أكبر بدون ما يبطّأ.

- **Optimized JOIN operations**: MySQL indexes can significantly improve the performance of JOIN operations between tables. When you join tables using indexed columns in MySQL, it can use the indexes to find matching rows quickly. This reduces the need for resource-heavy tasks like scanning the entire table or sorting. This optimization becomes increasingly important as the complexity of JOIN queries and the number of tables involved grows.

**تحسين أداء عمليات الربط (JOIN)**: لما يكون عندك استعلامات بتربط بين جداول مختلفة، الفهارس بتسهل الموضوع جدًا، لأنها بتساعد MySQL يلاقي الصفوف المتوافقة بسرعة بدل ما يلفّ على الجدول كله. كل ما زاد عدد الجداول اللي بتربطها ببعض، كل ما كانت الفهارس أهم عشان متخلّيش الاستعلام ياخد وقت طويل ويستهلك موارد كتير.

- **Enforcing data integrity**: In addition to enhancing performance, MySQL indexes also aid in upholding data integrity rules. For instance, unique indexes prevent the insertion of duplicate values into a column, thereby preserving data uniqueness. Likewise, primary key indexes ensure that every row in a table possesses a unique identifier, avoiding unintentional duplicates or isolated data.

**ضمان سلامة البيانات**: الفهارس مش بس بتسرّع الأداء، دي كمان بتحافظ على سلامة البيانات. مثلًا، الفهارس الفريدة (Unique Indexes) بتمنع إنك تضيف قيم مكررة في عمود معين، وده بيضمن إن البيانات متبقاش فيها أخطاء. وكمان المفتاح الأساسي (Primary Key) بيضمن إن كل صف في الجدول ليه رقم تعريفي فريد، وده بيمنع وجود بيانات مكررة أو معزولة ملهاش فايدة.

- **Improved sorting and range queries**: MySQL indexes can significantly enhance the performance of queries that require sorting or filtering by a range of values. By organizing data in a structured order, indexes allow MySQL to quickly locate and retrieve the necessary rows without having to perform expensive sorting operations or search through unnecessary data.
 
**تحسين عمليات الفرز والاستعلام بالنطاق** : لو عندك استعلام بيطلب ترتيب البيانات أو البحث في نطاق معين، الفهارس بتسهّل الموضوع جدًا. بدل ما MySQL يفرز كل البيانات أو يدور في الجدول كله، الفهارس بتخلّيه يوصّل للبيانات المطلوبة بسرعة من غير مجهود كبير، وده بيسرّع العمليات اللي بتحتاج فرز أو بحث في مدى معين من القيم.



[Resources](https://www.percona.com/blog/understanding-mysql-indexes-types-best-practices/)

---


## **MySQL vs. PostgreSQL**

| Feature                 | MySQL                                       | PostgreSQL                                                               |
| ----------------------- | ------------------------------------------- | ------------------------------------------------------------------------ |
| **Speed**               | Faster for read-heavy workloads             | Better for complex queries & write-heavy workloads                       |
| **ACID Compliance**     | Fully ACID-compliant (with InnoDB)          | Fully ACID-compliant                                                     |
| **JSON Support**        | Limited JSON functions                      | Advanced JSON support                                                    |
| **Concurrency**         | Uses table-level locking (for some engines) | Uses MVCC (better concurrency)                                           |
| **Indexes**             | B-tree, Full-text, Spatial                  | B-tree, Hash, GIN, GiST, BRIN                                            |
| **Extensibility**       | Limited support for procedural languages    | Supports custom functions, procedural languages (PL/pgSQL, Python, etc.) |
| **Replication**         | Master-slave, group replication             | Logical, physical, and streaming replication                             |
| **Community & Plugins** | Large community, many plugins               | Advanced features, strong community                                      |
- **MySQL**: 
 هو نظام إدارة قواعد بيانات مشهور جدًا وسهل الاستخدام، ومتخصص في السرعة والكفاءة. بيستخدمه ناس كتير في الويب والتطبيقات لأنه خفيف وسريع في عمليات القراءة (`SELECT`). مناسب لو عندك تطبيق مش معقد أوي وعاوز أداء سريع بدون تعقيدات كتير. 
  
- **PostgreSQL**:  
 بقى نظام أقوى، مصمم عشان يكون **متقدم وقوي جدًا** في التعامل مع البيانات. بيستخدمه الناس اللي عندهم قواعد بيانات معقدة وبيحتاجوا خصائص متطورة زي التعامل مع البيانات الجغرافية، العمليات المعقدة، والالتزام بالمعايير الصارمة للبيانات. مناسب أكتر للمشاريع الكبيرة اللي بتحتاج قوة وتحليل متقدم.
###  **الفرق الأساسي بينهم بقى:**

1. **السرعة مقابل القوة**
    
    - **MySQL**
    أسرع في عمليات القراءة، ومناسب للتطبيقات اللي بتعتمد على سرعة الاستعلامات زي مواقع الويب.
    - **PostgreSQL**
    أبطأ شوية في الاستعلامات البسيطة، بس بيعوض ده بقوة في التعامل مع البيانات المعقدة والتحليل المتقدم.
2. **المرونة في التعامل مع البيانات**
    - **MySQL** 
    محدود أكتر في أنواع البيانات والعمليات اللي يقدر يعملها.
    - **PostgreSQL**
    بيدعم أنواع بيانات أكتر، زي **JSON, XML, UUID**, وبيقدر يعمل عمليات حسابية معقدة بشكل متقدم.
3. **الدعم للـ ACID والمعاملات (Transactions)**
    
    - **PostgreSQL**
    أقوى بكتير في دعم قواعد الـ **ACID** (يعني الدقة والتكامل في تخزين البيانات) وبيضمن إن العمليات متحصلش فيها مشاكل.
    - **MySQL**
    بيدعم الموضوع ده، بس مش بنفس القوة، وخصوصًا في الإصدارات القديمة اللي كانت بتستخدم محرك **MyISAM** اللي مش بيدعم المعاملات بشكل كامل.
4. **التوافق مع الـ JOIN والعمليات المعقدة**
    
    - **MySQL**
    بيقدر يعمل **JOIN** بين الجداول، بس مش بنفس كفاءة **PostgreSQL**، اللي بيعالج الاستعلامات الكبيرة بشكل أذكى.
    - **PostgreSQL**
    متفوق جدًا في العمليات اللي بتحتاج ربط بين جداول كتير أو تحليل بيانات معقدة.
  
5. **الاستخدام والتعامل مع النظام**
    
    - **MySQL**
سهل في الاستخدام والتعلم، ومحبوب للمبتدئين وأصحاب المشاريع الصغيرة.
    - **PostgreSQL**
أصعب شوية، بس بيقدم إمكانيات قوية جدًا للناس اللي عاوزة تحكم متقدم في قواعد البيانات.

### **الخلاصة**

لو عاوز نظام سريع وسهل للتطبيقات العادية زي مواقع الويب والتطبيقات الصغيرة، روح لـ **MySQL**.  
لو عندك نظام كبير، وبتحتاج عمليات معقدة وتحليل متقدم للبيانات، يبقى **PostgreSQL** هو الأنسب ليك.

[Resources](https://aws.amazon.com/ar/compare/the-difference-between-mysql-vs-postgresql/)

---

# **Task 4**

## **1. Relations: One-to-One, One-to-Many, Many-to-Many**

- **One-to-One (1:1):** In this relationship, a single record in one table corresponds to exactly one record in another table. This is often used to separate data for organizational or security reasons. For example, in a healthcare database, each patient in the "Patients" table has a unique medical record in the "MedicalRecords" table.
    
    _Source:_ [Database Relationships Explained: Key Concepts and Best Practices](https://www.acceldata.io/blog/database-relationships-explained-key-concepts-and-best-practices)
    
   العلاقة دي معناها إن كل سجل في جدول معين بيرتبط بسجل واحد بس في جدول تاني. بتستخدم عشان ننظم البيانات أو نحميها. زي مثلًا في قاعدة بيانات مستشفى، كل مريض ليه ملف طبي خاص بيه.
    
- **One-to-Many (1:N):** Here, a single record in one table can be associated with multiple records in another table. This is the most common type of relationship. For instance, an "Authors" table might be linked to a "Books" table, where each author has written multiple books.
    
    _Source:_ [Database Relationships Explained: Key Concepts and Best Practices](https://www.acceldata.io/blog/database-relationships-explained-key-concepts-and-best-practices)
    
 العلاقة دي معناها إن سجل واحد في جدول معين ممكن يكون مرتبط بأكتر من سجل في جدول تاني. ودي أكتر علاقة شائعة. زي مثلًا جدول "المؤلفين" اللي كل مؤلف فيه كتب كتب كتير.
    
- **Many-to-Many (N:N):** In this relationship, multiple records in one table are associated with multiple records in another. For example, students enrolling in courses: each student can enroll in multiple courses, and each course can have multiple students. Implementing this in a relational database typically requires a junction table to manage the associations.
    
    _Source:_ [Database Relationships Explained: Key Concepts and Best Practices](https://www.acceldata.io/blog/database-relationships-explained-key-concepts-and-best-practices)
    
 العلاقة دي معناها إن فيه سجلات كتير في جدول معين مرتبطة بسجلات كتير في جدول تاني. زي مثلًا الطلبة والكورسات: كل طالب ممكن يسجل في كذا كورس، وكل كورس فيه طلبة كتير. عشان نطبق العلاقة دي في قاعدة بيانات، بنستخدم جدول وسيط ينظم العلاقات دي.
    

## **2. Write-Ahead Logging (WAL)**

Write-Ahead Logging is a technique used to ensure data integrity. Before making any changes to the main data, the changes are first recorded in a log. This ensures that if a system crash occurs during the update, the system can recover by replaying the log entries, maintaining consistency and durability.

_Source:_ [The Write-Ahead Log: A Foundation for Reliability in Databases and Distributed Systems](https://www.architecture-weekly.com/p/the-write-ahead-log-a-foundation)

 الـWrite-Ahead Logging دي طريقة بنستخدمها عشان نحافظ على سلامة البيانات. قبل ما نغير أي حاجة في البيانات الأساسية، بنسجل التغييرات دي في سجل الأول. ده بيضمن إنه لو حصلت مشكلة في النص وإحنا بنحدّث البيانات، النظام يقدر يسترجع التغييرات من السجل ويحافظ على التناسق.

## **3. Normalization and Denormalization**

- **Normalization:** This is the process of organizing data to reduce redundancy and improve data integrity. It involves dividing large tables into smaller, related tables and defining relationships between them. The goal is to ensure that each piece of data is stored only once.
    
- **Denormalization:** This is the process of combining tables to reduce the complexity of queries and improve read performance. While it introduces some redundancy, it can be beneficial in scenarios where read operations are more frequent than write operations.
    

_Source:_ [Denormalization](https://en.wikipedia.org/wiki/Denormalization)


- **ال (Normalization):** دي عملية بننظم فيها البيانات عشان نقلل التكرار ونحسن سلامة البيانات. بنعمل ده عن طريق تقسيم الجداول الكبيرة لجداول أصغر ومترابطة، وبنحدد العلاقات بينها. الهدف إن كل معلومة تتخزن مرة واحدة بس.
    
- **التطبيع (Denormalization)** دي عملية بنجمع فيها الجداول عشان نقلل تعقيد الاستعلامات ونحسن أداء قراءة البيانات. مع إنها بتزود شوية تكرار، لكنها مفيدة في الحالات اللي فيها عمليات القراءة أكتر من عمليات الكتابة.
    

**Normalization** focuses on reducing redundancy and ensuring data integrity by structuring data into related tables. Denormalization, on the other hand, aims to improve read performance by merging tables, accepting some redundancy as a trade-off.
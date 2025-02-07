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
- ---
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


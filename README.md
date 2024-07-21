# Pizza-Sales-Data-Analysis--SQL-Project
## About
We are analysing Pizza sales data to identify most selling pizza category and highly revenue generated pizza, analyze the daily and monthly trends of ordersand understand customer behavior. The primary objective is to enhance and optimize sales strategies. The dataset utilized in this project is  from a fictional pizza restaurant chain.

## Purposes of the Project
The main goal of this project is to provide insights and actionable information to help the pizza restaurant chain optimize its operations, improve sales, and enhance customer satisfaction.

## About Data
This project's is from a fictional pizza restaurant chain.
The data contains 12 columns and 48620 rows:
| Column            | Description                                   | Data Type        |
|-------------------|-----------------------------------------------|------------------|
| Pizza_ID          | Invoice of the sales made                     | VARCHAR(30)      |
| Order_ID          | Branch at which sales were made               | VARCHAR(30)      |
| Pizza_Name_ID     | The location of the branch                    | VARCHAR(30)      |
| Pizza_Name        | The name of pizza                             | VARCHAR(30)      |
| Quantity          | The quantity of pizza                         | INT              |
| Order_Date        | The date on which the order was made          | DATETIME         |
| Order_Time        | The time at which the order was made          | TIME             |
| Unit_Price        | The price of each pizza                       | DECIMAL(10, 2)   |
| Total_Price       | The total cost of the order                   | DECIMAL(12, 4)   |
| Pizza_Size        | The size of pizza                             | VARCHAR(5)       |
| Pizza_Category    | The category of pizza                         | VARCHAR(30)      |
| Pizza_Ingredients | The ingredients of pizza                      | VARCHAR(30)      |


## Analysis List:

1.	Product Analysis

> Perform an analysis on the data to gain insights into different pizza categories and sizes, determine the top-performing pizzas, and identify areas for improvement.

2.	Sales Analysis
   
> The objective of this analysis is to address the inquiry regarding the sales trends of pizzas. The outcomes of this analysis can assist in evaluating the efficiency of each applied sales strategy in the business and determining necessary modifications to increase sales.


## Approach Used
***1.	Data Wrangling***

During this initial phase, the data is examined to detect any NULL or missing values, and strategies for data replacement are implemented to address and substitute these values effectively.
- Build a database
- Create a table and insert the data.
- Select columns with null values in them. Null values are not present in our database because, in creating the tables, NOT NULL was specified for each field, effectively filtering out any null values.

***2.	Feature Enginerring***
This will help us generate some new columns from existing ones.
- Add a new column named Order-Day that contains the extracted days of the week on which the order took place (Monday, Tuesday, etc). This will help answer the question of which day of the week has the most sales and profit.
- Add a new column named Month_Name that contains the extracted months of the year on which the order took place (January, Febuary, etc). This will help determine which month of the year has the most sales and profit.


***3.  Exploratory Data Analysis (EDA)***

Conducting exploratory data analysis is essential to address the project's listed questions and objectives.

## Business Questions to Answer

### Generic Questions
- View the data	

### Product Analysis
- What is the total revenue?
- What is the total pizza sold?
- What is the total number of orders placed?
- What is the average order value?
- What is the average pizza per order?
- What is the percentage of sales by pizza category?
- What is the percentage of sales by pizza size?
- What is the total pizzas sold by pizza category?
- What are the top 5 pizzas by revenue?
- What are the bottom 5 pizzas by revenue?
- What are the top 5 pizzas by quantity?
- What are the bottom 5 pizzas by quantity?
- What are the top 5 pizzas by total orders?
- What are the bottom 5 pizzas by total orders?

### Sales Analysis
- What are the daily trends for total orders?
- What are the monthly trends for total orders?

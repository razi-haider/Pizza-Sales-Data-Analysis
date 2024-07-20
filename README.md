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
| pizza_id          | Invoice of the sales made                     | VARCHAR(30)      |
| order_id          | Branch at which sales were made               | VARCHAR(30)      |
| pizza_name_id     | The location of the branch                    | VARCHAR(30)      |
| pizza_name        | The name of pizza                             | VARCHAR(30)      |
| quantity          | The quantity of pizza                         | INT              |
| order_date        | The date on which the order was made          | DATETIME         |
| order_time        | The time at which the order was made          | TIME             |
| unit_price        | The price of each pizza                       | DECIMAL(10, 2)   |
| total_price       | The total cost of the order                   | DECIMAL(12, 4)   |
| pizza_size        | The size of pizza                             | VARCHAR(5)       |
| pizza_category    | The category of pizza                         | VARCHAR(30)      |
| pizza_ingredients | The ingredients of pizza                      | VARCHAR(30)      |


## Analysis List:

1.	Product Analysis

> Perform an analysis on the data to gain insights into different product lines, determine the top-performing product lines, and identify areas for improvement in other product lines.

2.	Sales Analysis
   
> The objective of this analysis is to address the inquiry regarding the sales trends of the product. The outcomes of this analysis can assist in evaluating the efficiency of each applied sales strategy in the business and determining necessary modifications to increase sales.

3.	Customer Analysis

> This analysis is focused on identifying various customer segments, understanding purchasing trends, and evaluating the profitability associated with each of these customer segments.

## Approach Used
***1.	Data Wrangling***

During this initial phase, the data is examined to detect any NULL or missing values, and strategies for data replacement are implemented to address and substitute these values effectively.
- Build a database
- Create a table and insert the data.
- Select columns with null values in them. Null values are not present in our database because, in creating the tables, NOT NULL was specified for each field, effectively filtering out any null values.

***2.  Exploratory Data Analysis (EDA)***

Conducting exploratory data analysis is essential to address the project's listed questions and objectives.

## Business Questions to Answer

### Generic Questions
1.	How much total revenue has been generated?
2.	What is average order price?
3.	How many pizzas have been sold?
4.	What is total number of orders?
5.	What is average pizza per order?
6.	What is the daily trends for orders?
7.	Monthly trend for ordeR?
8.	

### Product Analysis
1.	How many distinct product lines are there in the dataset?
2.	What is the most common payment method?
3.	What is the most selling product line?
4.	What is the total revenue by month?
5.	Which month recorded the highest Cost of Goods Sold (COGS)?
6.	Which product line generated the highest revenue?
7.	Which city has the highest revenue?
8.	Which product line incurred the highest VAT?
9.	Retrieve each product line and add a column product_category, indicating 'Good' or 'Bad,' based on whether its sales are above the average.
10.	Which branch sold more products than average product sold?
11.	What is the most common product line by gender?
12.	What is the average rating of each product line?

### Sales Analysis
1.	Number of sales made in each time of the day per weekday
2.	Identify the customer type that generates the highest revenue.
3.	Which city has the largest tax percent/ VAT (Value Added Tax)?
4.	Which customer type pays the most VAT?

### Customer Analysis
1.	How many unique customer types does the data have?
2.	How many unique payment methods does the data have?
3.	Which is the most common customer type?
4.	Which customer type buys the most?
5.	What is the gender of most of the customers?
6.	What is the gender distribution per branch?
7.	Which time of the day do customers give most ratings?
8.	Which time of the day do customers give most ratings per branch?
9.	Which day of the week has the best avg ratings?
10.	Which day of the week has the best average ratings per branch?

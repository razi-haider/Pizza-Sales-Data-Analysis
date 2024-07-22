![Sample Image](https://github.com/razi-haider/Pizza-Sales-Data-Analysis--SQL-Project/blob/main/pizza.jpg)

# Pizza Sales Data Analysis -- SQL Project

## Project by: Razi Haider

### Executive Summary
This project analyzes pizza sales data to identify the most popular pizza categories, the highest revenue-generating pizzas, and understand daily and monthly order trends. The primary objective is to enhance and optimize sales strategies for a fictional pizza restaurant chain. Key findings indicate that Fridays and Saturdays are peak days for orders, with July being the busiest month. Classic and Supreme pizzas are the top-performing categories, while large pizzas are the most popular size.

### Table of Contents
- [About the Project](#about-the-project)
- [Data Description](#data-description)
- [Purpose of the Project](#purpose-of-the-project)
- [Methodology](#methodology)
- [Business Questions and Insights](#business-questions-and-insights)
- [Recommendations](#recommendations)
- [Limitations](#limitations)
- [Conclusion](#conclusion)

### About the Project
We analyze pizza sales data to identify the most popular pizza categories, the highest revenue-generating pizzas, and to understand daily and monthly order trends. The primary objective is to enhance and optimize sales strategies for a fictional pizza restaurant chain.

### Data Description
The dataset contains 12 columns and 48,620 rows:

| Column          | Description                          | Data Type      |
|-----------------|--------------------------------------|----------------|
| Pizza ID        | Unique identifier for each pizza sold| VARCHAR(30)    |
| Order ID        | Unique identifier for each order     | VARCHAR(30)    |
| Pizza Name ID   | Unique identifier for each pizza name| VARCHAR(30)    |
| Pizza Name      | The name of the pizza                | VARCHAR(30)    |
| Quantity        | The quantity of pizza ordered        | INT            |
| Order Date      | The date on which the order was made | DATETIME       |
| Order Time      | The time at which the order was made | TIME           |
| Unit Price      | The price of each pizza              | DECIMAL(10, 2) |
| Total Price     | The total cost of the order          | DECIMAL(12, 4) |
| Pizza Size      | The size of the pizza                | VARCHAR(5)     |
| Pizza Category  | The category of the pizza            | VARCHAR(30)    |
| Pizza Ingredients | The ingredients of the pizza       | VARCHAR(30)    |

### Purpose of the Project
The main goal is to provide insights and actionable information to help the pizza restaurant chain:
- Optimize operations
- Improve sales
- Enhance customer satisfaction

### Methodology
1. **Data Wrangling**
   - Examined the data for NULL or missing values.
   - Implemented strategies for data replacement.
   
2. **Build a Database**
   - Created a table and inserted the data.
   - Ensured that NULL values were filtered out by specifying NOT NULL constraints during table creation.
   
3. **Feature Engineering**
   - Added a new column `Order-Day` to extract the day of the week from the `Order Date`.
   - Added a new column `Month Name` to extract the month from the `Order Date`.
   
4. **Exploratory Data Analysis (EDA)**
   - Conducted EDA to answer key business questions and achieve project objectives.

### Business Questions and Insights
#### Product Analysis
- **Total Revenue**: $817,860.05
- **Total Orders Placed**: 21,350
- **Average Order Value**: $38.31
- **Average Pizzas per Order**: 2.32

**Top 5 Pizzas by Revenue**
1. Thai Chicken Pizza: $43,434.25
2. Barbecue Chicken Pizza: $42,768.00
3. California Chicken Pizza: $41,409.50
4. Classic Deluxe Pizza: $38,180.50
5. Spicy Italian Pizza: $34,831.25

**Bottom 5 Pizzas by Revenue**
1. Brie Carre Pizza: $11,588.50
2. Green Garden Pizza: $13,955.75
3. Spinach Supreme Pizza: $15,277.75
4. Mediterranean Pizza: $15,360.50
5. Spinach Pesto Pizza: $15,596.00

**Top 5 Pizzas by Quantity**
1. Classic Deluxe Pizza: 2,453
2. Barbecue Chicken Pizza: 2,432
3. Hawaiian Pizza: 2,422
4. Pepperoni Pizza: 2,418
5. Thai Chicken Pizza: 2,371

**Bottom 5 Pizzas by Quantity**
1. Brie Carre Pizza: 490
2. Mediterranean Pizza: 934
3. Calabrese Pizza: 937
4. Spinach Supreme Pizza: 950
5. Soppressata Pizza: 961

**Percentage of Sales by Pizza Category**
- Classic: 26.91%
- Supreme: 25.46%
- Chicken: 23.96%
- Veggie: 23.68%

**Percentage of Sales by Pizza Size**
- Large: 45.89%
- Medium: 30.49%
- Small: 21.77%

**Daily Trends**
- Highest orders: Friday (3,538), Saturday (3,158), Thursday (3,239)
- Lowest orders: Sunday (2,624), Monday (2,794)

**Monthly Trends**
- Highest orders: July (1,935), May (1,853), January (1,845)
- Lowest orders: October (1,646), September (1,661)

### Recommendations
1. **Promote High-Performing Pizzas**
   - Increase marketing efforts for top-performing pizzas like The Thai Chicken Pizza, The Barbecue Chicken Pizza, and The California Chicken Pizza.
   - Consider creating combo deals or discounts for these popular items.
   
2. **Revise or Discontinue Low-Performing Pizzas**
   - Evaluate the bottom-performing pizzas such as The Brie Carre Pizza and The Green Garden Pizza.
   - Consider revising their recipes, changing their marketing strategies, or discontinuing them if they continue to underperform.
   
3. **Optimize Inventory for Popular Sizes**
   - Focus promotional campaigns around Fridays and Saturdays, as well as the high-order months of July, May, and January.
   - Consider special offers or events during slower days (Sundays and Mondays) and months (October and September) to balance the sales distribution.
   
4. **Target Marketing for Peak Days and Months**
   - Focus promotions on peak days and months.
   - Offer special deals during slower periods.
   
5. **Enhance Customer Experience**
   - Since customers order an average of 2.32 pizzas per order, introduce family or group meal deals to cater to this buying pattern.
   - Improve delivery times and customer service during peak hours and days to enhance customer satisfaction.
   
6. **Seasonal and Limited-Time Offers**
   - Introduce seasonal pizzas or limited-time offers to create excitement and drive sales during off-peak periods.

### Limitations
- The dataset is limited to a specific time period, which may not capture seasonal or long-term trends.
- The analysis assumes that the provided data is complete and accurate.
- External factors such as marketing campaigns, local events, or economic conditions are not considered in this analysis.

### Conclusion
The analysis reveals valuable insights into the pizza sales patterns, customer preferences, and product performance. Classic and Supreme pizzas, particularly in large sizes, are the most popular. Fridays and Saturdays see the highest number of orders, with July being the peak month. These insights can help the pizza restaurant chain optimize inventory, staffing, and marketing strategies to enhance customer satisfaction and boost sales.

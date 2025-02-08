# Luxury-Handbag-Sales-Analysis Using SQL and PowerBI
A project analyzing luxury handbag sales data using SQL then importing to Excel file and Power BI to uncover insights like top-selling products, high-revenue stores, customer behavior, and revenue trends. Features include creating normalized tables, sample data, and interactive dashboards for actionable insights.

SQL github file link : https://github.com/sanikadhanwate/Luxury-Handbag-Sales-Analysis/blob/a8051331a7325f119b51fd2bafb1edfec0c517a9/luxury_handbags%201.sql
SQL Queries : https://1drv.ms/w/c/088fb23c46fc8d10/EXt-w_4G3pRChLZf_KJIxI0BbiEVsXVgh1f09GFglNmoLw?e=LEMfDm

Combined dataset in Excel : https://1drv.ms/x/c/088fb23c46fc8d10/EfvjahoNdwBHp1Z9dsR_zQcB7vEgHLTti59wbxjwioMnSQ?e=LP9iqo

### PowerBI github file link and Dashboard Screenshot:
https://github.com/sanikadhanwate/Luxury-Handbag-Sales-Analysis/blob/9e588f9ea166c253620a2266c46c9d114ad3ae2b/luxury%20handbags.pbix

![Screenshot 2025-02-08 164654](https://github.com/user-attachments/assets/25395d92-ac3a-4ee8-929e-be343d66afaa)

![Screenshot 2025-02-08 164745](https://github.com/user-attachments/assets/7bc47879-64a5-4be5-9b11-44cd9d3d80a6)

![Screenshot 2025-02-08 164811](https://github.com/user-attachments/assets/7b1d3c27-7348-4c37-b5f2-5a62e20715c2)

### **DAX Queries**
#### 1. Revenue Growth

    Revenue Growth % = VAR LastYearRevenue = CALCULATE(SUM(Sales[TotalRevenue]), SAMEPERIODLASTYEAR(Sales[SaleDate].[Date]))
VAR currentyearrevenue = sum(Sales[TotalRevenue])
RETURN IF(LastYearRevenue >0, (currentyearrevenue - LastYearRevenue) / LastYearRevenue*100, BLANK())

#### 2. What is Weekly Active Customers
   --> refers to the number of unique customers who interacted with a business or platform at least once within a given week/ 7 day window.

WeeklyActiveCustomers = CALCULATE(DISTINCTCOUNT(Sales[BagID]),ALLEXCEPT(Sales,Sales[WeekStart]))

WeekStart = Sales[SaleDate] - WEEKDAY(Sales[SaleDate],2)+1


#### 3. Profit Margin --> the percentage of revenue left after paying business expenses. 

Profit Margin % = 
VAR Revenue = SUM(Sales[TotalRevenue])
VAR Cost = SUM(handbags[Price])
VAR Profit = Revenue - Cost
RETURN 
    IF(Revenue > 0, (Profit / Revenue) * 100, BLANK())

#### What is Daily Active Customers
   -->  refers to a customer who engages with a company's product or service on a daily basis, meaning they actively use it within a 24-hour period...

   DailyActiveCustomers = DISTINCTCOUNT(Sales[BagID])

Daily Stickiness Ratio = DIVIDE([DailyActiveCustomers],[TotalCustomers],0) 


#### 5. Total Profit
Total Profit = SUM(Sales[TotalRevenue]) - SUM(handbags[Price])

#### 6. Total Customers
TotalCustomers = DISTINCTCOUNT(Customers[CustomerID])

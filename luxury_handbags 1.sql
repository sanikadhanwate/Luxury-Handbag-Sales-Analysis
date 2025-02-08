create database luxury_handbags

use luxury_handbags

CREATE TABLE Handbags (BagID int Primary KEY, Brand Varchar(50) not null, Model Char(20)not null, 
     Category Varchar(30) not null, 
	 Material Varchar(30) not null, 
	 Price DECIMAL(10,2) not null, 
	 LaunchDate DATE )

CREATE TABLE Stores (StoreID int PRIMARY KEY, StoreName Varchar(50) NOT NULL, Location Varchar(100) NOT NULL, OpeningDate DATE)

CREATE TABLE Sales (
    SaleID int PRIMARY KEY, BagID int, StoreID int, QuantitySold INT NOT NULL,
    SaleDate DATE NOT NULL, 
	TotalRevenue Decimal(10, 2) NOT NULL, 
	Foreign KEY (BagID) references Handbags(BagID), 
	Foreign KEY (StoreID) references Stores(StoreID))

CREATE TABLE Customers (
    CustomerID int Primary KEY, Name VARCHAR(50) NOT NULL, Email VARCHAR(100) NOT NULL,
    Country VARCHAR(50),
    PurchaseCount int DEFAULT 0)

INSERT INTO Handbags (BagID, Brand, Model, Category, Material, Price, LaunchDate) VALUES
(1, 'Gucci', 'GG Marmont', 'Shoulder Bag', 'Leather', 2200.00, '2023-01-15'),
(2, 'Louis Vuitton', 'Neverfull', 'Tote', 'Canvas', 1800.00, '2022-11-20'),
(3, 'Prada', 'Re-Edition 2005', 'Mini Bag', 'Nylon', 1450.00, '2023-03-10'),
(4, 'Chanel', 'Classic Flap', 'Shoulder Bag', 'Leather', 7500.00, '2020-09-25'),
(5, 'Hermes', 'Birkin', 'Tote', 'Leather', 12000.00, '2021-05-01'),
(6, 'Gucci', 'Dionysus', 'Shoulder Bag', 'Canvas', 2500.00, '2023-02-10'),
(7, 'Fendi', 'Baguette', 'Mini Bag', 'Leather', 2700.00, '2022-12-15'),
(8, 'Balenciaga', 'Hourglass', 'Crossbody', 'Leather', 2400.00, '2023-01-20'),
(9, 'Saint Laurent', 'LouLou', 'Shoulder Bag', 'Leather', 2900.00, '2023-04-05'),
(10, 'Dior', 'Lady Dior', 'Tote', 'Leather', 5200.00, '2023-03-01'),
(11, 'Bottega Veneta', 'Cassette', 'Crossbody', 'Leather', 3300.00, '2022-11-10'),
(12, 'Givenchy', 'Antigona', 'Tote', 'Leather', 2500.00, '2021-07-15'),
(13, 'Chloe', 'Marcie', 'Shoulder Bag', 'Leather', 1700.00, '2022-10-05'),
(14, 'Coach', 'Tabby', 'Crossbody', 'Leather', 450.00, '2023-02-20'),
(15, 'Versace', 'La Medusa', 'Shoulder Bag', 'Leather', 2300.00, '2023-01-25'),
(16, 'Celine', 'Triomphe', 'Crossbody', 'Leather', 3600.00, '2023-05-10'),
(17, 'Burberry', 'Pocket Bag', 'Tote', 'Canvas', 1300.00, '2022-08-15'),
(18, 'Tory Burch', 'Kira', 'Mini Bag', 'Leather', 600.00, '2022-12-10'),
(19, 'Michael Kors', 'Hamilton', 'Tote', 'Leather', 350.00, '2022-09-15'),
(20, 'Kate Spade', 'Margaux', 'Crossbody', 'Leather', 250.00, '2023-01-12'),
(21, 'Longchamp', 'Le Pliage', 'Tote', 'Nylon', 150.00, '2023-03-25'),
(22, 'Marc Jacobs', 'Snapshot', 'Mini Bag', 'Leather', 450.00, '2023-05-05'),
(23, 'Gucci', 'Jackie 1961', 'Shoulder Bag', 'Leather', 3200.00, '2023-06-01'),
(24, 'Louis Vuitton', 'Speedy', 'Mini Bag', 'Canvas', 1600.00, '2022-07-18'),
(25, 'Prada', 'Galleria', 'Tote', 'Leather', 2700.00, '2023-02-15'),
(26, 'Chanel', 'Boy Bag', 'Crossbody', 'Leather', 5800.00, '2020-08-30'),
(27, 'Hermes', 'Kelly', 'Tote', 'Leather', 10500.00, '2021-06-10'),
(28, 'Fendi', 'Peekaboo', 'Shoulder Bag', 'Leather', 5100.00, '2022-10-22'),
(29, 'Balenciaga', 'Le Cagole', 'Mini Bag', 'Leather', 2100.00, '2023-04-15'),
(30, 'Saint Laurent', 'Sac De Jour', 'Tote', 'Leather', 3500.00, '2023-03-30'),
(31, 'Dior', 'Saddle Bag', 'Shoulder Bag', 'Leather', 4500.00, '2023-02-28'),
(32, 'Bottega Veneta', 'Arco', 'Tote', 'Leather', 4200.00, '2022-11-25'),
(33, 'Givenchy', '4G Soft', 'Crossbody', 'Leather', 1900.00, '2022-12-18'),
(34, 'Chloe', 'Tess', 'Shoulder Bag', 'Leather', 1950.00, '2023-01-29'),
(35, 'Coach', 'Willow', 'Tote', 'Leather', 375.00, '2022-09-12'),
(36, 'Versace', 'Virtus', 'Crossbody', 'Leather', 2100.00, '2022-12-22'),
(37, 'Celine', 'Cabas', 'Tote', 'Canvas', 1350.00, '2023-03-08'),
(38, 'Burberry', 'Lola', 'Shoulder Bag', 'Leather', 2250.00, '2023-05-10'),
(39, 'Tory Burch', 'Ella', 'Tote', 'Nylon', 300.00, '2022-11-15'),
(40, 'Michael Kors', 'Soho', 'Shoulder Bag', 'Leather', 400.00, '2023-02-05')



INSERT INTO Stores (StoreID, StoreName, Location, OpeningDate) VALUES
(1, 'Paris Flagship', 'Paris, France', '2015-05-01'),
(2, 'New York Boutique', 'New York, USA', '2018-08-15'),
(3, 'Tokyo Emporium', 'Tokyo, Japan', '2019-03-30'),
(4, 'Dubai Luxury Mall', 'Dubai, UAE', '2020-07-10'),
(5, 'London Showroom', 'London, UK', '2021-10-05'),
(6, 'Sydney Elegance', 'Sydney, Australia', '2018-12-01'),
(7, 'Milan Hub', 'Milan, Italy', '2022-04-15'),
(8, 'Singapore Luxe', 'Singapore, Singapore', '2020-11-20'),
(9, 'Los Angeles Galleria', 'Los Angeles, USA', '2017-06-10'),
(10, 'Hong Kong Prestige', 'Hong Kong, China', '2019-02-25'),
(11, 'Toronto Grandeur', 'Toronto, Canada', '2021-09-01'),
(12, 'Seoul Style Center', 'Seoul, South Korea', '2022-03-12'),
(13, 'Berlin Atelier', 'Berlin, Germany', '2016-10-15'),
(14, 'Shanghai Elite', 'Shanghai, China', '2021-05-22'),
(15, 'Madrid Vogue', 'Madrid, Spain', '2019-12-05'),
(16, 'Zurich Classic', 'Zurich, Switzerland', '2018-08-20'),
(17, 'Mumbai Luxe', 'Mumbai, India', '2022-11-08'),
(18, 'Bangkok Elegance', 'Bangkok, Thailand', '2020-09-30'),
(19, 'Vienna Class', 'Vienna, Austria', '2019-07-14'),
(20, 'Cape Town Prestige', 'Cape Town, South Africa', '2017-03-18'),
(21, 'Rio Glam', 'Rio de Janeiro, Brazil', '2021-02-26'),
(22, 'Moscow Grande', 'Moscow, Russia', '2016-12-10'),
(23, 'Amsterdam Chic', 'Amsterdam, Netherlands', '2022-06-01'),
(24, 'Rome Iconic', 'Rome, Italy', '2018-01-28'),
(25, 'Istanbul Opulence', 'Istanbul, Turkey', '2019-05-15'),
(26, 'Buenos Aires Fashion', 'Buenos Aires, Argentina', '2020-10-18'),
(27, 'Jakarta Essence', 'Jakarta, Indonesia', '2021-07-12'),
(28, 'Stockholm Nordic', 'Stockholm, Sweden', '2022-09-03'),
(29, 'Copenhagen Chic', 'Copenhagen, Denmark', '2018-04-20'),
(30, 'Athens Heritage', 'Athens, Greece', '2020-12-15'),
(31, 'Oslo Prestige', 'Oslo, Norway', '2019-09-25'),
(32, 'Helsinki Luxe', 'Helsinki, Finland', '2021-11-05'),
(33, 'Prague Elegance', 'Prague, Czech Republic', '2022-02-19'),
(34, 'Warsaw Modern', 'Warsaw, Poland', '2020-06-08'),
(35, 'Dublin Class', 'Dublin, Ireland', '2017-05-13'),
(36, 'Lisbon Grandeur', 'Lisbon, Portugal', '2019-01-22'),
(37, 'Brussels Refinement', 'Brussels, Belgium', '2021-03-30'),
(38, 'Edinburgh Charm', 'Edinburgh, UK', '2018-07-18'),
(39, 'Manila Elite', 'Manila, Philippines', '2020-08-10'),
(40, 'Mexico City Luxe', 'Mexico City, Mexico', '2019-04-03')



INSERT INTO Sales (SaleID, BagID, StoreID, QuantitySold, SaleDate, TotalRevenue) VALUES
(1, 1, 1, 10, '2023-06-01', 22000.00),
(2, 2, 2, 15, '2023-06-15', 27000.00),
(3, 3, 3, 20, '2023-07-01', 29000.00),
(4, 4, 1, 5, '2023-07-10', 37500.00),
(5, 5, 2, 8, '2023-08-20', 96000.00),
(6, 6, 3, 12, '2023-09-10', 30000.00),
(7, 7, 4, 7, '2023-10-01', 18900.00),
(8, 8, 5, 9, '2023-10-15', 21600.00),
(9, 9, 6, 6, '2023-11-01', 17400.00),
(10, 10, 7, 4, '2023-11-10', 20800.00),
(11, 11, 8, 10, '2023-11-20', 33000.00),
(12, 12, 9, 5, '2023-12-01', 12500.00),
(13, 13, 10, 8, '2023-12-15', 13600.00),
(14, 14, 11, 15, '2024-01-05', 6750.00),
(15, 15, 12, 6, '2024-01-10', 13800.00),
(16, 16, 13, 3, '2024-01-20', 10800.00),
(17, 17, 14, 12, '2024-02-01', 15600.00),
(18, 18, 15, 7, '2024-02-10', 9100.00),
(19, 19, 16, 5, '2024-02-20', 1750.00),
(20, 20, 17, 9, '2024-03-01', 2250.00),
(21, 1, 18, 8, '2024-03-15', 17600.00),
(22, 2, 19, 10, '2024-03-25', 18000.00),
(23, 3, 20, 7, '2024-04-01', 10150.00),
(24, 4, 5, 3, '2024-04-10', 22500.00),
(25, 5, 6, 6, '2024-04-20', 72000.00),
(26, 6, 7, 9, '2024-05-01', 22500.00),
(27, 7, 8, 10, '2024-05-10', 27000.00),
(28, 8, 9, 7, '2024-05-20', 16800.00),
(29, 9, 10, 5, '2024-06-01', 14500.00),
(30, 10, 11, 4, '2024-06-10', 10400.00),
(31, 11, 12, 6, '2024-06-20', 19800.00),
(32, 12, 13, 3, '2024-07-01', 7500.00),
(33, 13, 14, 8, '2024-07-10', 13600.00),
(34, 14, 15, 12, '2024-07-20', 5400.00),
(35, 15, 16, 10, '2024-08-01', 23000.00),
(36, 16, 17, 5, '2024-08-10', 18000.00),
(37, 17, 18, 9, '2024-08-20', 11700.00),
(38, 18, 19, 6, '2024-09-01', 7800.00),
(39, 19, 20, 8, '2024-09-10', 2800.00),
(40, 20, 1, 7, '2024-09-20', 1750.00)




INSERT INTO Customers (CustomerID, Name, Email, Country, PurchaseCount) VALUES
(1, 'Alice Smith', 'alice.smith@example.com', 'USA', 3),
(2, 'John Doe', 'john.doe@example.com', 'UK', 2),
(3, 'Yuki Tanaka', 'yuki.tanaka@example.jp', 'Japan', 5),
(4, 'Marie Dupont', 'marie.dupont@example.fr', 'France', 1),
(5, 'Carlos Rivera', 'carlos.rivera@example.mx', 'Mexico', 4),
(6, 'Li Wei', 'li.wei@example.cn', 'China', 6),
(7, 'Anna Rossi', 'anna.rossi@example.it', 'Italy', 3),
(8, 'Emma Johnson', 'emma.johnson@example.com', 'Australia', 2),
(9, 'Mohamed Ali', 'mohamed.ali@example.eg', 'Egypt', 4),
(10, 'Sophia Williams', 'sophia.williams@example.ca', 'Canada', 5),
(11, 'Lucas Müller', 'lucas.mueller@example.de', 'Germany', 3),
(12, 'Ava Brown', 'ava.brown@example.co.uk', 'UK', 7),
(13, 'Hiroshi Sato', 'hiroshi.sato@example.jp', 'Japan', 2),
(14, 'Liam Jones', 'liam.jones@example.au', 'Australia', 4),
(15, 'Olivia Davis', 'olivia.davis@example.us', 'USA', 6),
(16, 'Noah Garcia', 'noah.garcia@example.es', 'Spain', 5),
(17, 'Mia Chen', 'mia.chen@example.sg', 'Singapore', 3),
(18, 'Ethan Martinez', 'ethan.martinez@example.ar', 'Argentina', 2),
(19, 'Isabella Hernandez', 'isabella.hernandez@example.mx', 'Mexico', 6),
(20, 'Benjamin Lee', 'benjamin.lee@example.kr', 'South Korea', 4),
(21, 'Charlotte Wilson', 'charlotte.wilson@example.nz', 'New Zealand', 3),
(22, 'James Patel', 'james.patel@example.in', 'India', 2),
(23, 'Amelia Novak', 'amelia.novak@example.pl', 'Poland', 5),
(24, 'William Kim', 'william.kim@example.kr', 'South Korea', 4),
(25, 'Emily Clark', 'emily.clark@example.za', 'South Africa', 3),
(26, 'Alexander Ivanov', 'alexander.ivanov@example.ru', 'Russia', 6),
(27, 'Ella Baker', 'ella.baker@example.ie', 'Ireland', 2),
(28, 'Jacob White', 'jacob.white@example.ca', 'Canada', 4),
(29, 'Chloe Green', 'chloe.green@example.sg', 'Singapore', 3),
(30, 'Jack Adams', 'jack.adams@example.us', 'USA', 2),
(31, 'Zoe King', 'zoe.king@example.uk', 'UK', 5),
(32, 'Leo Scott', 'leo.scott@example.ca', 'Canada', 4),
(33, 'Sophia Walker', 'sophia.walker@example.nz', 'New Zealand', 3),
(34, 'Daniel Young', 'daniel.young@example.au', 'Australia', 2),
(35, 'Mason Turner', 'mason.turner@example.za', 'South Africa', 4),
(36, 'Amira Ahmed', 'amira.ahmed@example.eg', 'Egypt', 6),
(37, 'Charlotte Carter', 'charlotte.carter@example.co.uk', 'UK', 1),
(38, 'Michael Johnson', 'michael.johnson@example.com', 'USA', 7),
(39, 'Lily Martinez', 'lily.martinez@example.br', 'Brazil', 5),
(40, 'Omar Ali', 'omar.ali@example.sa', 'Saudi Arabia', 2)

select*from Handbags, Stores, Sales, Customers
select*from Customers

-- 1. Total sales and revenue for each handbag model
SELECT 
    h.Model, 
    SUM(s.QuantitySold) AS TotalSales, 
    SUM(s.TotalRevenue) AS TotalRevenue
FROM Sales s
JOIN Handbags h ON s.BagID = h.BagID
GROUP BY h.Model

-- 2. Stores generating the highest revenue
SELECT 
    st.StoreName, 
    SUM(s.TotalRevenue) AS TotalRevenue
FROM Sales s
JOIN Stores st ON s.StoreID = st.StoreID
GROUP BY st.StoreName
ORDER BY TotalRevenue DESC

-- 3. Most popular handbag categories
SELECT 
    h.Category, 
    COUNT(*) AS TotalSold
FROM Sales s
JOIN Handbags h ON s.BagID = h.BagID
GROUP BY h.Category
ORDER BY TotalSold DESC

-- Market Growth --> 4. Revenue growth over the past year
SELECT 
    YEAR(s.SaleDate) AS Year, 
    MONTH(s.SaleDate) AS Month, 
    SUM(s.TotalRevenue) AS MonthlyRevenue
FROM Sales s
WHERE s.SaleDate >= DATEADD(YEAR, -1, GETDATE())
GROUP BY YEAR(s.SaleDate), MONTH(s.SaleDate)
ORDER BY Year, Month



-- 5. Locations with highest sales growth
WITH RevenueTrend AS (
    SELECT 
        st.Location, 
        YEAR(s.SaleDate) AS Year, 
        SUM(s.TotalRevenue) AS AnnualRevenue,
        ROW_NUMBER() OVER (PARTITION BY st.Location ORDER BY YEAR(s.SaleDate)) AS YearRank
    FROM Sales s
    JOIN Stores st ON s.StoreID = st.StoreID
    GROUP BY st.Location, YEAR(s.SaleDate)
)

SELECT 
    Location, 
    Year, 
    AnnualRevenue,
    LAG(AnnualRevenue) OVER (PARTITION BY Location ORDER BY Year) AS PreviousYearRevenue,
    (AnnualRevenue - LAG(AnnualRevenue) OVER (PARTITION BY Location ORDER BY Year)) AS RevenueGrowth
FROM RevenueTrend
WHERE YearRank > 1

-- Inventory Management --> 6. Underperforming handbags (low sales)
SELECT 
    h.Model, 
    SUM(s.QuantitySold) AS TotalSales
FROM Sales s
JOIN Handbags h ON s.BagID = h.BagID
GROUP BY h.Model
HAVING SUM(s.QuantitySold) < 10


-- Customer Insights ---> 1. Top 10 customers by total purchase value
SELECT Top 10
    c.Name, 
    c.Email, 
    SUM(s.TotalRevenue) AS TotalPurchaseValue,
    RANK() OVER (ORDER BY SUM(s.TotalRevenue) DESC) AS Rank
FROM Sales s
JOIN Customers c ON s.StoreID = c.CustomerID
GROUP BY c.Name, c.Email
ORDER BY Rank


-- 2. Average purchase value per customer
SELECT 
    c.Name, 
    AVG(s.TotalRevenue) AS AvgPurchaseValue
FROM Sales s
JOIN Customers c ON s.StoreID = c.CustomerID
GROUP BY c.Name

-- Operational Optimization ---> 3. Sales performance of leather bags vs canvas bags
SELECT 
    h.Material, 
    SUM(s.QuantitySold) AS TotalSales, 
    SUM(s.TotalRevenue) AS TotalRevenue
FROM Sales s
JOIN Handbags h ON s.BagID = h.BagID
WHERE h.Material IN ('Leather', 'Canvas')
GROUP BY h.Material

-- 4. Stores needing restock for high-selling handbag models
SELECT 
    h.Model, 
    st.StoreName, 
    SUM(s.QuantitySold) AS TotalSold
FROM Sales s
JOIN Handbags h ON s.BagID = h.BagID
JOIN Stores st ON s.StoreID = st.StoreID
GROUP BY h.Model, st.StoreName
HAVING SUM(s.QuantitySold) > 10

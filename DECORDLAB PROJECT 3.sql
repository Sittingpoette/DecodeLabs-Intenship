

 1. View All Records
 
 SELECT * 
 FROM Orders;


 2. Filter Orders with High Total Price (WHERE)
 Find orders worth more than ₦2,000:

 SELECT OrderID, Product, TotalPrice
 FROM Orders
 WHERE TotalPrice > 2000;


 3. Sort Orders by Total Price (ORDER BY)
 Highest-value orders first:
 
SELECT OrderID, Product, TotalPrice
FROM Orders
ORDER BY TotalPrice DESC;


4. Count Total Orders (COUNT)

SELECT COUNT(*) AS TotalOrders
FROM Orders;

Insight: Total Orders = 1,200


 5. Total Revenue (SUM)

SELECT SUM(TotalPrice) AS TotalRevenue
FROM Orders;

Insight: Total Revenue ≈ ₦1,264,761.96


6. Average Order Value (AVG)

SELECT AVG(TotalPrice) AS AverageOrderValue
FROM Orders;
Insight: Average Order Value ≈ ₦1,053.97


 7. Orders by Product (GROUP BY)

SELECT Product,
       COUNT(*) AS NumberOfOrders
FROM Orders
GROUP BY Product
ORDER BY NumberOfOrders DESC;

8. Revenue by Product (GROUP BY + SUM)

SELECT Product,
       SUM(TotalPrice) AS Revenue
FROM Orders
GROUP BY Product
ORDER BY Revenue DESC;

 9. Average Order Value by Product

SELECT Product,
       AVG(TotalPrice) AS AvgOrderValue
FROM Orders
GROUP BY Product
ORDER BY AvgOrderValue DESC;

 10. Orders by Payment Method

SELECT PaymentMethod,
       COUNT(*) AS TotalOrders
FROM Orders
GROUP BY PaymentMethod
ORDER BY TotalOrders DESC;

 11. Orders by Status

SELECT OrderStatus,
       COUNT(*) AS TotalOrders
FROM Orders
GROUP BY OrderStatus
ORDER BY TotalOrders DESC;

 12. Revenue by Referral Source

SELECT ReferralSource,
       SUM(TotalPrice) AS Revenue
FROM Orders
GROUP BY ReferralSource
ORDER BY Revenue DESC;

This shows which marketing channel generates the most revenue.


13. Orders from Instagram Only (WHERE + GROUP BY)

SELECT Product,
       COUNT(*) AS Orders
FROM Orders
WHERE ReferralSource = 'Instagram'
GROUP BY Product
ORDER BY Orders DESC;


14. Total Quantity Sold per Product

SELECT Product,
       SUM(Quantity) AS TotalQuantitySold
FROM Orders
GROUP BY Product
ORDER BY TotalQuantitySold DESC;



# Q1. Display all customers.
SELECT * FROM customers;

#Q2. Display all products costing above ₹5000.
SELECT * FROM products
WHERE price > 5000;

#Q3. Display products with stock less than 10.
SELECT * FROM products
WHERE stock_quantity < 10;

#Q4. Display all suppliers.
SELECT * FROM suppliers;

#Q5. Display all completed orders.
SELECT * FROM orders
WHERE order_status = 'Completed';

#Q6. Display orders placed this month.
SELECT * FROM orders
WHERE order_date >= DATE_TRUNC('month', CURRENT_DATE)
AND order_date < DATE_TRUNC('month', CURRENT_DATE) + INTERVAL '1 month';

#Q7. Display customers registered in the last 30 days.
SELECT * FROM customers
WHERE registration_date >= CURRENT_DATE - INTERVAL '30 days';

#Q8. Display products sorted by price descending.
SELECT * FROM products
ORDER BY price DESC;

#Q9. Display top 10 expensive products.
SELECT * FROM products
ORDER BY price DESC
LIMIT 10;

#Q10. Display all active shipments.
SELECT * FROM shipments
WHERE shipment_status = 'Active';

#11. Find total customers.
SELECT COUNT(*) AS total_customers
FROM customers;

#Q12. Find total products.
SELECT COUNT(*) AS total_products
FROM products;

#Q13. Find average product price.
SELECT AVG(price) AS average_product_price
FROM products;

#Q14. Find highest priced product.
SELECT MAX(price) AS highest_product_price
FROM products;

#Q15. Find lowest priced product.
SELECT MIN(price) AS lowest_product_price
FROM products;

#Q16. Find total revenue generated.
SELECT SUM(total_amount) AS total_revenue
FROM orders;

#Q17. Find total orders placed.
SELECT COUNT(*) AS total_orders
FROM orders;

#Q18. Find total stock available.
SELECT SUM(stock_quantity) AS total_stock
FROM products;

#Q19. Find average order value.
SELECT AVG(total_amount) AS average_order_value
FROM orders;

#Q20. Find total payment received.
SELECT SUM(amount) AS total_payment_received
FROM payments
WHERE payment_status = 'Success';

#Q21. Find number of products category-wise.
SELECT category_id, COUNT(*) AS total_products
FROM products
GROUP BY category_id
ORDER BY category_id;

#Q22. Find total sales category-wise.
SELECT p.category_id,
       SUM(oi.quantity * oi.unit_price) AS total_sales
FROM products p
JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY p.category_id
ORDER BY p.category_id;

#Q23. Find total revenue supplier-wise.
SELECT s.supplier_id,
       s.supplier_name,
       SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM suppliers s
JOIN products p
ON s.supplier_id = p.supplier_id
JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY s.supplier_id, s.supplier_name
ORDER BY s.supplier_id;

#Q24. Find customer count city-wise.
SELECT city,
       COUNT(DISTINCT customer_id) AS total_customers
FROM addresses
GROUP BY city
ORDER BY city;

#Q25. Find order count status-wise.
SELECT order_status,
       COUNT(*) AS total_orders
FROM orders
GROUP BY order_status
ORDER BY order_status;

#Q26. Find average rating product-wise.
SELECT product_id,
       AVG(rating) AS average_rating
FROM reviews
GROUP BY product_id
ORDER BY product_id;

#Q27. Find total products supplier-wise.
SELECT s.supplier_id,
       s.supplier_name,
       COUNT(p.product_id) AS total_products
FROM suppliers s
JOIN products p
ON s.supplier_id = p.supplier_id
GROUP BY s.supplier_id, s.supplier_name
ORDER BY s.supplier_id;

#Q28. Find shipment count status-wise.
SELECT shipment_status,
       COUNT(*) AS total_shipments
FROM shipments
GROUP BY shipment_status
ORDER BY shipment_status;

#Q29. Find total payments method-wise.
SELECT payment_method,
       SUM(amount) AS total_payments
FROM payments
GROUP BY payment_method
ORDER BY payment_method;

#Q30. Find monthly sales report.
SELECT
    DATE_TRUNC('month', order_date) AS sales_month,
    SUM(total_amount) AS total_sales
FROM orders
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY sales_month;

#Q31. Display categories having more than 20 products.
SELECT category_id,
       COUNT(product_id) AS total_products
FROM products
GROUP BY category_id
HAVING COUNT(product_id) > 20;

#Q32. Display suppliers supplying more than 10 products.
SELECT s.supplier_id,
       s.supplier_name,
       COUNT(p.product_id) AS total_products
FROM suppliers s
JOIN products p
ON s.supplier_id = p.supplier_id
GROUP BY s.supplier_id, s.supplier_name
HAVING COUNT(p.product_id) > 10;

#Q33. Display customers having more than 5 orders.
SELECT c.customer_id,
       c.customer_name,
       COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(o.order_id) > 5;

#Q34. Display products having average rating above 4.
SELECT p.product_id,
       p.product_name,
       AVG(r.rating) AS average_rating
FROM products p
JOIN reviews r
ON p.product_id = r.product_id
GROUP BY p.product_id, p.product_name
HAVING AVG(r.rating) > 4
ORDER BY p.product_id;

#35. Display cities with more than 50 customers.
SELECT city,
       COUNT(DISTINCT customer_id) AS total_customers
FROM addresses
GROUP BY city
HAVING COUNT(DISTINCT customer_id) > 50;

#Q36. Display customer names with order details.
SELECT c.customer_name,
       o.order_id,
       o.order_date,
       o.order_status,
       o.total_amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
ORDER BY c.customer_id, o.order_id;

#Q37. Display order details with products.
SELECT o.order_id,
       o.order_date,
       o.order_status,
       p.product_id,
       p.product_name,
       oi.quantity,
       oi.unit_price
FROM orders o
INNER JOIN order_items oi
ON o.order_id = oi.order_id
INNER JOIN products p
ON oi.product_id = p.product_id
ORDER BY o.order_id;

#Q38. Display product names with category names.
SELECT p.product_name,
       c.category_name
FROM products p
INNER JOIN categories c
ON p.category_id = c.category_id
ORDER BY p.product_id;

#Q39. Display product names with supplier names.
SELECT p.product_name,
       s.supplier_name
FROM products p
INNER JOIN suppliers s
ON p.supplier_id = s.supplier_id
ORDER BY p.product_id;

#Q40. Display reviews with customer names.
SELECT r.review_id,
       c.customer_name,
       r.product_id,
       r.rating,
       r.review_text
FROM reviews r
INNER JOIN customers c
ON r.customer_id = c.customer_id
ORDER BY r.review_id;

#Q41. Display payment details with customer names.
SELECT c.customer_name,
       o.order_id,
       p.payment_id,
       p.payment_date,
       p.payment_method,
       p.payment_status,
       p.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
INNER JOIN payments p
ON o.order_id = p.order_id
ORDER BY p.payment_id;

#Q42. Display shipment details with order details.
SELECT o.order_id,
       o.order_date,
       o.order_status,
       o.total_amount,
       s.shipment_id,
       s.shipment_date,
       s.delivery_date,
       s.shipment_status
FROM orders o
INNER JOIN shipments s
ON o.order_id = s.order_id
ORDER BY o.order_id;

#Q43. Display cart items with product names.
SELECT ci.cart_item_id,
       ci.cart_id,
       p.product_name,
       ci.quantity
FROM cart_items ci
INNER JOIN products p
ON ci.product_id = p.product_id
ORDER BY ci.cart_item_id;

#Q44. Display wishlist items with product names.
SELECT w.wishlist_id,
       w.customer_id,
       p.product_name
FROM wishlist w
INNER JOIN products p
ON w.product_id = p.product_id
ORDER BY w.wishlist_id;

#Q45. Display customer addresses with customer names.
SELECT c.customer_id,
       c.customer_name,
       a.address_type,
       a.city,
       a.state,
       a.pincode
FROM customers c
INNER JOIN addresses a
ON c.customer_id = a.customer_id
ORDER BY c.customer_id;

#Q46. Find customers who never placed orders.
SELECT c.customer_id,
       c.customer_name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL
ORDER BY c.customer_id;

#Q47. Find products never ordered.
SELECT p.product_id,
       p.product_name
FROM products p
LEFT JOIN order_items oi
ON p.product_id = oi.product_id
WHERE oi.order_item_id IS NULL
ORDER BY p.product_id;

#Q48. Find products with no reviews.
SELECT p.product_id,
       p.product_name
FROM products p
LEFT JOIN reviews r
ON p.product_id = r.product_id
WHERE r.review_id IS NULL
ORDER BY p.product_id;

#Q49. Find customers without addresses.
SELECT c.customer_id,
       c.customer_name
FROM customers c
LEFT JOIN addresses a
ON c.customer_id = a.customer_id
WHERE a.address_id IS NULL
ORDER BY c.customer_id;

#Q50. Find orders without payments.
SELECT o.order_id,
       o.customer_id,
       o.order_date,
       o.order_status,
       o.total_amount
FROM orders o
LEFT JOIN payments p
ON o.order_id = p.order_id
WHERE p.payment_id IS NULL
ORDER BY o.order_id;

#Q51. Find all products and corresponding reviews.
SELECT p.product_id,
       p.product_name,
       r.review_id,
       r.rating,
       r.review_text
FROM products p
LEFT JOIN reviews r
ON p.product_id = r.product_id
ORDER BY p.product_id;

#Q52. Find all customers and their orders.
SELECT c.customer_id,
       c.customer_name,
       o.order_id,
       o.order_date,
       o.order_status,
       o.total_amount
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
ORDER BY c.customer_id, o.order_id;

#Q53. Find all suppliers and products.
SELECT s.supplier_id,
       s.supplier_name,
       p.product_id,
       p.product_name,
       p.price
FROM suppliers s
LEFT JOIN products p
ON s.supplier_id = p.supplier_id
ORDER BY s.supplier_id;

#Q54. Find all categories and products.
SELECT c.category_id,
       c.category_name,
       p.product_id,
       p.product_name,
       p.price
FROM categories c
LEFT JOIN products p
ON c.category_id = p.category_id
ORDER BY c.category_id;

#Q55. Find all orders and shipments.
SELECT o.order_id,
       o.order_date,
       o.order_status,
       o.total_amount,
       s.shipment_id,
       s.shipment_date,
       s.delivery_date,
       s.shipment_status
FROM orders o
LEFT JOIN shipments s
ON o.order_id = s.order_id
ORDER BY o.order_id;

#Q56. Find highest selling product.
SELECT p.product_id,
       p.product_name,
       SUM(oi.quantity) AS total_quantity_sold
FROM products p
INNER JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(oi.quantity) = (
    SELECT MAX(total_quantity)
    FROM (
        SELECT SUM(quantity) AS total_quantity
        FROM order_items
        GROUP BY product_id
    ) AS sales
);

#Q57. Find second highest selling product.
SELECT p.product_id,
       p.product_name,
       SUM(oi.quantity) AS total_quantity_sold
FROM products p
INNER JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity_sold DESC
OFFSET 1
LIMIT 1;

#Q58. Find third highest selling product.
SELECT p.product_id,
       p.product_name,
       SUM(oi.quantity) AS total_quantity_sold
FROM products p
INNER JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity_sold DESC
OFFSET 2
LIMIT 1;

#Q59. Find customer with highest spending.
SELECT c.customer_id,
       c.customer_name,
       SUM(o.total_amount) AS total_spending
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING SUM(o.total_amount) = (
    SELECT MAX(customer_spending)
    FROM (
        SELECT SUM(total_amount) AS customer_spending
        FROM orders
        GROUP BY customer_id
    ) AS spending
);

#Q60. Find customers spending above average.
SELECT c.customer_id,
       c.customer_name,
       SUM(o.total_amount) AS total_spending
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING SUM(o.total_amount) > (
    SELECT AVG(customer_spending)
    FROM (
        SELECT SUM(total_amount) AS customer_spending
        FROM orders
        GROUP BY customer_id
    ) AS spending
)
ORDER BY total_spending DESC;

#Q61. Find products priced above average.
SELECT product_id,
       product_name,
       price
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
)
ORDER BY price DESC;

#Q62. Find suppliers supplying highest number of products.
SELECT s.supplier_id,
       s.supplier_name,
       COUNT(p.product_id) AS total_products
FROM suppliers s
INNER JOIN products p
ON s.supplier_id = p.supplier_id
GROUP BY s.supplier_id, s.supplier_name
HAVING COUNT(p.product_id) = (
    SELECT MAX(product_count)
    FROM (
        SELECT COUNT(*) AS product_count
        FROM products
        GROUP BY supplier_id
    ) AS supplier_data
);

#Q63. Find category generating maximum revenue.
SELECT c.category_id,
       c.category_name,
       SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM categories c
INNER JOIN products p
ON c.category_id = p.category_id
INNER JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY c.category_id, c.category_name
HAVING SUM(oi.quantity * oi.unit_price) = (
    SELECT MAX(category_revenue)
    FROM (
        SELECT SUM(oi2.quantity * oi2.unit_price) AS category_revenue
        FROM products p2
        INNER JOIN order_items oi2
        ON p2.product_id = oi2.product_id
        GROUP BY p2.category_id
    ) AS category_sales
);

#Q64. Find customers who ordered every product in a category.
SELECT c.customer_id,
       c.customer_name,
       cat.category_name
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
INNER JOIN order_items oi
ON o.order_id = oi.order_id
INNER JOIN products p
ON oi.product_id = p.product_id
INNER JOIN categories cat
ON p.category_id = cat.category_id
GROUP BY c.customer_id,
         c.customer_name,
         cat.category_id,
         cat.category_name
HAVING COUNT(DISTINCT p.product_id) = (
    SELECT COUNT(*)
    FROM products p2
    WHERE p2.category_id = cat.category_id
)
ORDER BY c.customer_id, cat.category_id;

#Q65. Find products never purchased.
SELECT p.product_id,
       p.product_name
FROM products p
WHERE p.product_id NOT IN (
    SELECT product_id
    FROM order_items
)
ORDER BY p.product_id;

#Q66. Find products costing above category average.
SELECT p.product_id,
       p.product_name,
       p.category_id,
       p.price
FROM products p
WHERE p.price > (
    SELECT AVG(p2.price)
    FROM products p2
    WHERE p2.category_id = p.category_id
)
ORDER BY p.category_id, p.price DESC;

#Q67. Find customers spending above city average.
SELECT c.customer_id,
       c.customer_name,
       a.city,
       SUM(o.total_amount) AS total_spending
FROM customers c
INNER JOIN addresses a
ON c.customer_id = a.customer_id
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name, a.city
HAVING SUM(o.total_amount) > (
    SELECT AVG(customer_spending)
    FROM (
        SELECT c2.customer_id,
               SUM(o2.total_amount) AS customer_spending
        FROM customers c2
        INNER JOIN addresses a2
        ON c2.customer_id = a2.customer_id
        INNER JOIN orders o2
        ON c2.customer_id = o2.customer_id
        WHERE a2.city = a.city
        GROUP BY c2.customer_id
    ) AS city_spending
)
ORDER BY a.city, total_spending DESC;

#Q68. Find suppliers with revenue above supplier average.
SELECT s.supplier_id,
       s.supplier_name,
       SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM suppliers s
INNER JOIN products p
ON s.supplier_id = p.supplier_id
INNER JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY s.supplier_id, s.supplier_name
HAVING SUM(oi.quantity * oi.unit_price) > (
    SELECT AVG(supplier_revenue)
    FROM (
        SELECT SUM(oi2.quantity * oi2.unit_price) AS supplier_revenue
        FROM products p2
        INNER JOIN order_items oi2
        ON p2.product_id = oi2.product_id
        GROUP BY p2.supplier_id
    ) AS supplier_data
)
ORDER BY total_revenue DESC;

#Q69. Find orders larger than customer average.
SELECT o.order_id,
       o.customer_id,
       c.customer_name,
       o.total_amount
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id
WHERE o.total_amount > (
    SELECT AVG(o2.total_amount)
    FROM orders o2
    WHERE o2.customer_id = o.customer_id
)
ORDER BY o.customer_id, o.total_amount DESC;

#Q70. Find products with reviews above product average.
SELECT p.product_id,
       p.product_name,
       r.rating
FROM products p
INNER JOIN reviews r
ON p.product_id = r.product_id
WHERE r.rating > (
    SELECT AVG(r2.rating)
    FROM reviews r2
    WHERE r2.product_id = p.product_id
)
ORDER BY p.product_id;

#Q71. Rank products by revenue.
SELECT p.product_id,
       p.product_name,
       SUM(oi.quantity * oi.unit_price) AS total_revenue,
       RANK() OVER (
           ORDER BY SUM(oi.quantity * oi.unit_price) DESC
       ) AS revenue_rank
FROM products p
INNER JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY revenue_rank;

#Q72. Rank customers by spending.
SELECT c.customer_id,
       c.customer_name,
       SUM(o.total_amount) AS total_spending,
       RANK() OVER (
           ORDER BY SUM(o.total_amount) DESC
       ) AS spending_rank
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY spending_rank;

#Q73. Rank suppliers by sales.
SELECT supplier_id,
       supplier_name,
       total_sales,
       RANK() OVER (
           ORDER BY total_sales DESC
       ) AS sales_rank
FROM (
    SELECT s.supplier_id,
           s.supplier_name,
           COALESCE(SUM(oi.quantity * oi.unit_price), 0) AS total_sales
    FROM suppliers s
    LEFT JOIN products p
    ON s.supplier_id = p.supplier_id
    LEFT JOIN order_items oi
    ON p.product_id = oi.product_id
    GROUP BY s.supplier_id, s.supplier_name
) AS supplier_sales
ORDER BY sales_rank;

#Q74. Find top 3 products per category.
SELECT product_id,
       product_name,
       category_id,
       price,
       product_rank
FROM (
    SELECT product_id,
           product_name,
           category_id,
           price,
           RANK() OVER (
               PARTITION BY category_id
               ORDER BY price DESC
           ) AS product_rank
    FROM products
) AS ranked_products
WHERE product_rank <= 3
ORDER BY category_id, product_rank;

#Q75. Find top 5 customers per city.
WITH customer_spending AS (
    SELECT c.customer_id,
           c.customer_name,
           a.city,
           SUM(o.total_amount) AS total_spending
    FROM customers c
    INNER JOIN addresses a
    ON c.customer_id = a.customer_id
    INNER JOIN orders o
    ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.customer_name, a.city
),
ranked_customers AS (
    SELECT customer_id,
           customer_name,
           city,
           total_spending,
           ROW_NUMBER() OVER (
               PARTITION BY city
               ORDER BY total_spending DESC
           ) AS customer_rank
    FROM customer_spending
)
SELECT customer_id,
       customer_name,
       city,
       total_spending,
       customer_rank
FROM ranked_customers
WHERE customer_rank <= 5
ORDER BY city, customer_rank;

#Q76. Find running total revenue.
SELECT order_id,
       order_date,
       total_amount,
       SUM(total_amount) OVER (
           ORDER BY order_date, order_id
           ROWS BETWEEN UNBOUNDED PRECEDING
           AND CURRENT ROW
       ) AS running_total_revenue
FROM orders
ORDER BY order_date, order_id;

#Q77. Find cumulative monthly sales.
WITH monthly_sales AS (
    SELECT DATE_TRUNC('month', order_date) AS sales_month,
           SUM(total_amount) AS monthly_revenue
    FROM orders
    GROUP BY DATE_TRUNC('month', order_date)
)
SELECT sales_month,
       monthly_revenue,
       SUM(monthly_revenue) OVER (
           ORDER BY sales_month
           ROWS BETWEEN UNBOUNDED PRECEDING
           AND CURRENT ROW
       ) AS cumulative_sales
FROM monthly_sales
ORDER BY sales_month;

#Q78. Find highest order per customer.
SELECT customer_id,
       customer_name,
       order_id,
       total_amount
FROM (
    SELECT c.customer_id,
           c.customer_name,
           o.order_id,
           o.total_amount,
           RANK() OVER (
               PARTITION BY c.customer_id
               ORDER BY o.total_amount DESC
           ) AS order_rank
    FROM customers c
    INNER JOIN orders o
    ON c.customer_id = o.customer_id
) AS ranked_orders
WHERE order_rank = 1
ORDER BY customer_id;

#Q79. Find latest order per customer.
SELECT customer_id,
       customer_name,
       order_id,
       order_date,
       order_status,
       total_amount
FROM (
    SELECT c.customer_id,
           c.customer_name,
           o.order_id,
           o.order_date,
           o.order_status,
           o.total_amount,
           ROW_NUMBER() OVER (
               PARTITION BY c.customer_id
               ORDER BY o.order_date DESC, o.order_id DESC
           ) AS order_rank
    FROM customers c
    INNER JOIN orders o
    ON c.customer_id = o.customer_id
) AS latest_orders
WHERE order_rank = 1
ORDER BY customer_id;

#Q80. Find top-rated product in each category.
SELECT category_id,
       category_name,
       product_id,
       product_name,
       average_rating
FROM (
    SELECT c.category_id,
           c.category_name,
           p.product_id,
           p.product_name,
           AVG(r.rating) AS average_rating,
           RANK() OVER (
               PARTITION BY c.category_id
               ORDER BY AVG(r.rating) DESC
           ) AS product_rank
    FROM categories c
    INNER JOIN products p
    ON c.category_id = p.category_id
    INNER JOIN reviews r
    ON p.product_id = r.product_id
    GROUP BY c.category_id,
             c.category_name,
             p.product_id,
             p.product_name
) AS ranked_products
WHERE product_rank = 1
ORDER BY category_id;

#Q81. Find category-wise revenue using CTE.
WITH category_revenue AS (
    SELECT c.category_id,
           c.category_name,
           SUM(oi.quantity * oi.unit_price) AS total_revenue
    FROM categories c
    INNER JOIN products p
    ON c.category_id = p.category_id
    INNER JOIN order_items oi
    ON p.product_id = oi.product_id
    GROUP BY c.category_id, c.category_name
)
SELECT *
FROM category_revenue
ORDER BY total_revenue DESC;

#Q82. Find customer spending summary using CTE.
WITH customer_summary AS (
    SELECT c.customer_id,
           c.customer_name,
           COUNT(o.order_id) AS total_orders,
           COALESCE(SUM(o.total_amount), 0) AS total_spending,
           COALESCE(AVG(o.total_amount), 0) AS average_order_value
    FROM customers c
    LEFT JOIN orders o
    ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.customer_name
)
SELECT *
FROM customer_summary
ORDER BY total_spending DESC;

#Q83. Find top 10 customers using CTE.
WITH customer_spending AS (
    SELECT c.customer_id,
           c.customer_name,
           SUM(o.total_amount) AS total_spending
    FROM customers c
    INNER JOIN orders o
    ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.customer_name
)
SELECT customer_id,
       customer_name,
       total_spending
FROM customer_spending
ORDER BY total_spending DESC
LIMIT 10;

#Q84. Find top products using CTE.
WITH product_sales AS (
    SELECT p.product_id,
           p.product_name,
           SUM(oi.quantity * oi.unit_price) AS total_revenue
    FROM products p
    INNER JOIN order_items oi
    ON p.product_id = oi.product_id
    GROUP BY p.product_id, p.product_name
)
SELECT product_id,
       product_name,
       total_revenue
FROM product_sales
ORDER BY total_revenue DESC
LIMIT 10;

#Q85. Find supplier performance report using CTE.
WITH supplier_performance AS (
    SELECT s.supplier_id,
           s.supplier_name,
           COUNT(DISTINCT p.product_id) AS total_products,
           COALESCE(SUM(oi.quantity), 0) AS total_quantity_sold,
           COALESCE(SUM(oi.quantity * oi.unit_price), 0) AS total_revenue
    FROM suppliers s
    LEFT JOIN products p
    ON s.supplier_id = p.supplier_id
    LEFT JOIN order_items oi
    ON p.product_id = oi.product_id
    GROUP BY s.supplier_id, s.supplier_name
)
SELECT *
FROM supplier_performance
ORDER BY total_revenue DESC;

#Q86. Display category hierarchy.
WITH RECURSIVE category_hierarchy AS (
    SELECT category_id,
           category_name,
           parent_category_id,
           1 AS hierarchy_level
    FROM categories
    WHERE parent_category_id IS NULL

    UNION ALL

    SELECT c.category_id,
           c.category_name,
           c.parent_category_id,
           ch.hierarchy_level + 1
    FROM categories c
    INNER JOIN category_hierarchy ch
    ON c.parent_category_id = ch.category_id
)
SELECT category_id,
       category_name,
       parent_category_id,
       hierarchy_level
FROM category_hierarchy
ORDER BY category_id;

#Q87. Display sub-category tree.
WITH RECURSIVE category_tree AS (
    SELECT category_id,
           category_name,
           parent_category_id,
           1 AS level,
           category_name::TEXT AS category_path
    FROM categories
    WHERE parent_category_id IS NULL

    UNION ALL

    SELECT c.category_id,
           c.category_name,
           c.parent_category_id,
           ct.level + 1,
           ct.category_path || ' -> ' || c.category_name
    FROM categories c
    INNER JOIN category_tree ct
    ON c.parent_category_id = ct.category_id
)
SELECT category_id,
       category_name,
       parent_category_id,
       level,
       category_path
FROM category_tree
ORDER BY category_id;

#Q88. Display employee reporting hierarchy.
WITH RECURSIVE employee_hierarchy AS (
    SELECT employee_id,
           employee_name,
           manager_id,
           designation,
           1 AS hierarchy_level
    FROM employees
    WHERE manager_id IS NULL

    UNION ALL

    SELECT e.employee_id,
           e.employee_name,
           e.manager_id,
           e.designation,
           eh.hierarchy_level + 1
    FROM employees e
    INNER JOIN employee_hierarchy eh
    ON e.manager_id = eh.employee_id
)
SELECT employee_id,
       employee_name,
       manager_id,
       designation,
       hierarchy_level
FROM employee_hierarchy
ORDER BY hierarchy_level, employee_id;

#Q89. Find all managers and employees under them.
SELECT m.employee_id AS manager_id,
       m.employee_name AS manager_name,
       m.designation AS manager_designation,
       e.employee_id,
       e.employee_name AS employee_name,
       e.designation AS employee_designation
FROM employees m
INNER JOIN employees e
ON m.employee_id = e.manager_id
ORDER BY m.employee_id, e.employee_id;

#Q90. Generate category depth levels.
WITH RECURSIVE category_depth AS (
    SELECT category_id,
           category_name,
           parent_category_id,
           1 AS depth_level
    FROM categories
    WHERE parent_category_id IS NULL

    UNION ALL

    SELECT c.category_id,
           c.category_name,
           c.parent_category_id,
           cd.depth_level + 1
    FROM categories c
    INNER JOIN category_depth cd
    ON c.parent_category_id = cd.category_id
)
SELECT category_id,
       category_name,
       parent_category_id,
       depth_level
FROM category_depth
ORDER BY depth_level, category_id;

#Q91. Place an order with payment and shipment inside one transaction. 
BEGIN;

-- Step 1: Insert order
INSERT INTO orders
(order_id, customer_id, order_date, order_status, total_amount)
VALUES
(21, 9, CURRENT_DATE, 'Pending', 25000);

-- Step 2: Insert payment
INSERT INTO payments
(payment_id, order_id, payment_date, payment_method, payment_status, amount)
VALUES
(21, 21, CURRENT_DATE, 'UPI', 'Success', 25000);

-- Step 3: Insert shipment
INSERT INTO shipments
(shipment_id, order_id, shipment_date, delivery_date, shipment_status)
VALUES
(21, 21, CURRENT_DATE, NULL, 'Active');

COMMIT;

#Q92. Rollback failed payment transaction.
BEGIN;

-- Step 1: Create an order
INSERT INTO orders
(order_id, customer_id, order_date, order_status, total_amount)
VALUES
(22, 10, CURRENT_DATE, 'Pending', 15000);

-- Step 2: Insert failed payment
INSERT INTO payments
(payment_id, order_id, payment_date, payment_method, payment_status, amount)
VALUES
(22, 22, CURRENT_DATE, 'UPI', 'Failed', 15000);

-- Step 3: Cancel the transaction
ROLLBACK;

#Q93. Use SAVEPOINT during checkout process.
BEGIN;

-- Step 1: Create an order
INSERT INTO orders
(order_id, customer_id, order_date, order_status, total_amount)
VALUES
(22, 10, CURRENT_DATE, 'Pending', 15000);

-- Step 2: Create a savepoint
SAVEPOINT checkout_point;

-- Step 3: Insert payment
INSERT INTO payments
(payment_id, order_id, payment_date, payment_method, payment_status, amount)
VALUES
(22, 22, CURRENT_DATE, 'UPI', 'Success', 15000);

-- Step 4: Insert shipment
INSERT INTO shipments
(shipment_id, order_id, shipment_date, delivery_date, shipment_status)
VALUES
(22, 22, CURRENT_DATE, NULL, 'Active');

-- Step 5: Save all changes
COMMIT;


#Q94. Demonstrate COMMIT after successful order.
BEGIN;

-- Insert a new order
INSERT INTO orders
(order_id, customer_id, order_date, order_status, total_amount)
VALUES
(23, 11, CURRENT_DATE, 'Completed', 8000);

-- Save the transaction
COMMIT;

Q95. Handle stock deduction transaction.
BEGIN;

-- Step 1: Check available stock
SELECT product_id, product_name, stock_quantity
FROM products
WHERE product_id = 1;

-- Step 2: Deduct 2 items
UPDATE products
SET stock_quantity = stock_quantity - 2
WHERE product_id = 1
AND stock_quantity >= 2;

-- Step 3: Save the changes
COMMIT;

#Q96. Create index on product_name.
CREATE INDEX idx_product_name
ON products(product_name);
SELECT indexname, indexdef
FROM pg_indexes
WHERE tablename = 'products';

#Q97. Create index on customer_email.
CREATE INDEX idx_customer_email
ON customers(email);
SELECT indexname, indexdef
FROM pg_indexes
WHERE tablename = 'customers';

#Q98. Compare query performance before and after index.
DROP INDEX idx_customer_email;
EXPLAIN ANALYZE
SELECT *
FROM customers
WHERE email = 'rahul@gmail.com';
CREATE INDEX idx_customer_email
ON customers(email);
EXPLAIN ANALYZE
SELECT *
FROM customers
WHERE email = 'rahul@gmail.com';

#Q99. Use EXPLAIN ANALYZE on revenue report.
EXPLAIN ANALYZE
SELECT
    SUM(total_amount) AS total_revenue
FROM orders;

#Q100. Optimize highest-selling-product query.
CREATE INDEX idx_order_items_product_id
ON order_items(product_id);

EXPLAIN ANALYZE
SELECT
    p.product_id,
    p.product_name,
    SUM(oi.quantity) AS total_quantity_sold
FROM products p
INNER JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity_sold DESC,
         p.product_id
LIMIT 1;

#Q101. Generate Amazon-style Sales Dashboard
SELECT
    (SELECT COUNT(*) FROM customers) AS total_customers,
    (SELECT COUNT(*) FROM products) AS total_products,
    (SELECT COUNT(*) FROM orders) AS total_orders,
    (SELECT SUM(total_amount) FROM orders) AS total_revenue,
    (SELECT ROUND(AVG(total_amount), 2) FROM orders) AS average_order_value;

#Q102. Generate Top 10 Products Report
SELECT
    p.product_id,
    p.product_name,
    p.price,
    SUM(oi.quantity) AS total_quantity_sold,
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM products p
INNER JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name, p.price
ORDER BY total_revenue DESC
LIMIT 10;

#103. Generate Customer Lifetime Value Report.
SELECT
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS total_orders,
    COALESCE(SUM(o.total_amount), 0) AS lifetime_value,
    COALESCE(ROUND(AVG(o.total_amount), 2), 0) AS average_order_value
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY lifetime_value DESC;

#104. Generate Product Recommendation Query.
SELECT
    c.customer_id,
    c.customer_name,
    p.product_id,
    p.product_name,
    p.price
FROM customers c
INNER JOIN wishlist w
ON c.customer_id = w.customer_id
INNER JOIN products p
ON w.product_id = p.product_id
ORDER BY c.customer_id;

#Q105. Generate Repeat Customer Analysis
SELECT
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_spending
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(o.order_id) > 1
ORDER BY total_orders DESC;

#Q106. Generate Inventory Aging Report
ALTER TABLE products
ADD COLUMN stock_added_date DATE;

SELECT
    product_id,
    product_name,
    stock_quantity,
    stock_added_date,
    CURRENT_DATE - stock_added_date AS stock_age_days,
    CASE
        WHEN CURRENT_DATE - stock_added_date <= 30
            THEN 'Fresh Stock'
        WHEN CURRENT_DATE - stock_added_date <= 60
            THEN 'Medium Stock'
        WHEN CURRENT_DATE - stock_added_date <= 90
            THEN 'Old Stock'
        ELSE 'Very Old Stock'
    END AS inventory_age
FROM products
WHERE stock_added_date IS NOT NULL
ORDER BY stock_age_days DESC;

#107. Generate Supplier Performance Dashboard.
SELECT
    s.supplier_id,
    s.supplier_name,
    COUNT(DISTINCT p.product_id) AS total_products,
    COALESCE(SUM(oi.quantity), 0) AS total_quantity_sold,
    COALESCE(SUM(oi.quantity * oi.unit_price), 0) AS total_revenue
FROM suppliers s
LEFT JOIN products p
ON s.supplier_id = p.supplier_id
LEFT JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY s.supplier_id, s.supplier_name
ORDER BY total_revenue DESC;

#Q108. Generate Monthly Growth Report
WITH monthly_sales AS (
    SELECT
        DATE_TRUNC('month', order_date)::DATE AS sales_month,
        SUM(total_amount) AS total_sales
    FROM orders
    GROUP BY DATE_TRUNC('month', order_date)
),
growth_report AS (
    SELECT
        sales_month,
        total_sales,
        LAG(total_sales) OVER (ORDER BY sales_month) AS previous_month_sales
    FROM monthly_sales
)
SELECT
    sales_month,
    total_sales,
    previous_month_sales,
    ROUND(
        ((total_sales - previous_month_sales)
        / NULLIF(previous_month_sales, 0)) * 100, 2
    ) AS growth_percentage
FROM growth_report
ORDER BY sales_month;

#Q109. Generate Revenue Forecast Dataset Query
WITH monthly_revenue AS (
    SELECT
        DATE_TRUNC('month', order_date)::DATE AS sales_month,
        SUM(total_amount) AS total_revenue,
        COUNT(order_id) AS total_orders
    FROM orders
    GROUP BY DATE_TRUNC('month', order_date)
)
SELECT
    sales_month,
    total_revenue,
    total_orders,
    ROUND(AVG(total_revenue) OVER (
        ORDER BY sales_month
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ), 2) AS moving_average_revenue
FROM monthly_revenue
ORDER BY sales_month;

#110. Generate Complete Business KPI Dashboard using CTEs + Window Functions + Joins.
WITH customer_kpi AS (
    SELECT
        c.customer_id,
        c.customer_name,
        COUNT(o.order_id) AS total_orders,
        COALESCE(SUM(o.total_amount), 0) AS total_spending
    FROM customers c
    LEFT JOIN orders o
        ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.customer_name
),

monthly_sales AS (
    SELECT
        DATE_TRUNC('month', order_date)::DATE AS sales_month,
        SUM(total_amount) AS monthly_revenue,
        COUNT(order_id) AS monthly_orders
    FROM orders
    GROUP BY DATE_TRUNC('month', order_date)
),

monthly_growth AS (
    SELECT
        sales_month,
        monthly_revenue,
        monthly_orders,
        LAG(monthly_revenue) OVER (
            ORDER BY sales_month
        ) AS previous_month_revenue
    FROM monthly_sales
),

product_kpi AS (
    SELECT
        p.product_id,
        p.product_name,
        COALESCE(SUM(oi.quantity), 0) AS quantity_sold,
        COALESCE(SUM(oi.quantity * oi.unit_price), 0) AS product_revenue,
        RANK() OVER (
            ORDER BY COALESCE(SUM(oi.quantity * oi.unit_price), 0) DESC
        ) AS product_rank
    FROM products p
    LEFT JOIN order_items oi
        ON p.product_id = oi.product_id
    GROUP BY p.product_id, p.product_name
),

business_kpi AS (
    SELECT
        (SELECT COUNT(*) FROM customers) AS total_customers,
        (SELECT COUNT(*) FROM products) AS total_products,
        COUNT(order_id) AS total_orders,
        COALESCE(SUM(total_amount), 0) AS total_revenue,
        COALESCE(ROUND(AVG(total_amount), 2), 0) AS average_order_value
    FROM orders
)

SELECT
    b.total_customers,
    b.total_products,
    b.total_orders,
    b.total_revenue,
    b.average_order_value,
    m.sales_month,
    m.monthly_revenue,
    m.previous_month_revenue,
    ROUND(
        ((m.monthly_revenue - m.previous_month_revenue)
        / NULLIF(m.previous_month_revenue, 0)) * 100,
        2
    ) AS growth_percentage,
    p.product_name AS top_product,
    p.quantity_sold,
    p.product_revenue,
    p.product_rank
FROM business_kpi b
CROSS JOIN monthly_growth m
CROSS JOIN product_kpi p
WHERE p.product_rank <= 3
ORDER BY m.sales_month, p.product_rank;



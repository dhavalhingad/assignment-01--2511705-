## Anomaly Analysis

### Insert Anomaly
Product data (product_id, product_name) is tied to order_id. For example, Product P101 appears in Row 2 and Row 5 only with orders. We cannot insert a new product without creating an order.

### Update Anomaly
Product P101 appears in multiple rows (Row 2, Row 6, Row 9). If the price changes, it must be updated in all rows, otherwise inconsistent data may occur.

### Delete Anomaly
Product P105 appears only in Row 10. Deleting this row will remove all information about the product and associated customer.



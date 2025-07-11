DELIMITER $$

CREATE PROCEDURE GetOrdersByCustomerId(IN cust_id INT)
BEGIN
    SELECT * FROM orders WHERE customer_id = cust_id;
END$$

DELIMITER ;

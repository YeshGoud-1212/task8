DELIMITER $$

CREATE FUNCTION GetOrderTotal(orderId INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);
    
    SELECT SUM(quantity * price)
    INTO total
    FROM order_items
    WHERE order_id = orderId;

    RETURN total;
END$$

DELIMITER ;

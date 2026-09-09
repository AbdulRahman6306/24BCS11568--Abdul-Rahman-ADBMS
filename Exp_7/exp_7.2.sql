CREATE TABLE Orders (
    ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50),
    Amount DECIMAL(10,2)
);

INSERT INTO Orders VALUES (1, 'Rahul', 5000);
INSERT INTO Orders VALUES (2, 'Aman', 15000);
INSERT INTO Orders VALUES (3, 'Priya', 25000);
INSERT INTO Orders VALUES (4, 'Rohan', 8000);
INSERT INTO Orders VALUES (5, 'Neha', 12000);

DO $$
DECLARE
    order_record RECORD;
BEGIN
    FOR order_record IN
        SELECT *
        FROM Orders
    LOOP
        IF order_record.Amount > 10000 THEN
            RAISE NOTICE 'High Value';
        END IF;
    END LOOP;
END $$;
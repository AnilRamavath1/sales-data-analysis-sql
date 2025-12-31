-- Insert customers
INSERT INTO Customers VALUES
(1, 'John Doe', 'john@example.com', 'New York'),
(2, 'Jane Smith', 'jane@example.com', 'Chicago'),
(3, 'Robert Brown', 'robert@example.com', 'Los Angeles');

-- Insert products
INSERT INTO Products VALUES
(101, 'Laptop', 'Electronics', 800.00),
(102, 'Smartphone', 'Electronics', 500.00),
(103, 'Headphones', 'Accessories', 100.00);

-- Insert orders
INSERT INTO Orders VALUES
(1001, 1, 101, '2024-01-10', 1),
(1002, 2, 102, '2024-01-15', 2),
(1003, 1, 103, '2024-02-05', 3),
(1004, 3, 101, '2024-02-20', 1);

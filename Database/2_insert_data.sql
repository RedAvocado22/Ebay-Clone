

-- Insert data into Categories table (10 categories)
INSERT INTO Categories ([Name])
VALUES 
('Electronics'),
('Clothing'),
('Home & Kitchen'),
('Books'),
('Toys'),
('Sports'),
('Beauty'),
('Automotive'),
('Jewelry'),
('Accessories');

-- Insert data into Product table (50 products corresponding to 10 categories)
INSERT INTO Product ([Name], Price, Quantity, [Image])
VALUES 
('Product 1', 19.99, 100, NULL),
('Product 2', 29.99, 50, NULL),
('Product 3', 39.99, 150, NULL),
('Product 4', 49.99, 70, NULL),
('Product 5', 9.99, 200, NULL),
('Product 6', 15.99, 80, NULL),
('Product 7', 25.99, 120, NULL),
('Product 8', 35.99, 110, NULL),
('Product 9', 12.99, 90, NULL),
('Product 10', 17.99, 140, NULL),
('Product 11', 21.99, 85, NULL),
('Product 12', 22.99, 130, NULL),
('Product 13', 13.99, 160, NULL),
('Product 14', 33.99, 100, NULL),
('Product 15', 44.99, 55, NULL),
('Product 16', 19.49, 200, NULL),
('Product 17', 9.49, 220, NULL),
('Product 18', 10.99, 180, NULL),
('Product 19', 11.49, 150, NULL),
('Product 20', 25.49, 60, NULL),
('Product 21', 22.99, 130, NULL),
('Product 22', 27.99, 70, NULL),
('Product 23', 33.99, 80, NULL),
('Product 24', 43.99, 190, NULL),
('Product 25', 15.49, 40, NULL),
('Product 26', 29.99, 90, NULL),
('Product 27', 18.99, 200, NULL),
('Product 28', 19.99, 100, NULL),
('Product 29', 49.99, 110, NULL),
('Product 30', 35.49, 95, NULL),
('Product 31', 44.99, 60, NULL),
('Product 32', 12.99, 170, NULL),
('Product 33', 9.99, 190, NULL),
('Product 34', 24.99, 80, NULL),
('Product 35', 34.99, 75, NULL),
('Product 36', 29.49, 60, NULL),
('Product 37', 45.49, 100, NULL),
('Product 38', 40.99, 120, NULL),
('Product 39', 41.99, 90, NULL),
('Product 40', 28.99, 95, NULL),
('Product 41', 15.99, 50, NULL),
('Product 42', 26.99, 70, NULL),
('Product 43', 27.99, 80, NULL),
('Product 44', 33.49, 60, NULL),
('Product 45', 38.99, 100, NULL),
('Product 46', 45.49, 120, NULL),
('Product 47', 12.99, 85, NULL),
('Product 48', 30.99, 110, NULL),
('Product 49', 22.99, 60, NULL),
('Product 50', 45.99, 60, NULL);

-- Insert data into Products_To_Categories table (10 mappings)
INSERT INTO Products_To_Categories (ID_Product, ID_Categories)
VALUES 
(1, 1), 
(2, 1), 
(3, 2), 
(4, 3), 
(5, 4), 
(6, 5), 
(7, 6), 
(8, 7), 
(9, 8), 
(10, 9); 

-- Insert data into [Order] table (10 orders)
INSERT INTO [Order] (Total, Buyer, Seller, [Status])
VALUES 
(199.99, 'user1', 'admin1', 'completed'),
(299.99, 'user2', 'admin1', 'shipped'),
(99.99, 'user3', 'admin1', 'pending'),
(399.99, 'user4', 'admin1', 'completed'),
(249.99, 'user5', 'admin1', 'cancelled'),
(199.99, 'user6', 'admin1', 'shipped'),
(149.99, 'user7', 'admin1', 'pending'),
(349.99, 'user8', 'admin1', 'completed'),
(99.99, 'user9', 'admin1', 'shipped'),
(79.99, 'user10', 'admin1', 'completed');

-- Insert data into OrderDetail table (10 order details)
INSERT INTO OrderDetail (ID_Product, ID_Order, Quantity)
VALUES 
(1, 1, 2),
(2, 1, 1),
(3, 2, 1),
(4, 2, 2),
(5, 3, 5),
(6, 4, 1),
(7, 5, 3),
(8, 6, 2),
(9, 7, 1),
(10, 8, 1);

-- Insert data into Feedback table (30 feedbacks)
INSERT INTO Feedback (Content, [Type], [Status], Buyer, Seller)
VALUES 
('Great product!', 'positive', 1, 'user1', 'admin1'),
('Not as expected', 'negative', 1, 'user2', 'admin1'),
('Good value for the price', 'positive', 1, 'user3', 'admin1'),
('Terrible quality', 'negative', 1, 'user4', 'admin1'),
('Very satisfied', 'positive', 1, 'user5', 'admin1'),
('Would not recommend', 'negative', 1, 'user6', 'admin1'),
('Fast shipping', 'positive', 1, 'user7', 'admin1'),
('Poor customer service', 'negative', 1, 'user8', 'admin1'),
('Excellent product!', 'positive', 1, 'user9', 'admin1'),
('Product was damaged', 'negative', 1, 'user10', 'admin1'),
('Amazing deal', 'positive', 1, 'user11', 'admin1'),
('Wrong item received', 'negative', 1, 'user12', 'admin1'),
('Highly recommend', 'positive', 1, 'user13', 'admin1'),
('Disappointing experience', 'negative', 1, 'user14', 'admin1'),
('Loved it!', 'positive', 1, 'user15', 'admin1'),
('Item never arrived', 'negative', 1, 'user16', 'admin1'),
('Five stars!', 'positive', 1, 'user17', 'admin1'),
('Not worth the money', 'negative', 1, 'user18', 'admin1'),
('Great customer support', 'positive', 1, 'user19', 'admin1'),
('Quality was bad', 'negative', 1, 'user20', 'admin1'),
('Will buy again', 'positive', 1, 'user21', 'admin1'),
('Refund requested', 'negative', 1, 'user22', 'admin1'),
('Super fast delivery', 'positive', 1, 'user23', 'admin1'),
('Received a broken item', 'negative', 1, 'user24', 'admin1'),
('Best purchase ever', 'positive', 1, 'user25', 'admin1'),
('Not happy with the item', 'negative', 1, 'user26', 'admin1'),
('Happy with the service', 'positive', 1, 'user27', 'admin1'),
('Misleading description', 'negative', 1, 'user28', 'admin1'),
('Top-notch quality', 'positive', 1, 'user29', 'admin1'),
('Great purchase', 'positive', 1, 'user30', 'admin1');

-- Insert data into Cart table (10 carts)
INSERT INTO Cart (ID_Account)
VALUES 
('user1'),
('user2'),
('user3'),
('user4'),
('user5'),
('user6'),
('user7'),
('user8'),
('user9'),
('user10');

-- Insert data into CartDetail table (10 cart details)
INSERT INTO CartDetail (ID_Cart, ID_Product, Quantity)
VALUES 
(1, 1, 2),
(1, 2, 1),
(2, 3, 3),
(3, 4, 4),
(4, 5, 2),
(5, 6, 1),
(6, 7, 5),
(7, 8, 1),
(8, 9, 2),
(9, 10, 3);


--Insert data for 15 Accounts and 3 admin
INSERT INTO Account (Username, [Password], Fullname, Email, [Role], [Status], Avatar)
VALUES 
('user1', 'password1', 'User One', 'user1@example.com', 'user', 1, 'public/image/avatar/user0.png'),
('user2', 'password2', 'User Two', 'user2@example.com', 'user', 1, 'public/image/avatar/user0.png'),
('user3', 'password3', 'User Three', 'user3@example.com', 'user', 1, 'public/image/avatar/user0.png'),
('user4', 'password4', 'User Four', 'user4@example.com', 'user', 1, 'public/image/avatar/user0.png'),
('user5', 'password5', 'User Five', 'user5@example.com', 'user', 1, 'public/image/avatar/user0.png'),
('user6', 'password6', 'User Six', 'user6@example.com', 'user', 1, 'public/image/avatar/user0.png'),
('user7', 'password7', 'User Seven', 'user7@example.com', 'user', 1, 'public/image/avatar/user1.png'),
('user8', 'password8', 'User Eight', 'user8@example.com', 'user', 1, 'public/image/avatar/user1.png'),
('user9', 'password9', 'User Nine', 'user9@example.com', 'user', 1, 'public/image/avatar/user1.png'),
('user10', 'password10', 'User Ten', 'user10@example.com', 'user', 1, 'public/image/avatar/user1.png'),
('user11', 'password11', 'User Eleven', 'user11@example.com', 'user', 1, 'public/image/avatar/user1.png'),
('user12', 'password12', 'User Twelve', 'user12@example.com', 'user', 1, 'public/image/avatar/user1.png'),
('user13', 'password13', 'User Thirteen', 'user13@example.com', 'user', 1, 'public/image/avatar/user1.png'),
('user14', 'password14', 'User Fourteen', 'user14@example.com', 'user', 1, 'public/image/avatar/user1.png'),
('user15', 'password15', 'User Fifteen', 'user15@example.com', 'user', 1, 'public/image/avatar/user1.png'),
('admin1', 'adminpass1', 'Admin One', 'admin1@example.com', 'admin', 1, 'public/image/avatar/admin.png'),
('admin2', 'adminpass2', 'Admin One', 'admin2@example.com', 'admin', 1, 'public/image/avatar/admin.png'),
('admin3', 'adminpass3', 'Admin One', 'admin3@example.com', 'admin', 1, 'public/image/avatar/admin.png');

-- Insert data into Categories table (8 categories)
INSERT INTO Categories ([Name])
VALUES 
('Electronics'),
('Clothing'),
('Home & Kitchen'),
('Books'),
('Toys'),
('Sports'),
('Beauty'),
('Jewelry');

-- Insert data into Product table with users as sellers
INSERT INTO Product ([Name], Price, Quantity, [Image], Seller)
VALUES  
-- Cameras (10 products sold by users)
('Product 1', 19.99, 100, '/public/images/products/electronics/cameras/camera_1_1.png', 'user1'),
('Product 2', 29.99, 50, '/public/images/products/electronics/cameras/camera_2_1.png', 'user1'),
('Product 3', 39.99, 150, '/public/images/products/electronics/cameras/camera_3_1.png', 'user2'),
('Product 4', 49.99, 70, '/public/images/products/electronics/cameras/camera_4_1.png', 'user2'),
('Product 5', 59.99, 200, '/public/images/products/electronics/cameras/camera_5_1.png', 'user3'),
('Product 6', 69.99, 80, '/public/images/products/electronics/cameras/camera_6_1.png', 'user3'),
('Product 7', 79.99, 90, '/public/images/products/electronics/cameras/camera_7_1.png', 'user4'),
('Product 8', 89.99, 120, '/public/images/products/electronics/cameras/camera_8_1.png', 'user4'),
('Product 9', 99.99, 60, '/public/images/products/electronics/cameras/camera_9_1.png', 'user5'),
('Product 10', 109.99, 40, '/public/images/products/electronics/cameras/camera_10_1.png', 'user5'),

-- CellPhones (9 products)
('Product 11', 21.99, 85, '/public/images/products/electronics/cellphones/cellphone_1_1.png', 'user10'),
('Product 12', 22.99, 130, '/public/images/products/electronics/cellphones/cellphone_2_1.png', 'admin1'),
('Product 13', 13.99, 160, '/public/images/products/electronics/cellphones/cellphone_3_1.png', 'user11'),
('Product 14', 33.99, 100, '/public/images/products/electronics/cellphones/cellphone_4_1.png', 'user12'),
('Product 15', 44.99, 55, '/public/images/products/electronics/cellphones/cellphone_5_1.png', 'admin2'),
('Product 16', 19.49, 200, '/public/images/products/electronics/cellphones/cellphone_6_1.png', 'user13'),
('Product 17', 9.49, 220, '/public/images/products/electronics/cellphones/cellphone_7_1.png', 'user14'),
('Product 18', 10.99, 180, '/public/images/products/electronics/cellphones/cellphone_8_1.png', 'user15'),
('Product 19', 11.49, 150, '/public/images/products/electronics/cellphones/cellphone_9_1.png', 'admin3'),

-- Computers (10 products)
('Product 20', 25.49, 60, '/public/images/products/electronics/computers/pc_1_1.png', 'user6'),
('Product 21', 22.99, 130, '/public/images/products/electronics/computers/pc_2_1.png', 'user7'),
('Product 22', 27.99, 70, '/public/images/products/electronics/computers/pc_3_1.png', 'user8'),
('Product 23', 33.99, 80, '/public/images/products/electronics/computers/pc_4_1.png', 'user9'),
('Product 24', 43.99, 190, '/public/images/products/electronics/computers/pc_5_1.png', 'user10'),
('Product 25', 15.49, 40, '/public/images/products/electronics/computers/pc_6_1.png', 'admin1'),
('Product 26', 29.99, 90, '/public/images/products/electronics/computers/pc_7_1.png', 'admin2'),
('Product 27', 18.99, 200, '/public/images/products/electronics/computers/pc_8_1.png', 'admin3'),
('Product 28', 19.99, 100, '/public/images/products/electronics/computers/pc_9_1.png', 'user11'),
('Product 29', 49.99, 110, '/public/images/products/electronics/computers/pc_10_1.png', 'user12'),

-- Gaming (15 products)
('Product 30', 35.49, 95, '/public/images/products/electronics/gaming/gaming_1_1.png', 'user13'),
('Product 31', 44.99, 60, '/public/images/products/electronics/gaming/gaming_2_1.png', 'user14'),
('Product 32', 12.99, 170, '/public/images/products/electronics/gaming/gaming_3_1.png', 'user15'),
('Product 33', 9.99, 190, '/public/images/products/electronics/gaming/gaming_4_1.png', 'admin1'),
('Product 34', 24.99, 80, '/public/images/products/electronics/gaming/gaming_5_1.png', 'admin2'),
('Product 35', 34.99, 75, '/public/images/products/electronics/gaming/gaming_6_1.png', 'user1'),
('Product 36', 29.49, 60, '/public/images/products/electronics/gaming/gaming_7_1.png', 'user2'),
('Product 37', 45.49, 100, '/public/images/products/electronics/gaming/gaming_8_1.png', 'user3'),
('Product 38', 40.99, 120, '/public/images/products/electronics/gaming/gaming_9_1.png', 'user4'),
('Product 39', 41.99, 90, '/public/images/products/electronics/gaming/gaming_10_1.png', 'user5'),
('Product 40', 28.99, 95, '/public/images/products/electronics/gaming/gaming_11_1.png', 'admin3'),
('Product 41', 15.99, 50, '/public/images/products/electronics/gaming/gaming_12_1.png', 'user6'),
('Product 42', 26.99, 70, '/public/images/products/electronics/gaming/gaming_13_1.png', 'user7'),
('Product 43', 27.99, 80, '/public/images/products/electronics/gaming/gaming_14_1.png', 'user8'),
('Product 44', 33.49, 60, '/public/images/products/electronics/gaming/gaming_15_1.png', 'user9'),

-- Laptop (10 products)
('Product 45', 38.99, 100, '/public/images/products/electronics/laptop/latop_1_1.png', 'user1'),
('Product 46', 45.49, 120, '/public/images/products/electronics/laptop/latop_2_1.png', 'admin1'),
('Product 47', 12.99, 85, '/public/images/products/electronics/laptop/latop_3_1.png', 'user2'),
('Product 48', 30.99, 110, '/public/images/products/electronics/laptop/latop_4_1.png', 'user3'),
('Product 49', 22.99, 60, '/public/images/products/electronics/laptop/latop_5_1.png', 'admin2'),
('Product 50', 45.99, 60, '/public/images/products/electronics/laptop/latop_6_1.png', 'user4'),
('Product 51', 38.99, 100, '/public/images/products/electronics/laptop/latop_7_1.png', 'user5'),
('Product 52', 45.49, 120, '/public/images/products/electronics/laptop/latop_8_1.png', 'admin3'),
('Product 53', 12.99, 85, '/public/images/products/electronics/laptop/latop_9_1.png', 'user6'),
('Product 54', 30.99, 110, '/public/images/products/electronics/laptop/latop_10_1.png', 'user7'),

-- TV (6 products)
('Product 55', 22.99, 60, '/public/images/products/electronics/tv/tv_1_1.png', 'admin1'),
('Product 56', 45.99, 60, '/public/images/products/electronics/tv/tv_2_1.png', 'user8'),
('Product 57', 19.49, 95, '/public/images/products/electronics/tv/tv_3_1.png', 'user9'),
('Product 58', 28.99, 125, '/public/images/products/electronics/tv/tv_4_1.png', 'user10'),
('Product 59', 37.99, 140, '/public/images/products/electronics/tv/tv_5_1.png', 'admin2'),
('Product 60', 26.99, 75, '/public/images/products/electronics/tv/tv_6_1.png', 'user11'),

-- Home&Kitchen (20 products)
('Product 61', 44.99, 90, '/public/images/products/home&kitchen/stuff_1_1.png', 'user1'),
('Product 62', 25.99, 65, '/public/images/products/home&kitchen/stuff_2_1.png', 'admin1'),
('Product 63', 12.99, 85, '/public/images/products/home&kitchen/stuff_3_1.png', 'user2'),
('Product 64', 30.99, 110, '/public/images/products/home&kitchen/stuff_4_1.png', 'user3'),
('Product 65', 22.99, 60, '/public/images/products/home&kitchen/stuff_5_1.png', 'admin2'),
('Product 66', 45.99, 60, '/public/images/products/home&kitchen/stuff_6_1.png', 'user4'),
('Product 67', 19.99, 75, '/public/images/products/home&kitchen/stuff_7_1.png', 'user5'),
('Product 68', 33.99, 85, '/public/images/products/home&kitchen/stuff_8_1.png', 'admin3'),
('Product 69', 27.99, 95, '/public/images/products/home&kitchen/stuff_9_1.png', 'user6'),
('Product 70', 20.99, 100, '/public/images/products/home&kitchen/stuff_10_1.png', 'user7'),
('Product 71', 35.49, 110, '/public/images/products/home&kitchen/stuff_11_1.png', 'admin1'),
('Product 72', 48.99, 130, '/public/images/products/home&kitchen/stuff_12_1.png', 'user8'),
('Product 73', 42.99, 90, '/public/images/products/home&kitchen/stuff_13_1.png', 'user9'),
('Product 74', 18.99, 75, '/public/images/products/home&kitchen/stuff_14_1.png', 'user10'),
('Product 75', 24.99, 60, '/public/images/products/home&kitchen/stuff_15_1.png', 'admin2'),
('Product 76', 15.99, 70, '/public/images/products/home&kitchen/stuff_16_1.png', 'user11'),
('Product 77', 29.99, 110, '/public/images/products/home&kitchen/stuff_17_1.png', 'user12'),
('Product 78', 33.49, 105, '/public/images/products/home&kitchen/stuff_18_1.png', 'user13'),
('Product 79', 49.99, 125, '/public/images/products/home&kitchen/stuff_19_1.png', 'admin3'),
('Product 80', 39.99, 115, '/public/images/products/home&kitchen/stuff_20_1.png', 'user14'),

-- Beauty (14 products)
('Product 81', 26.99, 85, '/public/images/products/beauty/beauty_1_1.png', 'admin1'),
('Product 82', 23.49, 95, '/public/images/products/beauty/beauty_2_1.png', 'user15'),
('Product 83', 14.99, 90, '/public/images/products/beauty/beauty_3_1.png', 'user1'),
('Product 84', 18.49, 120, '/public/images/products/beauty/beauty_4_1.png', 'admin2'),
('Product 85', 21.99, 70, '/public/images/products/beauty/beauty_5_1.png', 'user2'),
('Product 86', 32.99, 80, '/public/images/products/beauty/beauty_6_1.png', 'user3'),
('Product 87', 19.99, 110, '/public/images/products/beauty/beauty_7_1.png', 'admin3'),
('Product 88', 46.49, 90, '/public/images/products/beauty/beauty_8_1.png', 'user4'),
('Product 89', 40.99, 130, '/public/images/products/beauty/beauty_9_1.png', 'user5'),
('Product 90', 45.49, 120, '/public/images/products/beauty/beauty_10_1.png', 'admin1'),
('Product 91', 27.99, 85, '/public/images/products/beauty/beauty_11_1.png', 'user6'),
('Product 92', 29.49, 60, '/public/images/products/beauty/beauty_12_1.png', 'user7'),
('Product 93', 34.99, 115, '/public/images/products/beauty/beauty_13_1.png', 'user8'),
('Product 94', 42.99, 95, '/public/images/products/beauty/beauty_14_1.png', 'admin2'),

-- Books (30 products)
('Product 95', 38.49, 110, '/public/images/products/books/book_1_1.png', 'user1'),
('Product 96', 20.99, 100, '/public/images/products/books/book_2_1.png', 'user2'),
('Product 97', 24.99, 125, '/public/images/products/books/book_3_1.png', 'user3'),
('Product 98', 17.99, 65, '/public/images/products/books/book_4_1.png', 'user4'),
('Product 99', 22.99, 75, '/public/images/products/books/book_5_1.png', 'user5'),
('Product 100', 48.99, 135, '/public/images/products/books/book_6_1.png', 'user6'),
('Product 101', 41.99, 90, '/public/images/products/books/book_7_1.png', 'user7'),
('Product 102', 39.49, 120, '/public/images/products/books/book_8_1.png', 'user8'),
('Product 103', 35.99, 100, '/public/images/products/books/book_9_1.png', 'user9'),
('Product 104', 44.99, 105, '/public/images/products/books/book_10_1.png', 'user10'),
('Product 105', 29.99, 80, '/public/images/products/books/book_11_1.png', 'user11'),
('Product 106', 26.49, 110, '/public/images/products/books/book_12_1.png', 'user12'),
('Product 107', 19.99, 95, '/public/images/products/books/book_13_1.png', 'user13'),
('Product 108', 33.49, 100, '/public/images/products/books/book_14_1.png', 'user14'),
('Product 109', 42.99, 85, '/public/images/products/books/book_15_1.png', 'user15'),
('Product 110', 27.99, 75, '/public/images/products/books/book_16_1.png', 'user1'),
('Product 111', 38.99, 90, '/public/images/products/books/book_17_1.png', 'user2'),
('Product 112', 25.49, 60, '/public/images/products/books/book_18_1.png', 'user3'),
('Product 113', 47.99, 110, '/public/images/products/books/book_19_1.png', 'user4'),
('Product 114', 45.99, 130, '/public/images/products/books/book_20_1.png', 'user5'),
('Product 115', 20.49, 100, '/public/images/products/books/book_21_1.png', 'user6'),
('Product 116', 32.49, 90, '/public/images/products/books/book_22_1.png', 'user7'),
('Product 117', 30.99, 120, '/public/images/products/books/book_23_1.png', 'user8'),
('Product 118', 24.49, 115, '/public/images/products/books/book_24_1.png', 'user9'),
('Product 119', 16.99, 95, '/public/images/products/books/book_25_1.png', 'user10'),
('Product 120', 48.99, 105, '/public/images/products/books/book_26_1.png', 'user11'),
('Product 121', 43.99, 85, '/public/images/products/books/book_27_1.png', 'user12'),
('Product 122', 37.49, 70, '/public/images/products/books/book_28_1.png', 'user13'),
('Product 123', 25.99, 100, '/public/images/products/books/book_29_1.png', 'user14'),
('Product 124', 29.99, 90, '/public/images/products/books/book_30_1.png', 'user15'),

-- Clothing (30 products)
('Product 125', 14.49, 115, '/public/images/products/clothing/cloth_1_1.png', 'user1'),
('Product 126', 22.49, 130, '/public/images/products/clothing/cloth_2_1.png', 'user2'),
('Product 127', 47.49, 110, '/public/images/products/clothing/cloth_3_1.png', 'user3'),
('Product 128', 41.99, 105, '/public/images/products/clothing/cloth_4_1.png', 'user4'),
('Product 129', 19.99, 65, '/public/images/products/clothing/cloth_5_1.png', 'user5'),
('Product 130', 28.99, 95, '/public/images/products/clothing/cloth_6_1.png', 'user6'),
('Product 131', 35.99, 75, '/public/images/products/clothing/cloth_7_1.png', 'user7'),
('Product 132', 30.49, 85, '/public/images/products/clothing/cloth_8_1.png', 'user8'),
('Product 133', 33.99, 90, '/public/images/products/clothing/cloth_9_1.png', 'user9'),
('Product 134', 46.49, 125, '/public/images/products/clothing/cloth_10_1.png', 'user10'),
('Product 135', 40.99, 110, '/public/images/products/clothing/cloth_11_1.png', 'user11'),
('Product 136', 23.49, 60, '/public/images/products/clothing/cloth_12_1.png', 'user12'),
('Product 137', 28.49, 70, '/public/images/products/clothing/cloth_13_1.png', 'user13'),
('Product 138', 18.99, 80, '/public/images/products/clothing/cloth_14_1.png', 'user14'),
('Product 139', 27.49, 120, '/public/images/products/clothing/cloth_15_1.png', 'user15'),
('Product 140', 31.49, 115, '/public/images/products/clothing/cloth_16_1.png', 'user1'),
('Product 141', 22.99, 100, '/public/images/products/clothing/cloth_17_1.png', 'user2'),
('Product 142', 25.99, 125, '/public/images/products/clothing/cloth_18_1.png', 'user3'),
('Product 143', 34.99, 90, '/public/images/products/clothing/cloth_19_1.png', 'user4'),
('Product 144', 44.49, 130, '/public/images/products/clothing/cloth_20_1.png', 'user5'),
('Product 145', 32.99, 85, '/public/images/products/clothing/cloth_21_1.png', 'user6'),
('Product 146', 17.99, 95, '/public/images/products/clothing/cloth_22_1.png', 'user7'),
('Product 147', 21.99, 115, '/public/images/products/clothing/cloth_23_1.png', 'user8'),
('Product 148', 37.99, 110, '/public/images/products/clothing/cloth_24_1.png', 'user9'),
('Product 149', 23.99, 105, '/public/images/products/clothing/cloth_25_1.png', 'user10'),
('Product 150', 38.99, 100, '/public/images/products/clothing/cloth_26_1.png', 'user11'),
('Product 151', 35.99, 120, '/public/images/products/clothing/cloth_27_1.png', 'user12'),
('Product 152', 48.99, 85, '/public/images/products/clothing/cloth_28_1.png', 'user13'),
('Product 153', 22.99, 110, '/public/images/products/clothing/cloth_29_1.png', 'user14'),
('Product 154', 36.49, 60, '/public/images/products/clothing/cloth_30_1.png', 'user15'),

-- Jewelry (15 products)
-- Jewelry (15 products)
('Product 155', 44.99, 125, '/public/images/products/jewelry/jewelry_1_1.png', 'user1'),
('Product 156', 42.99, 90, '/public/images/products/jewelry/jewelry_2_1.png', 'user2'),
('Product 157', 29.99, 100, '/public/images/products/jewelry/jewelry_3_1.png', 'user3'),
('Product 158', 19.99, 105, '/public/images/products/jewelry/jewelry_4_1.png', 'user4'),
('Product 159', 39.99, 85, '/public/images/products/jewelry/jewelry_5_1.png', 'user5'),
('Product 160', 41.49, 120, '/public/images/products/jewelry/jewelry_6_1.png', 'user6'),
('Product 161', 24.49, 95, '/public/images/products/jewelry/jewelry_7_1.png', 'user7'),
('Product 162', 20.99, 75, '/public/images/products/jewelry/jewelry_8_1.png', 'user8'),
('Product 163', 36.49, 105, '/public/images/products/jewelry/jewelry_9_1.png', 'user9'),
('Product 164', 28.99, 90, '/public/images/products/jewelry/jewelry_10_1.png', 'user10'),
('Product 165', 43.99, 100, '/public/images/products/jewelry/jewelry_11_1.png', 'user11'),
('Product 166', 17.99, 110, '/public/images/products/jewelry/jewelry_12_1.png', 'user12'),
('Product 167', 25.99, 60, '/public/images/products/jewelry/jewelry_13_1.png', 'user13'),
('Product 168', 46.99, 120, '/public/images/products/jewelry/jewelry_14_1.png', 'user14'),
('Product 169', 27.49, 115, '/public/images/products/jewelry/jewelry_15_1.png', 'user15'),

-- Sports (20 products)
('Product 170', 23.49, 80, '/public/images/products/sports/sport_1_1.png', 'user1'),
('Product 171', 31.99, 125, '/public/images/products/sports/sport_2_1.png', 'user2'),
('Product 172', 39.99, 85, '/public/images/products/sports/sport_3_1.png', 'user3'),
('Product 173', 48.49, 105, '/public/images/products/sports/sport_4_1.png', 'user4'),
('Product 174', 37.99, 110, '/public/images/products/sports/sport_5_1.png', 'user5'),
('Product 175', 26.49, 100, '/public/images/products/sports/sport_6_1.png', 'user6'),
('Product 176', 22.49, 95, '/public/images/products/sports/sport_7_1.png', 'user7'),
('Product 177', 19.99, 75, '/public/images/products/sports/sport_8_1.png', 'user8'),
('Product 178', 44.49, 120, '/public/images/products/sports/sport_9_1.png', 'user9'),
('Product 179', 29.49, 130, '/public/images/products/sports/sport_10_1.png', 'user10'),
('Product 180', 45.99, 85, '/public/images/products/sports/sport_11_1.png', 'user11'),
('Product 181', 21.99, 105, '/public/images/products/sports/sport_12_1.png', 'user12'),
('Product 182', 32.49, 110, '/public/images/products/sports/sport_13_1.png', 'user13'),
('Product 183', 38.49, 125, '/public/images/products/sports/sport_14_1.png', 'user14'),
('Product 184', 20.99, 70, '/public/images/products/sports/sport_15_1.png', 'user15'),
('Product 185', 47.99, 130, '/public/images/products/sports/sport_16_1.png', 'user1'),
('Product 186', 30.99, 115, '/public/images/products/sports/sport_17_1.png', 'user2'),
('Product 187', 33.99, 100, '/public/images/products/sports/sport_18_1.png', 'user3'),
('Product 188', 35.49, 90, '/public/images/products/sports/sport_19_1.png', 'user4'),
('Product 189', 40.49, 105, '/public/images/products/sports/sport_20_1.png', 'user5'),

-- Toys (20 products)
('Product 190', 19.99, 95, '/public/images/products/toys/toy_1_1.png', 'user1'),
('Product 191', 24.99, 80, '/public/images/products/toys/toy_2_1.png', 'user2'),
('Product 192', 26.99, 100, '/public/images/products/toys/toy_3_1.png', 'user3'),
('Product 193', 31.99, 125, '/public/images/products/toys/toy_4_1.png', 'user4'),
('Product 194', 38.49, 120, '/public/images/products/toys/toy_5_1.png', 'user5'),
('Product 195', 22.99, 85, '/public/images/products/toys/toy_6_1.png', 'user6'),
('Product 196', 41.99, 130, '/public/images/products/toys/toy_7_1.png', 'user7'),
('Product 197', 20.49, 115, '/public/images/products/toys/toy_8_1.png', 'user8'),
('Product 198', 18.49, 95, '/public/images/products/toys/toy_9_1.png', 'user9'),
('Product 199', 29.49, 110, '/public/images/products/toys/toy_10_1.png', 'user10'),
('Product 200', 33.49, 105, '/public/images/products/toys/toy_11_1.png', 'user11'),
('Product 201', 25.99, 90, '/public/images/products/toys/toy_12_1.png', 'user12'),
('Product 202', 37.99, 115, '/public/images/products/toys/toy_13_1.png', 'user13'),
('Product 203', 42.49, 100, '/public/images/products/toys/toy_14_1.png', 'user14'),
('Product 204', 17.99, 105, '/public/images/products/toys/toy_15_1.png', 'user15'),
('Product 205', 21.49, 70, '/public/images/products/toys/toy_16_1.png', 'user1'),
('Product 206', 43.99, 85, '/public/images/products/toys/toy_17_1.png', 'user2'),
('Product 207', 27.99, 95, '/public/images/products/toys/toy_18_1.png', 'user3'),
('Product 208', 36.99, 75, '/public/images/products/toys/toy_19_1.png', 'user4'),
('Product 209', 48.99, 125, '/public/images/products/toys/toy_20_1.png', 'user5');

-- Insert data into Products_To_Categories table for all products
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
(9, 1),    -- Product 9 belongs to category 1 (Clothing)
(10, 2),   -- Product 10 belongs to category 2 (Jewelry)
(11, 3),   -- Product 11 belongs to category 3 (Sports)
(12, 4),   -- Product 12 belongs to category 4 (Toys)
(13, 5),   -- Product 13 belongs to category 5 (Clothing)
(14, 6),   -- Product 14 belongs to category 6 (Jewelry)
(15, 7),   -- Product 15 belongs to category 7 (Sports)
(16, 1),   -- Product 16 belongs to category 1 (Clothing)
(17, 2),   -- Product 17 belongs to category 2 (Jewelry)
(18, 3),   -- Product 18 belongs to category 3 (Sports)
(19, 4),   -- Product 19 belongs to category 4 (Toys)
(20, 5),   -- Product 20 belongs to category 5 (Clothing)
(21, 6),   -- Product 21 belongs to category 6 (Jewelry)
(22, 7),   -- Product 22 belongs to category 7 (Sports)
(23, 1),   -- Product 23 belongs to category 1 (Clothing)
(24, 2),   -- Product 24 belongs to category 2 (Jewelry)
(25, 3),   -- Product 25 belongs to category 3 (Sports)
(26, 4),   -- Product 26 belongs to category 4 (Toys)
(27, 5),   -- Product 27 belongs to category 5 (Clothing)
(28, 6),   -- Product 28 belongs to category 6 (Jewelry)
(29, 7),   -- Product 29 belongs to category 7 (Sports)
(30, 1),   -- Product 30 belongs to category 1 (Clothing)
(31, 2),   -- Product 31 belongs to category 2 (Jewelry)
(32, 3),   -- Product 32 belongs to category 3 (Sports)
(33, 4),   -- Product 33 belongs to category 4 (Toys)
(34, 5),   -- Product 34 belongs to category 5 (Clothing)
(35, 6),   -- Product 35 belongs to category 6 (Jewelry)
(36, 7),   -- Product 36 belongs to category 7 (Sports)
(37, 1),   -- Product 37 belongs to category 1 (Clothing)
(38, 2),   -- Product 38 belongs to category 2 (Jewelry)
(39, 3),   -- Product 39 belongs to category 3 (Sports)
(40, 4),   -- Product 40 belongs to category 4 (Toys)
(41, 5),   -- Product 41 belongs to category 5 (Clothing)
(42, 6),   -- Product 42 belongs to category 6 (Jewelry)
(43, 7),   -- Product 43 belongs to category 7 (Sports)
(44, 1),   -- Product 44 belongs to category 1 (Clothing)
(45, 2),   -- Product 45 belongs to category 2 (Jewelry)
(46, 3),   -- Product 46 belongs to category 3 (Sports)
(47, 4),   -- Product 47 belongs to category 4 (Toys)
(48, 5),   -- Product 48 belongs to category 5 (Clothing)
(49, 6),   -- Product 49 belongs to category 6 (Jewelry)
(50, 7),   -- Product 50 belongs to category 7 (Sports)
(51, 1),   -- Product 51 belongs to category 1 (Clothing)
(52, 2),   -- Product 52 belongs to category 2 (Jewelry)
(53, 3),   -- Product 53 belongs to category 3 (Sports)
(54, 4),   -- Product 54 belongs to category 4 (Toys)
(55, 5),   -- Product 55 belongs to category 5 (Clothing)
(56, 6),   -- Product 56 belongs to category 6 (Jewelry)
(57, 7),   -- Product 57 belongs to category 7 (Sports)
(58, 1),   -- Product 58 belongs to category 1 (Clothing)
(59, 2),   -- Product 59 belongs to category 2 (Jewelry)
(60, 3),   -- Product 60 belongs to category 3 (Sports)
(61, 4),   -- Product 61 belongs to category 4 (Toys)
(62, 5),   -- Product 62 belongs to category 5 (Clothing)
(63, 6),   -- Product 63 belongs to category 6 (Jewelry)
(64, 7),   -- Product 64 belongs to category 7 (Sports)
(65, 1),   -- Product 65 belongs to category 1 (Clothing)
(66, 2),   -- Product 66 belongs to category 2 (Jewelry)
(67, 3),   -- Product 67 belongs to category 3 (Sports)
(68, 4),   -- Product 68 belongs to category 4 (Toys)
(69, 5),   -- Product 69 belongs to category 5 (Clothing)
(70, 6),   -- Product 70 belongs to category 6 (Jewelry)
(71, 7),   -- Product 71 belongs to category 7 (Sports)
(72, 1),   -- Product 72 belongs to category 1 (Clothing)
(73, 2),   -- Product 73 belongs to category 2 (Jewelry)
(74, 3),   -- Product 74 belongs to category 3 (Sports)
(75, 4),   -- Product 75 belongs to category 4 (Toys)
(76, 5),   -- Product 76 belongs to category 5 (Clothing)
(77, 6),   -- Product 77 belongs to category 6 (Jewelry)
(78, 7),   -- Product 78 belongs to category 7 (Sports)
(79, 1),   -- Product 79 belongs to category 1 (Clothing)
(80, 2),   -- Product 80 belongs to category 2 (Jewelry)
(81, 3),   -- Product 81 belongs to category 3 (Sports)
(82, 4),   -- Product 82 belongs to category 4 (Toys)
(83, 5),   -- Product 83 belongs to category 5 (Clothing)
(84, 6),   -- Product 84 belongs to category 6 (Jewelry)
(85, 7),   -- Product 85 belongs to category 7 (Sports)
(86, 1),   -- Product 86 belongs to category 1 (Clothing)
(87, 2),   -- Product 87 belongs to category 2 (Jewelry)
(88, 3),   -- Product 88 belongs to category 3 (Sports)
(89, 4),   -- Product 89 belongs to category 4 (Toys)
(90, 5),   -- Product 90 belongs to category 5 (Clothing)
(91, 6),   -- Product 91 belongs to category 6 (Jewelry)
(92, 7),   -- Product 92 belongs to category 7 (Sports)
(93, 1),   -- Product 93 belongs to category 1 (Clothing)
(94, 2),   -- Product 94 belongs to category 2 (Jewelry)
(95, 3),   -- Product 95 belongs to category 3 (Sports)
(96, 4),   -- Product 96 belongs to category 4 (Toys)
(97, 5),   -- Product 97 belongs to category 5 (Clothing)
(98, 6),   -- Product 98 belongs to category 6 (Jewelry)
(99, 7),   -- Product 99 belongs to category 7 (Sports)
(100, 1),  -- Product 100 belongs to category 1 (Clothing)
(101, 2),  -- Product 101 belongs to category 2 (Jewelry)
(102, 3),  -- Product 102 belongs to category 3 (Sports)
(103, 4),  -- Product 103 belongs to category 4 (Toys)
(104, 5),  -- Product 104 belongs to category 5 (Clothing)
(105, 6),  -- Product 105 belongs to category 6 (Jewelry)
(106, 7),  -- Product 106 belongs to category 7 (Sports)
(107, 1),  -- Product 107 belongs to category 1 (Clothing)
(108, 2),  -- Product 108 belongs to category 2 (Jewelry)
(109, 3),  -- Product 109 belongs to category 3 (Sports)
(110, 4),  -- Product 110 belongs to category 4 (Toys)
(111, 5),  -- Product 111 belongs to category 5 (Clothing)
(112, 6),  -- Product 112 belongs to category 6 (Jewelry)
(113, 7),  -- Product 113 belongs to category 7 (Sports)
(114, 1),  -- Product 114 belongs to category 1 (Clothing)
(115, 2),  -- Product 115 belongs to category 2 (Jewelry)
(116, 3),  -- Product 116 belongs to category 3 (Sports)
(117, 4),  -- Product 117 belongs to category 4 (Toys)
(118, 5),  -- Product 118 belongs to category 5 (Clothing)
(119, 6),  -- Product 119 belongs to category 6 (Jewelry)
(120, 7),  -- Product 120 belongs to category 7 (Sports)
(121, 1),  -- Product 121 belongs to category 1 (Clothing)
(122, 2),  -- Product 122 belongs to category 2 (Jewelry)
(123, 3),  -- Product 123 belongs to category 3 (Sports)
(124, 4),  -- Product 124 belongs to category 4 (Toys)
(125, 5),  -- Product 125 belongs to category 5 (Clothing)
(126, 6),  -- Product 126 belongs to category 6 (Jewelry)
(127, 7),  -- Product 127 belongs to category 7 (Sports)
(128, 1),  -- Product 128 belongs to category 1 (Clothing)
(129, 2),  -- Product 129 belongs to category 2 (Jewelry)
(130, 3),  -- Product 130 belongs to category 3 (Sports)
(131, 4),  -- Product 131 belongs to category 4 (Toys)
(132, 5),  -- Product 132 belongs to category 5 (Clothing)
(133, 6),  -- Product 133 belongs to category 6 (Jewelry)
(134, 7),  -- Product 134 belongs to category 7 (Sports)
(135, 1),  -- Product 135 belongs to category 1 (Clothing)
(136, 2),  -- Product 136 belongs to category 2 (Jewelry)
(137, 3),  -- Product 137 belongs to category 3 (Sports)
(138, 4),  -- Product 138 belongs to category 4 (Toys)
(139, 5),  -- Product 139 belongs to category 5 (Clothing)
(140, 6),  -- Product 140 belongs to category 6 (Jewelry)
(141, 7),  -- Product 141 belongs to category 7 (Sports)
(142, 1),  -- Product 142 belongs to category 1 (Clothing)
(143, 2),  -- Product 143 belongs to category 2 (Jewelry)
(144, 3),  -- Product 144 belongs to category 3 (Sports)
(145, 4),  -- Product 145 belongs to category 4 (Toys)
(146, 5),  -- Product 146 belongs to category 5 (Clothing)
(147, 6),  -- Product 147 belongs to category 6 (Jewelry)
(148, 7),  -- Product 148 belongs to category 7 (Sports)
(149, 1),  -- Product 149 belongs to category 1 (Clothing)
(150, 2),  -- Product 150 belongs to category 2 (Jewelry)
(151, 3),  -- Product 151 belongs to category 3 (Sports)
(152, 4),  -- Product 152 belongs to category 4 (Toys)
(153, 5),  -- Product 153 belongs to category 5 (Clothing)
(154, 6),  -- Product 154 belongs to category 6 (Jewelry)
(155, 7),  -- Product 155 belongs to category 7 (Sports)
(156, 1),  -- Product 156 belongs to category 1 (Clothing)
(157, 2),  -- Product 157 belongs to category 2 (Jewelry)
(158, 3),  -- Product 158 belongs to category 3 (Sports)
(159, 4),  -- Product 159 belongs to category 4 (Toys)
(160, 5),  -- Product 160 belongs to category 5 (Clothing)
(161, 6),  -- Product 161 belongs to category 6 (Jewelry)
(162, 7),  -- Product 162 belongs to category 7 (Sports)
(163, 1),  -- Product 163 belongs to category 1 (Clothing)
(164, 2),  -- Product 164 belongs to category 2 (Jewelry)
(165, 3),  -- Product 165 belongs to category 3 (Sports)
(166, 4),  -- Product 166 belongs to category 4 (Toys)
(167, 5),  -- Product 167 belongs to category 5 (Clothing)
(168, 6),  -- Product 168 belongs to category 6 (Jewelry)
(169, 7),  -- Product 169 belongs to category 7 (Sports)
(170, 1),  -- Product 170 belongs to category 1 (Clothing)
(171, 2),  -- Product 171 belongs to category 2 (Jewelry)
(172, 3),  -- Product 172 belongs to category 3 (Sports)
(173, 4),  -- Product 173 belongs to category 4 (Toys)
(174, 5),  -- Product 174 belongs to category 5 (Clothing)
(175, 6),  -- Product 175 belongs to category 6 (Jewelry)
(176, 7),  -- Product 176 belongs to category 7 (Sports)
(177, 1),  -- Product 177 belongs to category 1 (Clothing)
(178, 2),  -- Product 178 belongs to category 2 (Jewelry)
(179, 3),  -- Product 179 belongs to category 3 (Sports)
(180, 4),  -- Product 180 belongs to category 4 (Toys)
(181, 5),  -- Product 181 belongs to category 5 (Clothing)
(182, 6),  -- Product 182 belongs to category 6 (Jewelry)
(183, 7),  -- Product 183 belongs to category 7 (Sports)
(184, 1),  -- Product 184 belongs to category 1 (Clothing)
(185, 2),  -- Product 185 belongs to category 2 (Jewelry)
(186, 3),  -- Product 186 belongs to category 3 (Sports)
(187, 4),  -- Product 187 belongs to category 4 (Toys)
(188, 5),  -- Product 188 belongs to category 5 (Clothing)
(189, 6),  -- Product 189 belongs to category 6 (Jewelry)
(190, 7),  -- Product 190 belongs to category 7 (Sports)
(191, 1),  -- Product 191 belongs to category 1 (Clothing)
(192, 2),  -- Product 192 belongs to category 2 (Jewelry)
(193, 3),  -- Product 193 belongs to category 3 (Sports)
(194, 4),  -- Product 194 belongs to category 4 (Toys)
(195, 5),  -- Product 195 belongs to category 5 (Clothing)
(196, 6),  -- Product 196 belongs to category 6 (Jewelry)
(197, 7),  -- Product 197 belongs to category 7 (Sports)
(198, 1),  -- Product 198 belongs to category 1 (Clothing)
(199, 2),  -- Product 199 belongs to category 2 (Jewelry)
(200, 3);  -- Product 200 belongs to category 3 (Sports)


-- Insert data into [Order] table (3 orders)
INSERT INTO [Order] (Total, Buyer, Seller, [Status])
VALUES 
(199.99, 'user1', 'admin1', 'completed'),
(299.99, 'user2', 'admin2', 'shipped'),
(79.99, 'user3', 'admin3', 'completed');

-- Insert data into OrderDetail table (adjusted for valid orders)
INSERT INTO OrderDetail (ID_Product, ID_Order, Quantity)
VALUES 
(1, 1, 2),
(2, 1, 1),  
(3, 2, 1),
(4, 2, 2),  
(5, 3, 5),
(6, 1, 1),
(7, 2, 3),
(8, 3, 2);


-- Insert data into Feedback table (40 feedbacks, 15 users, and both users and admins as sellers)
INSERT INTO Feedback (Content, [Type], [Status], Buyer, Seller)
VALUES 
('Great product!', 'positive', 1, 'user1', 'admin1'),
('Not as expected', 'negative', 1, 'user2', 'user3'),
('Good value for the price', 'positive', 1, 'user3', 'user4'),
('Terrible quality', 'negative', 1, 'user4', 'admin1'),
('Very satisfied', 'positive', 1, 'user5', 'user6'),
('Would not recommend', 'negative', 1, 'user6', 'admin2'),
('Fast shipping', 'positive', 1, 'user7', 'user8'),
('Poor customer service', 'negative', 1, 'user8', 'admin1'),
('Excellent product!', 'positive', 1, 'user9', 'user10'),
('Product was damaged', 'negative', 1, 'user10', 'admin2'),
('Amazing deal', 'positive', 1, 'user11', 'user12'),
('Wrong item received', 'negative', 1, 'user12', 'admin3'),
('Highly recommend', 'positive', 1, 'user13', 'user14'),
('Disappointing experience', 'negative', 1, 'user14', 'user15'),
('Loved it!', 'positive', 1, 'user15', 'admin1'),
('Item never arrived', 'negative', 1, 'user5', 'admin2'),
('Five stars!', 'positive', 1, 'user1', 'user7'),
('Not worth the money', 'negative', 1, 'user2', 'admin3'),
('Great customer support', 'positive', 1, 'user3', 'user9'),
('Will buy again', 'positive', 1, 'user4', 'user5'),
('Refund requested', 'negative', 1, 'user6', 'admin3'),
('Super fast delivery', 'positive', 1, 'user9', 'user10'),
('Received a broken item', 'negative', 1, 'user7', 'user11'),
('Best purchase ever', 'positive', 1, 'user8', 'admin1'),
('Not happy with the item', 'negative', 1, 'user3', 'user5'),
('Happy with the service', 'positive', 1, 'user2', 'admin2'),
('Misleading description', 'negative', 1, 'user4', 'user6'),
('Top-notch quality', 'positive', 1, 'user5', 'user9'),
('Great purchase', 'positive', 1, 'user11', 'admin3'),
('Item was missing parts', 'negative', 1, 'user10', 'admin2'),
('Satisfied with the product', 'positive', 1, 'user7', 'user8'),
('Expected better quality', 'negative', 1, 'user6', 'admin1'),
('Arrived on time', 'positive', 1, 'user12', 'admin2'),
('Poor packaging', 'negative', 1, 'user9', 'admin1'),
('Easy transaction', 'positive', 1, 'user13', 'user10'),
('Product not as described', 'negative', 1, 'user15', 'user12'),
('Happy with the purchase', 'positive', 1, 'user14', 'user13'),
('Would buy again', 'positive', 1, 'user1', 'admin3'),
('Worst experience ever', 'negative', 1, 'user8', 'admin2'),
('Excellent service', 'positive', 1, 'user2', 'user11');

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

-- Insert data into CartDetail table (linked to Cart and OrderDetail)
INSERT INTO CartDetail (ID_Cart, ID_Product, Quantity)
VALUES 
-- Cart for user1 (based on OrderDetail for Order ID 1)
(1, 1, 2), -- user1's cart contains 2 units of Product ID 1
(1, 2, 1), -- user1's cart contains 1 unit of Product ID 2

-- Cart for user2 (based on OrderDetail for Order ID 2)
(2, 3, 1), -- user2's cart contains 1 unit of Product ID 3
(2, 4, 2), -- user2's cart contains 2 units of Product ID 4

-- Cart for user3 (based on OrderDetail for Order ID 3)
(3, 5, 5), -- user3's cart contains 5 units of Product ID 5

-- Cart for user4 (based on new product data)
(4, 6, 1), -- user4's cart contains 1 unit of Product ID 6

-- Cart for user5 (based on new product data)
(5, 7, 3), -- user5's cart contains 3 units of Product ID 7

-- Cart for user6 (based on new product data)
(6, 8, 2), -- user6's cart contains 2 units of Product ID 8

-- Cart for user7 (based on new product data)
(7, 9, 1), -- user7's cart contains 1 unit of Product ID 9

-- Cart for user8 (based on new product data)
(8, 10, 1), -- user8's cart contains 1 unit of Product ID 10

-- Cart for user9 (new cart data)
(9, 1, 3), -- user9's cart contains 3 units of Product ID 1

-- Cart for user10 (new cart data)
(10, 2, 4); -- user10's cart contains 4 units of Product ID 2



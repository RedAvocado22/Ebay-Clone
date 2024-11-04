
--Insert data for 15 Accounts and 3 admin
INSERT INTO Accounts (Username, [Password], Fullname, Email, [Role], [Status], Avatar)
VALUES 
('user1', 'password1', 'User One', 'user1@example.com', 'user', 1, '/public/images/avatar/user0.png'),
('user2', 'password2', 'User Two', 'user2@example.com', 'user', 1, '/public/images/avatar/user0.png'),
('user3', 'password3', 'User Three', 'user3@example.com', 'user', 1, '/public/images/avatar/user0.png'),
('user4', 'password4', 'User Four', 'user4@example.com', 'user', 1, '/public/images/avatar/user0.png'),
('user5', 'password5', 'User Five', 'user5@example.com', 'user', 1, '/public/images/avatar/user0.png'),
('user6', 'password6', 'User Six', 'user6@example.com', 'user', 1, '/public/images/avatar/user0.png'),
('user7', 'password7', 'User Seven', 'user7@example.com', 'user', 1, '/public/images/avatar/user1.png'),
('user8', 'password8', 'User Eight', 'user8@example.com', 'user', 1, '/public/images/avatar/user1.png'),
('user9', 'password9', 'User Nine', 'user9@example.com', 'user', 1, '/public/images/avatar/user1.png'),
('user10', 'password10', 'User Ten', 'user10@example.com', 'user', 1, '/public/images/avatar/user1.png'),
('user11', 'password11', 'User Eleven', 'user11@example.com', 'user', 1, '/public/images/avatar/user1.png'),
('user12', 'password12', 'User Twelve', 'user12@example.com', 'user', 1, '/public/images/avatar/user1.png'),
('user13', 'password13', 'User Thirteen', 'user13@example.com', 'user', 1, '/public/images/avatar/user1.png'),
('user14', 'password14', 'User Fourteen', 'user14@example.com', 'user', 1, '/public/images/avatar/user1.png'),
('user15', 'password15', 'User Fifteen', 'user15@example.com', 'user', 1, '/public/images/avatar/user1.png'),
('admin1', 'adminpass1', 'Admin One', 'admin1@example.com', 'admin', 1, '/public/images/avatar/admin.png'),
('admin2', 'adminpass2', 'Admin One', 'admin2@example.com', 'admin', 1, '/public/images/avatar/admin.png'),
('admin3', 'adminpass3', 'Admin One', 'admin3@example.com', 'admin', 1, '/public/images/avatar/admin.png');

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
INSERT INTO Products ([Name], Price, Quantity, [Image], Seller, categoryID)
VALUES  
-- Electronics (categoryID = 1)
('Product 1', 19.99, 100, '/public/images/products/electronics/cameras/camera_1_1.png', 'user1', 1),
('Product 2', 29.99, 50, '/public/images/products/electronics/cameras/camera_2_1.png', 'user1', 1),
('Product 3', 39.99, 150, '/public/images/products/electronics/cameras/camera_3_1.png', 'user2', 1),
('Product 4', 49.99, 70, '/public/images/products/electronics/cameras/camera_4_1.png', 'user2', 1),
('Product 5', 59.99, 200, '/public/images/products/electronics/cameras/camera_5_1.png', 'user3', 1),
('Product 6', 69.99, 80, '/public/images/products/electronics/cameras/camera_6_1.png', 'user3', 1),
('Product 7', 79.99, 90, '/public/images/products/electronics/cameras/camera_7_1.png', 'user4', 1),
('Product 8', 89.99, 120, '/public/images/products/electronics/cameras/camera_8_1.png', 'user4', 1),
('Product 9', 99.99, 60, '/public/images/products/electronics/cameras/camera_9_1.png', 'user5', 1),
('Product 10', 109.99, 40, '/public/images/products/electronics/cameras/camera_10_1.png', 'user5', 1),

-- CellPhones (categoryID = 1)
('Product 11', 21.99, 85, '/public/images/products/electronics/cellphones/cellphone_1_1.png', 'user10', 1),
('Product 12', 22.99, 130, '/public/images/products/electronics/cellphones/cellphone_2_1.png', 'admin1', 1),
('Product 13', 13.99, 160, '/public/images/products/electronics/cellphones/cellphone_3_1.png', 'user11', 1),
('Product 14', 33.99, 100, '/public/images/products/electronics/cellphones/cellphone_4_1.png', 'user12', 1),
('Product 15', 44.99, 55, '/public/images/products/electronics/cellphones/cellphone_5_1.png', 'admin2', 1),
('Product 16', 19.49, 200, '/public/images/products/electronics/cellphones/cellphone_6_1.png', 'user13', 1),
('Product 17', 9.49, 220, '/public/images/products/electronics/cellphones/cellphone_7_1.png', 'user14', 1),
('Product 18', 10.99, 180, '/public/images/products/electronics/cellphones/cellphone_8_1.png', 'user15', 1),
('Product 19', 11.49, 150, '/public/images/products/electronics/cellphones/cellphone_9_1.png', 'admin3', 1),

-- Computers (categoryID = 1)
('Product 20', 25.49, 60, '/public/images/products/electronics/computers/pc_1_1.png', 'user6', 1),
('Product 21', 22.99, 130, '/public/images/products/electronics/computers/pc_2_1.png', 'user7', 1),
('Product 22', 27.99, 70, '/public/images/products/electronics/computers/pc_3_1.png', 'user8', 1),
('Product 23', 33.99, 80, '/public/images/products/electronics/computers/pc_4_1.png', 'user9', 1),
('Product 24', 43.99, 190, '/public/images/products/electronics/computers/pc_5_1.png', 'user10', 1),
('Product 25', 15.49, 40, '/public/images/products/electronics/computers/pc_6_1.png', 'admin1', 1),
('Product 26', 29.99, 90, '/public/images/products/electronics/computers/pc_7_1.png', 'admin2', 1),
('Product 27', 18.99, 200, '/public/images/products/electronics/computers/pc_8_1.png', 'admin3', 1),
('Product 28', 19.99, 100, '/public/images/products/electronics/computers/pc_9_1.png', 'user11', 1),
('Product 29', 49.99, 110, '/public/images/products/electronics/computers/pc_10_1.png', 'user12', 1),

-- Gaming (categoryID = 1)
('Product 30', 35.49, 95, '/public/images/products/electronics/gaming/gaming_1_1.png', 'user13', 1),
('Product 31', 44.99, 60, '/public/images/products/electronics/gaming/gaming_2_1.png', 'user14', 1),
('Product 32', 12.99, 170, '/public/images/products/electronics/gaming/gaming_3_1.png', 'user15', 1),
('Product 33', 9.99, 190, '/public/images/products/electronics/gaming/gaming_4_1.png', 'admin1', 1),
('Product 34', 24.99, 80, '/public/images/products/electronics/gaming/gaming_5_1.png', 'admin2', 1),
('Product 35', 34.99, 75, '/public/images/products/electronics/gaming/gaming_6_1.png', 'user1', 1),
('Product 36', 29.49, 60, '/public/images/products/electronics/gaming/gaming_7_1.png', 'user2', 1),
('Product 37', 45.49, 100, '/public/images/products/electronics/gaming/gaming_8_1.png', 'user3', 1),
('Product 38', 40.99, 120, '/public/images/products/electronics/gaming/gaming_9_1.png', 'user4', 1),
('Product 39', 41.99, 90, '/public/images/products/electronics/gaming/gaming_10_1.png', 'user5', 1),
('Product 40', 28.99, 95, '/public/images/products/electronics/gaming/gaming_11_1.png', 'admin3', 1),
('Product 41', 15.99, 50, '/public/images/products/electronics/gaming/gaming_12_1.png', 'user6', 1),
('Product 42', 26.99, 70, '/public/images/products/electronics/gaming/gaming_13_1.png', 'user7', 1),
('Product 43', 27.99, 80, '/public/images/products/electronics/gaming/gaming_14_1.png', 'user8', 1),
('Product 44', 33.49, 60, '/public/images/products/electronics/gaming/gaming_15_1.png', 'user9', 1),

-- Clothing (categoryID = 2)
('Product 125', 14.49, 115, '/public/images/products/clothing/cloth_1_1.png', 'user1', 2),
('Product 126', 22.49, 130, '/public/images/products/clothing/cloth_2_1.png', 'user2', 2),
('Product 127', 47.49, 110, '/public/images/products/clothing/cloth_3_1.png', 'user3', 2),
('Product 128', 41.99, 105, '/public/images/products/clothing/cloth_4_1.png', 'user4', 2),
('Product 129', 19.99, 65, '/public/images/products/clothing/cloth_5_1.png', 'user5', 2),
('Product 130', 28.99, 95, '/public/images/products/clothing/cloth_6_1.png', 'user6', 2),
('Product 131', 35.99, 75, '/public/images/products/clothing/cloth_7_1.png', 'user7', 2),
('Product 132', 30.49, 85, '/public/images/products/clothing/cloth_8_1.png', 'user8', 2),
('Product 133', 33.99, 90, '/public/images/products/clothing/cloth_9_1.png', 'user9', 2),
('Product 134', 46.49, 125, '/public/images/products/clothing/cloth_10_1.png', 'user10', 2),
-- Clothing (categoryID = 2)
('Product 134', 46.49, 125, '/public/images/products/clothing/cloth_10_1.png', 'user10', 2),
('Product 135', 40.99, 110, '/public/images/products/clothing/cloth_11_1.png', 'user11', 2),
('Product 136', 23.49, 60, '/public/images/products/clothing/cloth_12_1.png', 'user12', 2),
('Product 137', 28.49, 70, '/public/images/products/clothing/cloth_13_1.png', 'user13', 2),
('Product 138', 18.99, 80, '/public/images/products/clothing/cloth_14_1.png', 'user14', 2),
('Product 139', 27.49, 120, '/public/images/products/clothing/cloth_15_1.png', 'user15', 2),
('Product 140', 31.49, 115, '/public/images/products/clothing/cloth_16_1.png', 'user1', 2),
('Product 141', 22.99, 100, '/public/images/products/clothing/cloth_17_1.png', 'user2', 2),
('Product 142', 25.99, 125, '/public/images/products/clothing/cloth_18_1.png', 'user3', 2),
('Product 143', 34.99, 90, '/public/images/products/clothing/cloth_19_1.png', 'user4', 2),
('Product 144', 44.49, 130, '/public/images/products/clothing/cloth_20_1.png', 'user5', 2),
('Product 145', 32.99, 85, '/public/images/products/clothing/cloth_21_1.png', 'user6', 2),
('Product 146', 17.99, 95, '/public/images/products/clothing/cloth_22_1.png', 'user7', 2),
('Product 147', 21.99, 115, '/public/images/products/clothing/cloth_23_1.png', 'user8', 2),
('Product 148', 37.99, 110, '/public/images/products/clothing/cloth_24_1.png', 'user9', 2),
('Product 149', 23.99, 105, '/public/images/products/clothing/cloth_25_1.png', 'user10', 2),
('Product 150', 38.99, 100, '/public/images/products/clothing/cloth_26_1.png', 'user11', 2),
('Product 151', 35.99, 120, '/public/images/products/clothing/cloth_27_1.png', 'user12', 2),
('Product 152', 48.99, 85, '/public/images/products/clothing/cloth_28_1.png', 'user13', 2),
('Product 153', 22.99, 110, '/public/images/products/clothing/cloth_29_1.png', 'user14', 2),
('Product 154', 36.49, 60, '/public/images/products/clothing/cloth_30_1.png', 'user15', 2),

-- Jewelry (categoryID = 8)
('Product 155', 44.99, 125, '/public/images/products/jewelry/jewelry_1_1.png', 'user1', 8),
('Product 156', 42.99, 90, '/public/images/products/jewelry/jewelry_2_1.png', 'user2', 8),
('Product 157', 29.99, 100, '/public/images/products/jewelry/jewelry_3_1.png', 'user3', 8),
('Product 158', 19.99, 105, '/public/images/products/jewelry/jewelry_4_1.png', 'user4', 8),
('Product 159', 39.99, 85, '/public/images/products/jewelry/jewelry_5_1.png', 'user5', 8),
('Product 160', 41.49, 120, '/public/images/products/jewelry/jewelry_6_1.png', 'user6', 8),
('Product 161', 24.49, 95, '/public/images/products/jewelry/jewelry_7_1.png', 'user7', 8),
('Product 162', 20.99, 75, '/public/images/products/jewelry/jewelry_8_1.png', 'user8', 8),
('Product 163', 36.49, 105, '/public/images/products/jewelry/jewelry_9_1.png', 'user9', 8),
('Product 164', 28.99, 90, '/public/images/products/jewelry/jewelry_10_1.png', 'user10', 8),
('Product 165', 43.99, 100, '/public/images/products/jewelry/jewelry_11_1.png', 'user11', 8),
('Product 166', 17.99, 110, '/public/images/products/jewelry/jewelry_12_1.png', 'user12', 8),
('Product 167', 25.99, 60, '/public/images/products/jewelry/jewelry_13_1.png', 'user13', 8),
('Product 168', 46.99, 120, '/public/images/products/jewelry/jewelry_14_1.png', 'user14', 8),
('Product 169', 27.49, 115, '/public/images/products/jewelry/jewelry_15_1.png', 'user15', 8),

-- Sports (categoryID = 6)
('Product 170', 23.49, 80, '/public/images/products/sports/sport_1_1.png', 'user1', 6),
('Product 171', 31.99, 125, '/public/images/products/sports/sport_2_1.png', 'user2', 6),
('Product 172', 39.99, 85, '/public/images/products/sports/sport_3_1.png', 'user3', 6),
('Product 173', 48.49, 105, '/public/images/products/sports/sport_4_1.png', 'user4', 6),
('Product 174', 37.99, 110, '/public/images/products/sports/sport_5_1.png', 'user5', 6),
('Product 175', 26.49, 100, '/public/images/products/sports/sport_6_1.png', 'user6', 6),
('Product 176', 22.49, 95, '/public/images/products/sports/sport_7_1.png', 'user7', 6),
('Product 177', 19.99, 75, '/public/images/products/sports/sport_8_1.png', 'user8', 6),
('Product 178', 44.49, 120, '/public/images/products/sports/sport_9_1.png', 'user9', 6),
('Product 179', 29.49, 130, '/public/images/products/sports/sport_10_1.png', 'user10', 6),
('Product 180', 45.99, 85, '/public/images/products/sports/sport_11_1.png', 'user11', 6),
('Product 181', 21.99, 105, '/public/images/products/sports/sport_12_1.png', 'user12', 6),
('Product 182', 32.49, 110, '/public/images/products/sports/sport_13_1.png', 'user13', 6),
('Product 183', 38.49, 125, '/public/images/products/sports/sport_14_1.png', 'user14', 6),
('Product 184', 20.99, 70, '/public/images/products/sports/sport_15_1.png', 'user15', 6),
('Product 185', 47.99, 130, '/public/images/products/sports/sport_16_1.png', 'user1', 6),
('Product 186', 30.99, 115, '/public/images/products/sports/sport_17_1.png', 'user2', 6),
('Product 187', 33.99, 100, '/public/images/products/sports/sport_18_1.png', 'user3', 6),
('Product 188', 35.49, 90, '/public/images/products/sports/sport_19_1.png', 'user4', 6),
('Product 189', 40.49, 105, '/public/images/products/sports/sport_20_1.png', 'user5', 6),

-- Toys (categoryID = 5)
('Product 190', 19.99, 95, '/public/images/products/toys/toy_1_1.png', 'user1', 5),
('Product 191', 24.99, 80, '/public/images/products/toys/toy_2_1.png', 'user2', 5),
('Product 192', 26.99, 100, '/public/images/products/toys/toy_3_1.png', 'user3', 5),
('Product 193', 31.99, 125, '/public/images/products/toys/toy_4_1.png', 'user4', 5),
('Product 194', 38.49, 120, '/public/images/products/toys/toy_5_1.png', 'user5', 5),
('Product 195', 22.99, 85, '/public/images/products/toys/toy_6_1.png', 'user6', 5),
('Product 196', 41.99, 130, '/public/images/products/toys/toy_7_1.png', 'user7', 5),
('Product 197', 20.49, 115, '/public/images/products/toys/toy_8_1.png', 'user8', 5),
('Product 198', 18.49, 95, '/public/images/products/toys/toy_9_1.png', 'user9', 5),
('Product 199', 29.49, 110, '/public/images/products/toys/toy_10_1.png', 'user10', 5),
('Product 200', 33.49, 105, '/public/images/products/toys/toy_11_1.png', 'user11', 5),
('Product 201', 25.99, 90, '/public/images/products/toys/toy_12_1.png', 'user12', 5),
('Product 202', 37.99, 115, '/public/images/products/toys/toy_13_1.png', 'user13', 5),
('Product 203', 42.49, 100, '/public/images/products/toys/toy_14_1.png', 'user14', 5),
('Product 204', 17.99, 105, '/public/images/products/toys/toy_15_1.png', 'user15', 5),
('Product 205', 21.49, 70, '/public/images/products/toys/toy_16_1.png', 'user1', 5),
('Product 206', 43.99, 85, '/public/images/products/toys/toy_17_1.png', 'user2', 5),
('Product 207', 27.99, 95, '/public/images/products/toys/toy_18_1.png', 'user3', 5),
('Product 208', 36.99, 75, '/public/images/products/toys/toy_19_1.png', 'user4', 5),
('Product 209', 48.99, 125, '/public/images/products/toys/toy_20_1.png', 'user5', 5),

-- Beauty
('Product 210', 19.99, 95, '/public/images/products/beauty/beauty_1_1.png', 'user1', 7),
('Product 211', 14.49, 80, '/public/images/products/beauty/beauty_1_2.png', 'user2', 7),
('Product 212', 26.75, 100, '/public/images/products/beauty/beauty_1_3.png', 'user3', 7),
('Product 213', 41.22, 100, '/public/images/products/beauty/beauty_14_2.png', 'user3', 7),
('Product 214', 10.33, 100, '/public/images/products/beauty/beauty_2_1.png', 'user4', 7),
('Product 215', 35.67, 100, '/public/images/products/beauty/beauty_3_1.png', 'user5', 7),
('Product 216', 23.49, 100, '/public/images/products/beauty/beauty_3_2.png', 'user6', 7),
('Product 217', 12.88, 100, '/public/images/products/beauty/beauty_4_1.png', 'user9', 7),
('Product 218', 49.11, 100, '/public/images/products/beauty/beauty_4_2.png', 'user4', 7),
('Product 219', 15.92, 100, '/public/images/products/beauty/beauty_5_1.png', 'user2', 7),
('Product 220', 8.77, 100, '/public/images/products/beauty/beauty_5_2.png', 'user1', 7),
('Product 221', 25.39, 100, '/public/images/products/beauty/beauty_6_1.png', 'user5', 7),
('Product 222', 47.66, 100, '/public/images/products/beauty/beauty_6_2.png', 'user2', 7),
('Product 223', 33.41, 100, '/public/images/products/beauty/beauty_7_1.png', 'user6', 7),
('Product 224', 18.52, 100, '/public/images/products/beauty/beauty_7_2.png', 'user2', 7),
('Product 225', 9.88, 100, '/public/images/products/beauty/beauty_8_1.png', 'user6', 7),
('Product 226', 27.33, 100, '/public/images/products/beauty/beauty_8_2.png', 'user8', 7),
('Product 227', 45.29, 100, '/public/images/products/beauty/beauty_9_1.png', 'user6', 7),
('Product 228', 13.22, 100, '/public/images/products/beauty/beauty_10_1.png', 'user5', 7),
('Product 229', 30.47, 100, '/public/images/products/beauty/beauty_11_1.png', 'user3', 7),
('Product 230', 11.58, 100, '/public/images/products/beauty/beauty_12_1.png', 'user5', 7),
('Product 231', 50.23, 100, '/public/images/products/beauty/beauty_12_2.png', 'user8', 7),
('Product 232', 21.45, 100, '/public/images/products/beauty/beauty_13_1.png', 'user6', 7),
('Product 233', 16.87, 100, '/public/images/products/beauty/beauty_13_2.png', 'user7', 7),
('Product 234', 7.99, 100, '/public/images/products/beauty/beauty_14_1.png', 'user7', 7),

-- Book
('Product 235', 19.99, 95, '/public/images/products/books/book_1_1.png', 'user1', 4),
('Product 236', 14.49, 80, '/public/images/products/books/book_2_1.png', 'user2', 4),
('Product 237', 26.75, 100, '/public/images/products/books/book_3_1.png', 'user3', 4),
('Product 238', 41.22, 100, '/public/images/products/books/book_3_2.png', 'user3', 4),
('Product 239', 10.33, 100, '/public/images/products/books/book_4_1.png', 'user4', 4),
('Product 240', 35.67, 100, '/public/images/products/books/book_4_2.png', 'user5', 4),
('Product 241', 23.49, 100, '/public/images/products/books/book_5_1.png', 'user6', 4),
('Product 242', 12.88, 100, '/public/images/products/books/book_5_2.png', 'user9', 4),
('Product 243', 49.11, 100, '/public/images/products/books/book_6_1.png', 'user4', 4),
('Product 244', 15.92, 100, '/public/images/products/books/book_7_1.png', 'user2', 4),
('Product 245', 8.77, 100, '/public/images/products/books/book_8_1.png', 'user1', 4),
('Product 246', 25.39, 100, '/public/images/products/books/book_9_1.png', 'user5', 4),
('Product 247', 47.66, 100, '/public/images/products/books/book_10_1.png', 'user2', 4),
('Product 248', 33.41, 100, '/public/images/products/books/book_11_1.png', 'user6', 4),
('Product 249', 18.52, 100, '/public/images/products/books/book_12_1.png', 'user2', 4),
('Product 250', 9.88, 100, '/public/images/products/books/book_13_1.png', 'user6', 4),
('Product 251', 27.33, 100, '/public/images/products/books/book_14_1.png', 'user8', 4),
('Product 252', 45.29, 100, '/public/images/products/books/book_15_1.png', 'user6', 4),
('Product 253', 13.22, 100, '/public/images/products/books/book_16_1.png', 'user5', 4),
('Product 254', 30.47, 100, '/public/images/products/books/book_17_1.png', 'user3', 4),
('Product 255', 11.58, 100, '/public/images/products/books/book_18_1.png', 'user5', 4),
('Product 256', 50.23, 100, '/public/images/products/books/book_19_1.png', 'user8', 4),
('Product 257', 21.45, 100, '/public/images/products/books/book_20_1.png', 'user6', 4),
('Product 258', 16.87, 100, '/public/images/products/books/book_21_2.png', 'user7', 4),
('Product 259', 7.99, 100, '/public/images/products/books/book_22_1.png', 'user7', 4),
('Product 260', 7.99, 100, '/public/images/products/books/book_23_1.png', 'user7', 4),
('Product 261', 7.99, 100, '/public/images/products/books/book_24_1.png', 'user7', 4),
('Product 262', 7.99, 100, '/public/images/products/books/book_24_2.png', 'user7', 4),
('Product 263', 7.99, 100, '/public/images/products/books/book_25_1.png', 'user7', 4),
('Product 264', 7.99, 100, '/public/images/products/books/book_26_1.png', 'user7', 4),
('Product 265', 7.99, 100, '/public/images/products/books/book_27_1.png', 'user7', 4),
('Product 266', 7.99, 100, '/public/images/products/books/book_28_1.png', 'user7', 4),
('Product 267', 7.99, 100, '/public/images/products/books/book_29_1.png', 'user7', 4),
('Product 268', 7.99, 100, '/public/images/products/books/book_30_1.png', 'user7', 4),

--TV
('Product 299', 19.99, 100, '/public/images/products/electronics/tv/tv_1_1.png', 'user1', 1),
('Product 300', 29.99, 50, '/public/images/products/electronics/tv/tv_1_2.png', 'user1', 1),
('Product 301', 39.99, 150, '/public/images/products/electronics/tv/tv_1_3.png', 'user2', 1),
('Product 302', 49.99, 70, '/public/images/products/electronics/tv/tv_1_4.png', 'user2', 1),
('Product 303', 59.99, 200, '/public/images/products/electronics/tv/tv_1_5.png', 'user3', 1),
('Product 304', 69.99, 80, '/public/images/products/electronics/tv/tv_2_1.png', 'user3', 1),
('Product 305', 79.99, 90, '/public/images/products/electronics/tv/tv_2_2.png', 'user4', 1),
('Product 306', 89.99, 120, '/public/images/products/electronics/tv/tv_2_3.png', 'user4', 1),
('Product 307', 99.99, 60, '/public/images/products/electronics/tv/tv_2_4.png', 'user5', 1),
('Product 308', 109.99, 40, '/public/images/products/electronics/tv/tv_2_5.png', 'user5', 1),
('Product 309', 19.99, 100, '/public/images/products/electronics/tv/tv_3_1.png', 'user1', 1),
('Product 310', 29.99, 50, '/public/images/products/electronics/tv/tv_3_2.png', 'user1', 1),
('Product 311', 39.99, 150, '/public/images/products/electronics/tv/tv_3_3.png', 'user2', 1),
('Product 312', 49.99, 70, '/public/images/products/electronics/tv/tv_3_4.png', 'user2', 1),
('Product 313', 59.99, 200, '/public/images/products/electronics/tv/tv_3_5.png', 'user3', 1),
('Product 314', 69.99, 80, '/public/images/products/electronics/tv/tv_4_1.png', 'user3', 1),
('Product 315', 79.99, 90, '/public/images/products/electronics/tv/tv_4_2.png', 'user4', 1),
('Product 316', 89.99, 120, '/public/images/products/electronics/tv/tv_4_3.png', 'user4', 1),
('Product 317', 99.99, 60, '/public/images/products/electronics/tv/tv_4_4.png', 'user5', 1),
('Product 318', 109.99, 40, '/public/images/products/electronics/tv/tv_4_5.png', 'user5', 1),
('Product 319', 19.99, 100, '/public/images/products/electronics/tv/tv_5_1.png', 'user1', 1),
('Product 320', 29.99, 50, '/public/images/products/electronics/tv/tv_5_2.png', 'user1', 1),
('Product 321', 39.99, 150, '/public/images/products/electronics/tv/tv_5_3.png', 'user2', 1),
('Product 322', 49.99, 70, '/public/images/products/electronics/tv/tv_5_4.png', 'user2', 1),
('Product 323', 59.99, 200, '/public/images/products/electronics/tv/tv_5_5.png', 'user3', 1),
('Product 324', 69.99, 80, '/public/images/products/electronics/tv/tv_6_1.png', 'user3', 1),
('Product 325', 79.99, 90, '/public/images/products/electronics/tv/tv_6_2.png', 'user4', 1),
('Product 326', 89.99, 120, '/public/images/products/electronics/tv/tv_6_3.png', 'user4', 1),
('Product 327', 99.99, 60, '/public/images/products/electronics/tv/tv_6_4.png', 'user5', 1),
('Product 328', 109.99, 40, '/public/images/products/electronics/tv/tv_6_5.png', 'user5', 1),

-- Home & Kitchen
('Product 269', 19.99, 95, '/public/images/products/home&kitchen/stuff_1_1.png', 'user1', 3),
('Product 270', 14.49, 80, '/public/images/products/home&kitchen/stuff_1_2.png', 'user2', 3),
('Product 271', 26.75, 100, '/public/images/products/home&kitchen/stuff_2_2.png', 'user3', 3),
('Product 272', 41.22, 100, '/public/images/products/home&kitchen/stuff_2_3.png', 'user3', 3),
('Product 273', 10.33, 100, '/public/images/products/home&kitchen/stuff_2_1.png', 'user4', 3),
('Product 274', 35.67, 100, '/public/images/products/home&kitchen/stuff_3_1.png', 'user5', 3),
('Product 275', 23.49, 100, '/public/images/products/home&kitchen/stuff_3_2.png', 'user6', 3),
('Product 276', 12.88, 100, '/public/images/products/home&kitchen/stuff_4_1.png', 'user9', 3),
('Product 277', 49.11, 100, '/public/images/products/home&kitchen/stuff_4_2.png', 'user4', 3),
('Product 278', 15.92, 100, '/public/images/products/home&kitchen/stuff_5_1.png', 'user2', 3),
('Product 279', 8.77, 100, '/public/images/products/home&kitchen/stuff_5_2.png', 'user1', 3),
('Product 280', 25.39, 100, '/public/images/products/home&kitchen/stuff_6_1.png', 'user5', 3),
('Product 281', 47.66, 100, '/public/images/products/home&kitchen/stuff_6_2.png', 'user2', 3),
('Product 282', 33.41, 100, '/public/images/products/home&kitchen/stuff_7_1.png', 'user6', 3),
('Product 283', 18.52, 100, '/public/images/products/home&kitchen/stuff_7_2.png', 'user2', 3),
('Product 284', 9.88, 100, '/public/images/products/home&kitchen/stuff_8_1.png', 'user6', 3),
('Product 285', 27.33, 100, '/public/images/products/home&kitchen/stuff_8_2.png', 'user8', 3),
('Product 286', 45.29, 100, '/public/images/products/home&kitchen/stuff_9_1.png', 'user6', 3),
('Product 287', 13.22, 100, '/public/images/products/home&kitchen/stuff_10_1.png', 'user5', 3),
('Product 288', 30.47, 100, '/public/images/products/home&kitchen/stuff_11_1.png', 'user3', 3),
('Product 289', 11.58, 100, '/public/images/products/home&kitchen/stuff_12_1.png', 'user5', 3),
('Product 290', 50.23, 100, '/public/images/products/home&kitchen/stuff_12_2.png', 'user8', 3),
('Product 291', 21.45, 100, '/public/images/products/home&kitchen/stuff_13_1.png', 'user6', 3),
('Product 292', 16.87, 100, '/public/images/products/home&kitchen/stuff_13_2.png', 'user7', 3),
('Product 293', 7.99, 100, '/public/images/products/home&kitchen/stuff_14_1.png', 'user7', 3),
('Product 294', 7.99, 100, '/public/images/products/home&kitchen/stuff_14_2.png', 'user7', 3),
('Product 295', 7.99, 100, '/public/images/products/home&kitchen/stuff_12_2.png', 'user7', 3),
('Product 296', 7.99, 100, '/public/images/products/home&kitchen/stuff_9_2.png', 'user7', 3),
('Product 297', 7.99, 100, '/public/images/products/home&kitchen/stuff_10_2.png', 'user7', 3),
('Product 298', 7.99, 100, '/public/images/products/home&kitchen/stuff_6_3.png', 'user7', 3);

-- Insert data into [Order] table (3 orders)
INSERT INTO [Orders] (Total, Buyer, Seller, [Status])
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
INSERT INTO Feedbacks (Content, [Type], [Status], Buyer, Seller)
VALUES 
('Absolutely loved this product! It was even better than I expected and arrived so quickly. Thanks for an awesome experience!', 'positive', 1, 'user1', 'admin1'),
('I had high hopes, but this didn’t live up to them. The quality was way below what I expected. Kind of a letdown.', 'negative', 1, 'user2', 'user3'),
('For the price, this was a solid buy. It’s practical and does the job well. Happy with my purchase!', 'positive', 1, 'user3', 'user4'),
('Honestly, the quality was just terrible. Not sure what went wrong, but I’m pretty disappointed.', 'negative', 1, 'user4', 'admin1'),
('Really happy with this purchase! The product is exactly what I was looking for, and the seller was super helpful.', 'positive', 1, 'user5', 'user6'),
('I wouldn’t buy this again. It’s not worth the price, and it didn’t work as advertised. Disappointed.', 'negative', 1, 'user6', 'admin2'),
('Got my order really fast, which was a nice surprise. Everything was packaged well, too. Great experience overall!', 'positive', 1, 'user7', 'user8'),
('Not impressed with the customer service here. Tried to get help, but it was such a struggle. Won’t be back.', 'negative', 1, 'user8', 'admin1'),
('Love this! It’s exactly as described and works perfectly. I’ll definitely recommend this seller.', 'positive', 1, 'user9', 'user10'),
('Sadly, the item was damaged when it arrived. Had to go through the hassle of a return, which wasn’t fun.', 'negative', 1, 'user10', 'admin2'),
('Such a great deal! I feel like I got more than I paid for. Really happy with my purchase and will buy again.', 'positive', 1, 'user11', 'user12'),
('They sent the wrong item, and it took ages to sort it out. Not thrilled with the experience overall.', 'negative', 1, 'user12', 'admin3'),
('Highly recommend! The product quality is fantastic, and I’ve already told a few friends to check it out.', 'positive', 1, 'user13', 'user14'),
('Not what I was hoping for. The whole experience felt a bit frustrating. Probably won’t shop here again.', 'negative', 1, 'user14', 'user15'),
('Loved everything about this purchase! Fast delivery, great product—couldn’t be happier.', 'positive', 1, 'user15', 'admin1'),
('My item never even arrived. Really disappointed with how this was handled. Wasted my time and money.', 'negative', 1, 'user5', 'admin2'),
('Five stars! Great quality and a smooth buying experience. I’ll be coming back for more.', 'positive', 1, 'user1', 'user7'),
('Honestly, not worth the money. The product didn’t hold up, and I feel like I overpaid for what I got.', 'negative', 1, 'user2', 'admin3'),
('Fantastic customer support! They went above and beyond to help me out. Very happy with this seller.', 'positive', 1, 'user3', 'user9'),
('Really happy with everything here. The product works well, and I’m planning to shop again soon.', 'positive', 1, 'user4', 'user5'),
('I had to request a refund. The item wasn’t what I expected, and customer service wasn’t very helpful.', 'negative', 1, 'user6', 'admin3'),
('Delivery was super quick, and I couldn’t be happier with the product. Will definitely recommend!', 'positive', 1, 'user9', 'user10'),
('Unfortunately, I received a broken item. It was disappointing and not what I expected from this seller.', 'negative', 1, 'user7', 'user11'),
('Best purchase I’ve made in a long time! Great quality and value. Very impressed with this seller.', 'positive', 1, 'user8', 'admin1'),
('Not thrilled with the product. It didn’t match the description, and I was hoping for better quality.', 'negative', 1, 'user3', 'user5'),
('Customer service was really helpful and made the whole experience easy. Will definitely come back!', 'positive', 1, 'user2', 'admin2'),
('The item wasn’t as described, and I felt a bit misled. Not sure I’ll be buying from here again.', 'negative', 1, 'user4', 'user6'),
('Great quality! It’s obvious this product was made well. Very happy with my purchase.', 'positive', 1, 'user5', 'user9'),
('Love the product! Everything went smoothly, and it was worth every penny. Thank you!', 'positive', 1, 'user11', 'admin3'),
('Item was missing a few parts, which was frustrating. I had to follow up a lot to get things sorted out.', 'negative', 1, 'user10', 'admin2'),
('Super happy with the product! It arrived in perfect condition and is just what I wanted.', 'positive', 1, 'user7', 'user8'),
('Expected better quality. It just didn’t meet my expectations for the price. Disappointed.', 'negative', 1, 'user6', 'admin1'),
('Product arrived exactly on time, and everything was just as described. Very pleased with my order.', 'positive', 1, 'user12', 'admin2'),
('The packaging was terrible, and the item was a bit damaged. Not the best experience.', 'negative', 1, 'user9', 'admin1'),
('Smooth transaction from start to finish! Easy to work with and the product is fantastic.', 'positive', 1, 'user13', 'user10'),
('The product didn’t match the description at all. I wish it had been clearer before I bought it.', 'negative', 1, 'user15', 'user12'),
('Really happy with my purchase! The product is great, and everything went smoothly.', 'positive', 1, 'user14', 'user13'),
('Will definitely buy again from this seller. Product was exactly as described. Highly recommend.', 'positive', 1, 'user1', 'admin3'),
('This was the worst experience I’ve had buying online. The product was terrible, and support was lacking.', 'negative', 1, 'user8', 'admin2'),
('Everything went perfectly! The product is great, and the seller was wonderful to work with.', 'positive', 1, 'user2', 'user11');


-- Insert data into Cart table (10 carts)
INSERT INTO Carts (ID_Account)
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



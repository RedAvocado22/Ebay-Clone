
--Insert data for 15 Accounts and 3 admin
INSERT INTO Accounts (Username, [Password], Fullname, Email, [Role], [Status], Avatar)
VALUES 
-- Admins
('minhcuong292', '123', 'Sky Admin', 'skyadmin@example.com', 'admin', 1, '/public/images/avatar/admin.png'),
('danhhieu09', '123', 'Cloud Boss', 'cloudboss@example.com', 'admin', 1, '/public/images/avatar/admin.png'),
('viethoang2004', '123', 'Star Lord', 'starlord@example.com', 'admin', 1, '/public/images/avatar/admin.png'),
-- Users
('sunnyday', '123', 'Sunny Day', 'sunnyday@example.com', 'user', 1, '/public/images/avatar/user0.png'),
('moonlight', '123', 'Moon Light', 'moonlight@example.com', 'user', 1, '/public/images/avatar/user0.png'),
('starrysky', '123', 'Starry Sky', 'starrysky@example.com', 'user', 1, '/public/images/avatar/user0.png'),
('blueocean', '123', 'Blue Ocean', 'blueocean@example.com', 'user', 1, '/public/images/avatar/user0.png'),
('greenfield', '123', 'Green Field', 'greenfield@example.com', 'user', 1, '/public/images/avatar/user0.png'),
('redwood', '123', 'Red Wood', 'redwood@example.com', 'user', 1, '/public/images/avatar/user0.png'),
('goldenleaf', '123', 'Golden Leaf', 'goldenleaf@example.com', 'user', 1, '/public/images/avatar/user1.png'),
('silverstream', '123', 'Silver Stream', 'silverstream@example.com', 'user', 1, '/public/images/avatar/user1.png'),
('blackforest', '123', 'Black Forest', 'blackforest@example.com', 'user', 1, '/public/images/avatar/user1.png'),
('whitemountain', '123', 'White Mountain', 'whitemountain@example.com', 'user', 1, '/public/images/avatar/user1.png'),
('purplehaze', '123', 'Purple Haze', 'purplehaze@example.com', 'user', 1, '/public/images/avatar/user1.png'),
('crystalclear', '123', 'Crystal Clear', 'crystalclear@example.com', 'user', 1, '/public/images/avatar/user1.png'),
('emeraldstone', '123', 'Emerald Stone', 'emeraldstone@example.com', 'user', 1, '/public/images/avatar/user1.png'),
('rubyshine', '123', 'Ruby Shine', 'rubyshine@example.com', 'user', 1, '/public/images/avatar/user1.png'),
('amberlight', '123', 'Amber Light', 'amberlight@example.com', 'user', 1, '/public/images/avatar/user1.png');


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

('Digital Pro Cam', 19.99, 100, '/public/images/products/electronics/cameras/camera_1_1.png', 'sunnyday', 1),
('Visionary Shot', 29.99, 50, '/public/images/products/electronics/cameras/camera_2_1.png', 'sunnyday', 1),
('Elite Capture', 39.99, 150, '/public/images/products/electronics/cameras/camera_3_1.png', 'moonlight', 1),
('FocusMaster', 49.99, 70, '/public/images/products/electronics/cameras/camera_4_1.png', 'moonlight', 1),
('Precision CamX', 59.99, 200, '/public/images/products/electronics/cameras/camera_5_1.png', 'starrysky', 1),
('SnapTech Zoom', 69.99, 80, '/public/images/products/electronics/cameras/camera_6_1.png', 'starrysky', 1),
('UltraClear Cam', 79.99, 90, '/public/images/products/electronics/cameras/camera_7_1.png', 'blueocean', 1),
('StudioPro Shot', 89.99, 120, '/public/images/products/electronics/cameras/camera_8_1.png', 'blueocean', 1),
('SnapVision Prime', 99.99, 60, '/public/images/products/electronics/cameras/camera_9_1.png', 'greenfield', 1),
('ClearShot Pro', 109.99, 40, '/public/images/products/electronics/cameras/camera_10_1.png', 'greenfield', 1),

-- CellPhones (categoryID = 1)
('Zenith Mobile', 21.99, 85, '/public/images/products/electronics/cellphones/cellphone_1_1.png', 'whitemountain', 1),
('EchoPhone', 22.99, 130, '/public/images/products/electronics/cellphones/cellphone_2_1.png', 'minhcuong292', 1),
('Stellar Lite', 13.99, 160, '/public/images/products/electronics/cellphones/cellphone_3_1.png', 'purplehaze', 1),
('Quantum Pro', 33.99, 100, '/public/images/products/electronics/cellphones/cellphone_4_1.png', 'crystalclear', 1),
('Nexus Mini', 44.99, 55, '/public/images/products/electronics/cellphones/cellphone_5_1.png', 'danhhieu09', 1),
('PureCall Go', 19.49, 200, '/public/images/products/electronics/cellphones/cellphone_6_1.png', 'emeraldstone', 1),
('Fusion Talk', 9.49, 220, '/public/images/products/electronics/cellphones/cellphone_7_1.png', 'rubyshine', 1),
('Celestial Lite', 10.99, 180, '/public/images/products/electronics/cellphones/cellphone_8_1.png', 'amberlight', 1),
('SkyLink Touch', 11.49, 150, '/public/images/products/electronics/cellphones/cellphone_9_1.png', 'viethoang2004', 1),

-- Computers (categoryID = 1)
('PowerDesk Mini', 25.49, 60, '/public/images/products/electronics/computers/pc_1_1.png', 'redwood', 1),
('TurboCore PC', 22.99, 130, '/public/images/products/electronics/computers/pc_2_1.png', 'goldenleaf', 1),
('Quantum Force', 27.99, 70, '/public/images/products/electronics/computers/pc_3_1.png', 'silverstream', 1),
('NextGen Comp', 33.99, 80, '/public/images/products/electronics/computers/pc_4_1.png', 'blackforest', 1),
('CompactMaster', 43.99, 190, '/public/images/products/electronics/computers/pc_5_1.png', 'whitemountain', 1),
('FlexiTech Slim', 15.49, 40, '/public/images/products/electronics/computers/pc_6_1.png', 'minhcuong292', 1),
('Zenith Core', 29.99, 90, '/public/images/products/electronics/computers/pc_7_1.png', 'danhhieu09', 1),
('VisionBox Pro', 18.99, 200, '/public/images/products/electronics/computers/pc_8_1.png', 'viethoang2004', 1),
('SmartDesk Go', 19.99, 100, '/public/images/products/electronics/computers/pc_9_1.png', 'purplehaze', 1),
('UltraCompute Pro', 49.99, 110, '/public/images/products/electronics/computers/pc_10_1.png', 'crystalclear', 1),


-- Gaming (categoryID = 1)

('TurboPlay Console', 35.49, 95, '/public/images/products/electronics/gaming/gaming_1_1.png', 'emeraldstone', 1),
('GameBlitz', 44.99, 60, '/public/images/products/electronics/gaming/gaming_2_1.png', 'rubyshine', 1),
('XtremePad', 12.99, 170, '/public/images/products/electronics/gaming/gaming_3_1.png', 'amberlight', 1),
('PowerPlay Hub', 9.99, 190, '/public/images/products/electronics/gaming/gaming_4_1.png', 'minhcuong292', 1),
('GamerZone Lite', 24.99, 80, '/public/images/products/electronics/gaming/gaming_5_1.png', 'danhhieu09', 1),
('VictoryPad Pro', 34.99, 75, '/public/images/products/electronics/gaming/gaming_6_1.png', 'sunnyday', 1),
('ActionQuest', 29.49, 60, '/public/images/products/electronics/gaming/gaming_7_1.png', 'moonlight', 1),
('ElitePlay 360', 45.49, 100, '/public/images/products/electronics/gaming/gaming_8_1.png', 'starrysky', 1),
('VirtualPower Max', 40.99, 120, '/public/images/products/electronics/gaming/gaming_9_1.png', 'blueocean', 1),
('GigaGame Console', 41.99, 90, '/public/images/products/electronics/gaming/gaming_10_1.png', 'greenfield', 1),

-- Clothing (categoryID = 2)
('UrbanStyle Tee', 14.49, 115, '/public/images/products/clothing/cloth_1_1.png', 'sunnyday', 2),
('Trendy Fit', 22.49, 130, '/public/images/products/clothing/cloth_2_1.png', 'moonlight', 2),
('LuxeWear Polo', 47.49, 110, '/public/images/products/clothing/cloth_3_1.png', 'starrysky', 2),
('ComfortFlex', 41.99, 105, '/public/images/products/clothing/cloth_4_1.png', 'blueocean', 2),
('ChicLayer Top', 19.99, 65, '/public/images/products/clothing/cloth_5_1.png', 'greenfield', 2),
('StreetFlow Hoodie', 28.99, 95, '/public/images/products/clothing/cloth_6_1.png', 'redwood', 2),
('RetroBlend', 35.99, 75, '/public/images/products/clothing/cloth_7_1.png', 'goldenleaf', 2),
('SmartFit Vest', 30.49, 85, '/public/images/products/clothing/cloth_8_1.png', 'silverstream', 2),
('ClassicComfort', 33.99, 90, '/public/images/products/clothing/cloth_9_1.png', 'blackforest', 2),
('StyleHub Jacket', 46.49, 125, '/public/images/products/clothing/cloth_10_1.png', 'whitemountain', 2),

-- Jewelry (categoryID = 8)
('RoyalGem Ring', 44.99, 125, '/public/images/products/jewelry/jewelry_1_1.png', 'sunnyday', 8),
('ClassicCharm', 42.99, 90, '/public/images/products/jewelry/jewelry_2_1.png', 'moonlight', 8),
('LuxeGold Bracelet', 29.99, 100, '/public/images/products/jewelry/jewelry_3_1.png', 'starrysky', 8),
('Diamond Essence', 19.99, 105, '/public/images/products/jewelry/jewelry_4_1.png', 'blueocean', 8),
('PureSapphire', 39.99, 85, '/public/images/products/jewelry/jewelry_5_1.png', 'greenfield', 8),
('OpalHeart Necklace', 41.49, 120, '/public/images/products/jewelry/jewelry_6_1.png', 'redwood', 8),
('RadiantPearl', 24.49, 95, '/public/images/products/jewelry/jewelry_7_1.png', 'goldenleaf', 8),
('GoldGlow Earrings', 20.99, 75, '/public/images/products/jewelry/jewelry_8_1.png', 'silverstream', 8),
('Crystal Aura', 36.49, 105, '/public/images/products/jewelry/jewelry_9_1.png', 'blackforest', 8),
('Prestige Jewel', 28.99, 90, '/public/images/products/jewelry/jewelry_10_1.png', 'whitemountain', 8),


-- Sports (categoryID = 6)

('PowerMove Shoes', 23.49, 80, '/public/images/products/sports/sport_1_1.png', 'sunnyday', 6),
('FlexiGrip Gloves', 31.99, 125, '/public/images/products/sports/sport_2_1.png', 'moonlight', 6),
('SportsForce Jacket', 39.99, 85, '/public/images/products/sports/sport_3_1.png', 'starrysky', 6),
('EnduraFit Pants', 48.49, 105, '/public/images/products/sports/sport_4_1.png', 'blueocean', 6),
('PureAthlete', 37.99, 110, '/public/images/products/sports/sport_5_1.png', 'greenfield', 6),
('ProMove Top', 26.49, 100, '/public/images/products/sports/sport_6_1.png', 'redwood', 6),
('ActionStrike', 22.49, 95, '/public/images/products/sports/sport_7_1.png', 'goldenleaf', 6),
('FlexStride Shoes', 19.99, 75, '/public/images/products/sports/sport_8_1.png', 'silverstream', 6),
('Performance Tee', 44.49, 120, '/public/images/products/sports/sport_9_1.png', 'blackforest', 6),
('EliteGame Cap', 29.49, 130, '/public/images/products/sports/sport_10_1.png', 'whitemountain', 6),

-- Toys (categoryID = 5)
('RoboBuddy', 19.99, 95, '/public/images/products/toys/toy_1_1.png', 'sunnyday', 5),
('Adventure Truck', 24.99, 80, '/public/images/products/toys/toy_2_1.png', 'moonlight', 5),
('PowerPlane', 26.99, 100, '/public/images/products/toys/toy_3_1.png', 'starrysky', 5),
('StarRocket', 31.99, 125, '/public/images/products/toys/toy_4_1.png', 'blueocean', 5),
('DinoQuest', 38.49, 120, '/public/images/products/toys/toy_5_1.png', 'greenfield', 5),

-- Beauty (categoryID = 7)
('GlowNectar Serum', 19.99, 95, '/public/images/products/beauty/beauty_1_1.png', 'sunnyday', 7),
('SilkTouch Cream', 14.49, 80, '/public/images/products/beauty/beauty_1_2.png', 'moonlight', 7),
('PureBliss Lotion', 26.75, 100, '/public/images/products/beauty/beauty_1_3.png', 'starrysky', 7),
('LuxeSkin Mist', 41.22, 100, '/public/images/products/beauty/beauty_14_2.png', 'starrysky', 7),
('VitalEssence Oil', 10.33, 100, '/public/images/products/beauty/beauty_2_1.png', 'blueocean', 7),
('BeautyGlow Oil', 35.67, 100, '/public/images/products/beauty/beauty_3_1.png', 'greenfield', 7),
('FreshRadiance Gel', 23.49, 100, '/public/images/products/beauty/beauty_3_2.png', 'redwood', 7),
('YouthBoost Serum', 12.88, 100, '/public/images/products/beauty/beauty_4_1.png', 'blackforest', 7),
('VelvetBlush Cream', 49.11, 100, '/public/images/products/beauty/beauty_4_2.png', 'blueocean', 7),
('PureEssence Gel', 15.92, 100, '/public/images/products/beauty/beauty_5_1.png', 'moonlight', 7),
('SilkGlow Lotion', 8.77, 100, '/public/images/products/beauty/beauty_5_2.png', 'sunnyday', 7),
('Revitalizer Cream', 25.39, 100, '/public/images/products/beauty/beauty_6_1.png', 'greenfield', 7),
('RadiantMist Spray', 47.66, 100, '/public/images/products/beauty/beauty_6_2.png', 'moonlight', 7),
('SmoothSilk Serum', 33.41, 100, '/public/images/products/beauty/beauty_7_1.png', 'redwood', 7),

-- Book (categoryID = 4)

('Mystical Realms', 19.99, 95, '/public/images/products/books/book_1_1.png', 'sunnyday', 4),
('Quest for Knowledge', 14.49, 80, '/public/images/products/books/book_2_1.png', 'moonlight', 4),
('The World Unveiled', 26.75, 100, '/public/images/products/books/book_3_1.png', 'starrysky', 4),
('Science of Today', 41.22, 100, '/public/images/products/books/book_3_2.png', 'starrysky', 4),
('Endless Stories', 10.33, 100, '/public/images/products/books/book_4_1.png', 'blueocean', 4),
('Ancient Chronicles', 35.67, 100, '/public/images/products/books/book_4_2.png', 'greenfield', 4),
('Modern Adventures', 23.49, 100, '/public/images/products/books/book_5_1.png', 'redwood', 4),
('Knowledge Quest', 12.88, 100, '/public/images/products/books/book_5_2.png', 'blackforest', 4),
('Literary Voyage', 49.11, 100, '/public/images/products/books/book_6_1.png', 'blueocean', 4),
('Fantasy Kingdom', 15.92, 100, '/public/images/products/books/book_7_1.png', 'moonlight', 4),
('Legends of the Past', 8.77, 100, '/public/images/products/books/book_8_1.png', 'sunnyday', 4),
('Tales Beyond Time', 25.39, 100, '/public/images/products/books/book_9_1.png', 'greenfield', 4),
('Journeys Unknown', 47.66, 100, '/public/images/products/books/book_10_1.png', 'moonlight', 4),
('Exploring Horizons', 33.41, 100, '/public/images/products/books/book_11_1.png', 'redwood', 4),
('Wonders of Science', 18.52, 100, '/public/images/products/books/book_12_1.png', 'moonlight', 4),
('Hidden Realities', 9.88, 100, '/public/images/products/books/book_13_1.png', 'redwood', 4),
('Into the Future', 27.33, 100, '/public/images/products/books/book_14_1.png', 'silverstream', 4),
('Paths of Discovery', 45.29, 100, '/public/images/products/books/book_15_1.png', 'redwood', 4),
('Whispers of Nature', 13.22, 100, '/public/images/products/books/book_16_1.png', 'greenfield', 4),
('Chronicles of Wisdom', 30.47, 100, '/public/images/products/books/book_17_1.png', 'starrysky', 4),
('Beyond the Stars', 11.58, 100, '/public/images/products/books/book_18_1.png', 'greenfield', 4),
('Eternal Adventures', 50.23, 100, '/public/images/products/books/book_19_1.png', 'silverstream', 4),
('Discovering Earth', 21.45, 100, '/public/images/products/books/book_20_1.png', 'redwood', 4),
('Oceans of Knowledge', 16.87, 100, '/public/images/products/books/book_21_2.png', 'goldenleaf', 4),


-- TV (categoryID = 1)

('VisionMax 4K', 19.99, 100, '/public/images/products/electronics/tv/tv_1_1.png', 'sunnyday', 1),
('UltraView HD', 29.99, 50, '/public/images/products/electronics/tv/tv_1_2.png', 'sunnyday', 1),
('StreamLine Pro', 39.99, 150, '/public/images/products/electronics/tv/tv_1_3.png', 'moonlight', 1),
('PureScreen TV', 49.99, 70, '/public/images/products/electronics/tv/tv_1_4.png', 'moonlight', 1),
('ClarityX', 59.99, 200, '/public/images/products/electronics/tv/tv_1_5.png', 'starrysky', 1),
('PowerPix OLED', 69.99, 80, '/public/images/products/electronics/tv/tv_2_1.png', 'starrysky', 1),
('DreamView', 79.99, 90, '/public/images/products/electronics/tv/tv_2_2.png', 'blueocean', 1),
('CrystalEdge', 89.99, 120, '/public/images/products/electronics/tv/tv_2_3.png', 'blueocean', 1),
('UltraBright', 99.99, 60, '/public/images/products/electronics/tv/tv_2_4.png', 'greenfield', 1),
('StreamBox LED', 109.99, 40, '/public/images/products/electronics/tv/tv_2_5.png', 'greenfield', 1),


-- Home & Kitchen (categoryID = 3)

('EcoChef Blender', 19.99, 95, '/public/images/products/home&kitchen/stuff_1_1.png', 'sunnyday', 3),
('PureBrew Kettle', 14.49, 80, '/public/images/products/home&kitchen/stuff_1_2.png', 'moonlight', 3),
('AromaSense Diffuser', 26.75, 100, '/public/images/products/home&kitchen/stuff_2_2.png', 'starrysky', 3),
('FreshPress Juicer', 41.22, 100, '/public/images/products/home&kitchen/stuff_2_3.png', 'starrysky', 3),
('Gourmet Griller', 10.33, 100, '/public/images/products/home&kitchen/stuff_2_1.png', 'blueocean', 3),
('SoftGlide Iron', 35.67, 100, '/public/images/products/home&kitchen/stuff_3_1.png', 'greenfield', 3),
('CleanWave Vacuum', 23.49, 100, '/public/images/products/home&kitchen/stuff_3_2.png', 'redwood', 3),
('AquaPure Pitcher', 12.88, 100, '/public/images/products/home&kitchen/stuff_4_1.png', 'blackforest', 3),
('UltraClean Mop', 49.11, 100, '/public/images/products/home&kitchen/stuff_4_2.png', 'blueocean', 3),
('SpiceRack Organizer', 15.92, 100, '/public/images/products/home&kitchen/stuff_5_1.png', 'moonlight', 3),
('SmartSeal Containers', 8.77, 100, '/public/images/products/home&kitchen/stuff_5_2.png', 'sunnyday', 3),
('FreshAir Purifier', 25.39, 100, '/public/images/products/home&kitchen/stuff_6_1.png', 'greenfield', 3),
('SteelChef Cookware', 47.66, 100, '/public/images/products/home&kitchen/stuff_6_2.png', 'moonlight', 3),
('PureWater Dispenser', 33.41, 100, '/public/images/products/home&kitchen/stuff_7_1.png', 'redwood', 3),
('CleanShine Wipes', 18.52, 100, '/public/images/products/home&kitchen/stuff_7_2.png', 'moonlight', 3),
('BreezeFan', 9.88, 100, '/public/images/products/home&kitchen/stuff_8_1.png', 'redwood', 3),
('EcoChill Mini Fridge', 27.33, 100, '/public/images/products/home&kitchen/stuff_8_2.png', 'silverstream', 3),
('SmartWave Microwave', 45.29, 100, '/public/images/products/home&kitchen/stuff_9_1.png', 'redwood', 3),
('ProBake Oven', 13.22, 100, '/public/images/products/home&kitchen/stuff_10_1.png', 'greenfield', 3),
('PowerBlend Mixer', 30.47, 100, '/public/images/products/home&kitchen/stuff_11_1.png', 'starrysky', 3),
('ChillMate Ice Maker', 11.58, 100, '/public/images/products/home&kitchen/stuff_12_1.png', 'greenfield', 3),
('ChefPro Knife Set', 50.23, 100, '/public/images/products/home&kitchen/stuff_12_2.png', 'silverstream', 3),
('AquaClear Filter', 21.45, 100, '/public/images/products/home&kitchen/stuff_13_1.png', 'redwood', 3),
('VivaBlend Hand Mixer', 16.87, 100, '/public/images/products/home&kitchen/stuff_13_2.png', 'goldenleaf', 3),
('CleanMaster Broom', 7.99, 100, '/public/images/products/home&kitchen/stuff_14_1.png', 'goldenleaf', 3),
('QuickDry Towels', 7.99, 100, '/public/images/products/home&kitchen/stuff_14_2.png', 'goldenleaf', 3),
('SmartCook Scale', 7.99, 100, '/public/images/products/home&kitchen/stuff_12_2.png', 'goldenleaf', 3),
('PureFresh Filter', 7.99, 100, '/public/images/products/home&kitchen/stuff_9_2.png', 'goldenleaf', 3),
('GlassWave Oven', 7.99, 100, '/public/images/products/home&kitchen/stuff_10_2.png', 'goldenleaf', 3),
('EcoHeat Kettle', 7.99, 100, '/public/images/products/home&kitchen/stuff_6_3.png', 'goldenleaf', 3);

-- Insert data into [Order] table (5 orders)
INSERT INTO [Orders] (Total, Buyer, Seller, [Status])
VALUES 
(585.4, 'sunnyday', 'minhcuong292', 'completed'), 
(533.87, 'moonlight', 'danhhieu09', 'shipped'),   
(630.36, 'starrysky', 'viethoang2004', 'completed'),  
(290.91, 'blueocean', 'greenfield', 'completed'),  
(256.91, 'greenfield', 'moonlight', 'processing'),  
(389.40, 'redwood', 'danhhieu09', 'completed'),   
(480.89, 'goldenleaf', 'whitemountain', 'shipped'), 
(597.87, 'blackforest', 'starrysky', 'completed'); 

-- Insert data into OrderDetail table (5 products per order for each buyer)
INSERT INTO OrderDetail (ID_Product, ID_Order, Quantity)
VALUES 
-- Order 1 (sunnyday)
(1, 1, 2),
(2, 1, 1),
(6, 1, 1),
(10, 1, 3),
(15, 1, 2),
(20, 1, 1),

-- Order 2 (moonlight)
(3, 2, 1),
(4, 2, 2),
(7, 2, 3),
(12, 2, 1),
(17, 2, 2),
(22, 2, 4),

-- Order 3 (starrysky)
(5, 3, 5),
(8, 3, 2),
(14, 3, 1),
(18, 3, 3),
(23, 3, 2),
(25, 3, 1),

-- Order 4 (blueocean)
(30, 4, 2),
(31, 4, 1),
(35, 4, 3),
(38, 4, 1),
(40, 4, 2),

-- Order 5 (greenfield)
(12, 5, 1),
(14, 5, 2),
(18, 5, 1),
(23, 5, 4),
(27, 5, 1),

-- Order 6 (redwood)
(5, 6, 3),
(8, 6, 1),
(16, 6, 2),
(19, 6, 1),
(21, 6, 3),

-- Order 7 (goldenleaf)
(9, 7, 2),
(11, 7, 3),
(15, 7, 1),
(26, 7, 4),
(29, 7, 1),

-- Order 8 (blackforest)
(6, 8, 5),
(7, 8, 2),
(13, 8, 3),
(28, 8, 1),
(32, 8, 2);


-- Insert data into Feedback table (40 feedbacks, 15 users, and both users and admins as sellers)
INSERT INTO Feedbacks (Content, [Type], Buyer, Seller)
VALUES 
('Absolutely loved this product! It was even better than I expected and arrived so quickly. Thanks for an awesome experience!', 'positive',  'sunnyday', 'minhcuong292'),
('I had high hopes, but this didn’t live up to them. The quality was way below what I expected. Kind of a letdown.', 'negative',  'moonlight', 'starrysky'),
('For the price, this was a solid buy. It’s practical and does the job well. Happy with my purchase!', 'positive',  'starrysky', 'blueocean'),
('Honestly, the quality was just terrible. Not sure what went wrong, but I’m pretty disappointed.', 'negative',  'blueocean', 'minhcuong292'),
('Really happy with this purchase! The product is exactly what I was looking for, and the seller was super helpful.', 'positive',  'greenfield', 'redwood'),
('I wouldn’t buy this again. It’s not worth the price, and it didn’t work as advertised. Disappointed.', 'negative',  'redwood', 'danhhieu09'),
('Got my order really fast, which was a nice surprise. Everything was packaged well, too. Great experience overall!', 'positive',  'goldenleaf', 'silverstream'),
('Not impressed with the customer service here. Tried to get help, but it was such a struggle. Won’t be back.', 'negative',  'silverstream', 'minhcuong292'),
('Love this! It’s exactly as described and works perfectly. I’ll definitely recommend this seller.', 'positive',  'blackforest', 'whitemountain'),
('Sadly, the item was damaged when it arrived. Had to go through the hassle of a return, which wasn’t fun.', 'negative',  'whitemountain', 'danhhieu09'),
('Such a great deal! I feel like I got more than I paid for. Really happy with my purchase and will buy again.', 'positive',  'purplehaze', 'crystalclear'),
('They sent the wrong item, and it took ages to sort it out. Not thrilled with the experience overall.', 'negative',  'crystalclear', 'viethoang2004'),
('Highly recommend! The product quality is fantastic, and I’ve already told a few friends to check it out.', 'positive',  'emeraldstone', 'rubyshine'),
('Not what I was hoping for. The whole experience felt a bit frustrating. Probably won’t shop here again.', 'negative',  'rubyshine', 'amberlight'),
('Loved everything about this purchase! Fast delivery, great product—couldn’t be happier.', 'positive',  'amberlight', 'minhcuong292'),
('My item never even arrived. Really disappointed with how this was handled. Wasted my time and money.', 'negative',  'greenfield', 'danhhieu09'),
('Five stars! Great quality and a smooth buying experience. I’ll be coming back for more.', 'positive',  'sunnyday', 'goldenleaf'),
('Honestly, not worth the money. The product didn’t hold up, and I feel like I overpaid for what I got.', 'negative',  'moonlight', 'viethoang2004'),
('Fantastic customer support! They went above and beyond to help me out. Very happy with this seller.', 'positive',  'starrysky', 'blackforest'),
('Really happy with everything here. The product works well, and I’m planning to shop again soon.', 'positive',  'blueocean', 'greenfield'),
('I had to request a refund. The item wasn’t what I expected, and customer service wasn’t very helpful.', 'negative',  'redwood', 'viethoang2004'),
('Delivery was super quick, and I couldn’t be happier with the product. Will definitely recommend!', 'positive',  'blackforest', 'whitemountain'),
('Unfortunately, I received a broken item. It was disappointing and not what I expected from this seller.', 'negative',  'goldenleaf', 'purplehaze'),
('Best purchase I’ve made in a long time! Great quality and value. Very impressed with this seller.', 'positive',  'silverstream', 'minhcuong292'),
('Not thrilled with the product. It didn’t match the description, and I was hoping for better quality.', 'negative',  'starrysky', 'greenfield'),
('Customer service was really helpful and made the whole experience easy. Will definitely come back!', 'positive',  'moonlight', 'danhhieu09'),
('The item wasn’t as described, and I felt a bit misled. Not sure I’ll be buying from here again.', 'negative',  'blueocean', 'redwood'),
('Great quality! It’s obvious this product was made well. Very happy with my purchase.', 'positive',  'greenfield', 'blackforest'),
('Love the product! Everything went smoothly, and it was worth every penny. Thank you!', 'positive',  'purplehaze', 'viethoang2004'),
('Item was missing a few parts, which was frustrating. I had to follow up a lot to get things sorted out.', 'negative',  'whitemountain', 'danhhieu09'),
('Super happy with the product! It arrived in perfect condition and is just what I wanted.', 'positive',  'goldenleaf', 'silverstream'),
('Expected better quality. It just didn’t meet my expectations for the price. Disappointed.', 'negative',  'redwood', 'minhcuong292'),
('Product arrived exactly on time, and everything was just as described. Very pleased with my order.', 'positive',  'crystalclear', 'danhhieu09'),
('The packaging was terrible, and the item was a bit damaged. Not the best experience.', 'negative',  'blackforest', 'minhcuong292'),
('Smooth transaction from start to finish! Easy to work with and the product is fantastic.', 'positive',  'emeraldstone', 'whitemountain'),
('The product didn’t match the description at all. I wish it had been clearer before I bought it.', 'negative',  'amberlight', 'crystalclear'),
('Really happy with my purchase! The product is great, and everything went smoothly.', 'positive',  'rubyshine', 'emeraldstone'),
('Will definitely buy again from this seller. Product was exactly as described. Highly recommend.', 'positive',  'sunnyday', 'viethoang2004'),
('This was the worst experience I’ve had buying online. The product was terrible, and support was lacking.', 'negative',  'silverstream', 'danhhieu09'),
('Everything went perfectly! The product is great, and the seller was wonderful to work with.', 'positive',  'moonlight', 'blackforest');


-- Insert data into Cart table (10 carts)
INSERT INTO Carts (ID_Account)
VALUES 
('sunnyday'),
('moonlight'),
('starrysky'),
('blueocean'),
('greenfield'),
('redwood'),
('goldenleaf'),
('silverstream'),
('blackforest'),
('whitemountain'),
('purplehaze'),
('crystalclear'),
('emeraldstone'),
('rubyshine'),
('amberlight');


-- Insert data into CartDetail table (linked to Cart and OrderDetail)
INSERT INTO CartDetail (ID_Cart, ID_Product, Quantity)
VALUES 
-- Cart for sunnyday (based on OrderDetail for Order ID 1)
(1, 1, 2), -- sunnyday's cart contains 2 units of Product ID 1
(1, 2, 1), -- sunnyday's cart contains 1 unit of Product ID 2
(1, 6, 1), -- sunnyday's cart contains 1 unit of Product ID 6
(1, 10, 3), -- sunnyday's cart contains 3 units of Product ID 10
(1, 15, 2), -- sunnyday's cart contains 2 units of Product ID 15
(1, 20, 1), -- sunnyday's cart contains 1 unit of Product ID 20

-- Cart for moonlight (based on OrderDetail for Order ID 2)
(2, 3, 1), -- moonlight's cart contains 1 unit of Product ID 3
(2, 4, 2), -- moonlight's cart contains 2 units of Product ID 4
(2, 7, 3), -- moonlight's cart contains 3 units of Product ID 7
(2, 12, 1), -- moonlight's cart contains 1 unit of Product ID 12
(2, 17, 2), -- moonlight's cart contains 2 units of Product ID 17
(2, 22, 4), -- moonlight's cart contains 4 units of Product ID 22

-- Cart for starrysky (based on OrderDetail for Order ID 3)
(3, 5, 5), -- starrysky's cart contains 5 units of Product ID 5
(3, 8, 2), -- starrysky's cart contains 2 units of Product ID 8
(3, 14, 1), -- starrysky's cart contains 1 unit of Product ID 14
(3, 18, 3), -- starrysky's cart contains 3 units of Product ID 18
(3, 23, 2), -- starrysky's cart contains 2 units of Product ID 23
(3, 25, 1), -- starrysky's cart contains 1 unit of Product ID 25

-- Cart for purplehaze
(11, 3, 1),
(11, 6, 1),
(11, 9, 2),
(11, 14, 1),
(11, 18, 3),

-- Cart for crystalclear
(12, 1, 1),
(12, 7, 2),
(12, 12, 3),
(12, 17, 1),
(12, 20, 4),

-- Cart for emeraldstone
(13, 5, 2),
(13, 8, 3),
(13, 10, 1),
(13, 13, 2),
(13, 15, 1),

-- Cart for rubyshine
(14, 2, 4),
(14, 4, 1),
(14, 6, 1),
(14, 11, 3),
(14, 16, 2),

-- Cart for amberlight
(15, 12, 1),
(15, 14, 2),
(15, 19, 1),
(15, 22, 3),
(15, 25, 2);
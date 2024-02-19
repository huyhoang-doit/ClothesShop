INSERT INTO Users  VALUES 
(N'admin', N'', 'admin@gmail.com', 'assets/img/users/user.jpg', 'admin', '12345', 1, 1),
(N'Phùng', N'Thành', 'thanh@gmail.com', 'assets/img/users/1.jpg','phuuthanh2003', '12345', 2, 1)

INSERT INTO Categories VALUES
(N'Áo sơ mi'),
(N'T-Shirt'),
(N'Áo khoác'),
(N'Hoodies'),
(N'Quần short'),
(N'Quần jean')

INSERT INTO Suppliers VALUES
('Adidas', 'assets/img/suppliers/1.jpg'),
('Nike', 'assets/img/suppliers/2.jpg'),
('Louis Vuitton', 'assets/img/suppliers/3.jpg'),
('Chanel', 'assets/img/suppliers/4.jpg'),
('NEM', 'assets/img/suppliers/5.jpg'),
('4MEN', 'assets/img/suppliers/6.jpg'),
('Seven AM', 'assets/img/suppliers/7.jpg')

INSERT INTO Products VALUES 
(N'ÁO KHOÁC REGULAR TECHNICAL', 6, 3, 'S,M', 20, N'Áo sơ mi khoác bằng cotton dệt chéo, có cổ, nẹp khuy liền và cầu vai phía sau. Túi ngực mở, tay dài có nẹp tay áo và măng sét cài khuy cùng vạt tròn.'
, 'assets/img/products/1-1.jpg assets/img/products/1-2.jpg', N'Trắng,Đen,Rêu' , '2021-12-01', 0.4, 5, 249.000),
(N'ÁO SƠ MI TRƠN TAY NGẮN', 2, 1, 'S,M,L,XXL', 15, N'Áo Sơ Mi Tay Ngắn Nam Cotton Form Regular đem đến item tối giản với phong cách tràn đầy năng lượng, trẻ trung. Áo được làm từ chất liệu cotton với form áo suông, không ôm vào phần cơ thể đem đến sự thoải mái, nhẹ nhàng. Thân áo suông thẳng, thân sau áo có ly tạo nên điểm nổi bật cho áo.'
, 'assets/img/products/2-1.jpg assets/img/products/2-2.jpg', N'Trắng,Đen,Xám' , '2022-02-01', 0.37, 76, 179.000),
(N'QUẦN JEANS XANH WASH LASER TÚI SAU FORM SLIM-CROPPED', 6, 6, 'S,M,L', 45, N'Một chiếc jeans xanh Wash Laser túi sau form slim-cropped 4MEN QJ092 trong tủ đồ có thể giúp các chàng trai mix được hàng chục, hàng trăm outfit khác nhau, từ thanh lịch đến bụi bặm cá tính, rồi năng động và tất nhiên luôn toát lên vẻ đẹp trẻ trung và hiện đại. Sở hữu ngay mẫu quần jeans xanh wash laser túi sau form slim-cropped 4MEN QJ092, chất vải mềm mịn và co giãn tốt sẽ rất thích hợp với ai yêu thích jeans.'
, 'assets/img/products/3-1.jpg assets/img/products/3-2.jpg', N'Xanh' , '2023-11-01', 0, 72, 545.000),
(N'ÁO HOODIE MAY ĐẮP BASIC FORM REGULAR', 7, 4, 'S,M,L', 30, N'ÁO NỈ CÓ MŨ, FORM REGULAR-FIT; NGỰC TRÁI ÁO CÓ HÌNH THÊU CHỮ SỬ DỤNG KỸ THUẬT ĐẮP VẢI CON GIỐNG SẮC NÉT ; 2 BÊN SƯỜN ÁO MAY 2 MẢNG BO ĐẢM BẢO ĐÚNG FORM DÁNG THIẾT KẾ VÀ TĂNG CẢM GIÁC THOẢI MÁI KHI MẶC; ÁP DỤNG CÔNG NGHỆ GIẶT KHÔ TRƯỚC MAY HẠN CHẾ TÌNH TRẠNG CO RÚT VẢI.'
, 'assets/img/products/4-1.jpg assets/img/products/4-2.jpg', N'Xanh đen,Trắng' , '2019-11-01', 0.31, 51, 399.000)

INSERT INTO Carts VALUES 
(1,'admin', 1),
(2,'admin', 2)

INSERT INTO WishLists VALUES 
('admin', 3),
('admin', 4)

INSERT INTO Payments VALUES 
(N'Tiền mặt'),
(N'Credit Card')

INSERT INTO Shipments VALUES 
('2024-02-10 12:30:00', 'admin', N'123 Main St', '12345'),
('2024-02-15 16:30:00', 'admin', N'456 Oak St', '67890');

INSERT INTO [Orders] VALUES 
('2024-03-10 12:30:00', 110.59, 1, 1, 'phuuthanh2003', 1),
('2024-04-20 11:19:00', 110.59, 1, 1, 'phuuthanh2003', 1),
('2024-05-19 11:30:00', 80.50, 1, 1, 'phuuthanh2003', 1),
('2024-06-10 12:30:00', 110.59, 1, 1, 'phuuthanh2003', 1),
('2024-07-20 11:19:00', 110.59, 1, 1, 'phuuthanh2003', 1),
('2024-08-19 11:30:00', 80.50, 1, 1, 'phuuthanh2003', 1),
('2024-09-10 12:30:00', 110.59, 1, 1, 'phuuthanh2003', 1),
('2024-10-20 11:19:00', 110.59, 1, 1, 'phuuthanh2003', 1),
('2024-12-19 11:30:00', 80.50, 1, 1, 'phuuthanh2003', 1),
('2023-02-10 04:30:00', 70.50, 1, 1, 'phuuthanh2003', 0),
('2023-02-10 01:50:41', 67.45, 1, 1, 'phuuthanh2003', 0),
('2022-02-10 12:10:16', 40.79, 1, 1, 'phuuthanh2003', 1),
('2021-02-10 11:03:50', 50.70, 1, 1, 'phuuthanh2003', 0),
('2024-02-10 10:15:00', 55.15, 1, 1, 'phuuthanh2003', 0),
('2023-02-10 12:30:00', 50.70, 1, 1, 'phuuthanh2003', 0),
('2020-02-10 12:30:00', 159.50, 1, 1, 'phuuthanh2003', 1),
('2019-02-14 12:30:00', 100.50, 1, 2, 'admin', 1);

INSERT INTO Wallets VALUES 
('phuuthanh2003', 1000000),
('admin', 9999999)

INSERT INTO OrderItem VALUES 
(1, 25.50, 1, 1),
(1, 25, 2, 1);

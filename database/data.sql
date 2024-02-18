INSERT INTO Users  VALUES 
(N'admin', N'', 'admin@gmail.com', 'admin', '12345', 1, 1),
(N'Phung', N'Thanh', 'thanh@gmail.com', 'phuuthanh2003', '12345', 2, 1)

INSERT INTO Category VALUES
(N'Áo sơ mi'),
(N'T-Shirt'),
(N'Áo khoác'),
(N'Hoodies'),
(N'Quần short'),
(N'Quần jean')

INSERT INTO Supplier VALUES
('Adidas'),
('Nike'),
('Louis Vuitton'),
('Chanel'),
('NEM'),
('4MEN'),
('Seven AM')

INSERT INTO Products VALUES 
(N'ÁO KHOÁC REGULAR TECHNICAL', 6, 3, 'S,M', 20, N'Áo sơ mi khoác bằng cotton dệt chéo, có cổ, nẹp khuy liền và cầu vai phía sau. Túi ngực mở, tay dài có nẹp tay áo và măng sét cài khuy cùng vạt tròn.'
, 'assets/img/products/1-1.jpg assets/img/products/1-2.jpg', N'Trắng,Đen,Rêu' , '2021-12-01', 0.4, 5, 249.000),
(N'ÁO SƠ MI TRƠN TAY NGẮN', 2, 1, 'S,M,L,XXL', 15, N'Áo Sơ Mi Tay Ngắn Nam Cotton Form Regular đem đến item tối giản với phong cách tràn đầy năng lượng, trẻ trung. Áo được làm từ chất liệu cotton với form áo suông, không ôm vào phần cơ thể đem đến sự thoải mái, nhẹ nhàng. Thân áo suông thẳng, thân sau áo có ly tạo nên điểm nổi bật cho áo.'
, 'assets/img/products/2-1.jpg assets/img/products/2-2.jpg', N'Trắng,Đen,Xám' , '2022-02-01', 0.37, 76, 179.000),
(N'QUẦN JEANS XANH WASH LASER TÚI SAU FORM SLIM-CROPPED', 6, 6, 'S,M,L', 45, N'Một chiếc jeans xanh Wash Laser túi sau form slim-cropped 4MEN QJ092 trong tủ đồ có thể giúp các chàng trai mix được hàng chục, hàng trăm outfit khác nhau, từ thanh lịch đến bụi bặm cá tính, rồi năng động và tất nhiên luôn toát lên vẻ đẹp trẻ trung và hiện đại. Sở hữu ngay mẫu quần jeans xanh wash laser túi sau form slim-cropped 4MEN QJ092, chất vải mềm mịn và co giãn tốt sẽ rất thích hợp với ai yêu thích jeans.'
, 'assets/img/products/3-1.jpg assets/img/products/3-2.jpg', N'Xanh' , '2023-11-01', 0, 72, 545.000),
(N'ÁO HOODIE MAY ĐẮP BASIC FORM REGULAR', 7, 4, 'S,M,L', 30, N'ÁO NỈ CÓ MŨ, FORM REGULAR-FIT; NGỰC TRÁI ÁO CÓ HÌNH THÊU CHỮ SỬ DỤNG KỸ THUẬT ĐẮP VẢI CON GIỐNG SẮC NÉT ; 2 BÊN SƯỜN ÁO MAY 2 MẢNG BO ĐẢM BẢO ĐÚNG FORM DÁNG THIẾT KẾ VÀ TĂNG CẢM GIÁC THOẢI MÁI KHI MẶC; ÁP DỤNG CÔNG NGHỆ GIẶT KHÔ TRƯỚC MAY HẠN CHẾ TÌNH TRẠNG CO RÚT VẢI.'
, 'assets/img/products/4-1.jpg assets/img/products/4-2.jpg', N'Xanh đen,Trắng' , '2019-11-01', 0.31, 51, 399.000)

INSERT INTO Cart VALUES 
(1,'admin', 1),
(2,'admin', 2)

INSERT INTO WishList VALUES 
('admin', 3),
('admin', 4)

INSERT INTO Payment VALUES 
(N'Tiền mặt'),
(N'Credit Card')

INSERT INTO Shipment VALUES 
('2024-02-10 12:30:00', 'admin', N'123 Main St', '12345'),
('2024-02-15 16:30:00', 'admin', N'456 Oak St', '67890');


INSERT INTO [Order] VALUES 
('2024-02-10 12:30:00', 60.50, 1, 1, 'phuuthanh2003', 1),
('2023-02-14 12:30:00', 500.50, 1, 2, 'phuuthanh2003', 1),
('2022-02-10 12:30:00', 80.16, 1, 1, 'phuuthanh2003', 1),
('2021-02-14 12:30:00', 112.50, 1, 2, 'phuuthanh2003', 1),
('2020-02-10 12:30:00', 150.56, 1, 1, 'phuuthanh2003', 1),
('2019-02-14 12:30:00', 170.51, 1, 2, 'phuuthanh2003', 0),
('2024-02-10 12:30:00', 50.50, 1, 1, 'admin', 1),
('2024-02-14 12:30:00', 100.50, 1, 2, 'admin', 1);

INSERT INTO Wallets VALUES 
('phuuthanh2003', 1000000),
('admin', 9999999)

INSERT INTO OrderItem VALUES 
(1, 25.50, 1, 1),
(1, 25, 2, 1);

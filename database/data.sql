INSERT INTO Users  VALUES
(N'Jung', N'Kim', 'user@gmail.com', 'assets/img/users/user.jpg','user1', '12345', N'Ha Noi', '0981347469', 2, 0),
(N'admin', N'', 'admin@gmail.com', 'assets/img/users/user.jpg', 'admin', '12345', N'Quận 9', '0981347469', 1, 1),
(N'Phùng', N'Thành', 'thanh@gmail.com', 'assets/img/users/1.jpg','phuuthanh2003', '12345', N'60 Nguyễn Văn Trỗi, Phường 2, TP.Bảo Lộc', '0707064154', 1, 1),
(N'Bé', N'Moon', 'Moon123@gmail.com', 'assets/img/users/1.jpg','user2', '12345', N'13 Hoàng Hữu Nam, Phường 2, TP.Bảo Lộc', '06868686868', 2, 1),
(N'Phung', N'Huu Thanh', 'thanhphse170345@fpt.edu.vn', 'https://lh3.googleusercontent.com/a/ACg8ocLr-hUF3FDFfLGwVsXKxgXBIQ1trDWhb0DY2qaJhcJQTLo=s96-c', 'thanhphse170345@fpt.edu.vn', '1234', N'', '', 1, 1),
(N'Huy', N'Hoang', 'lvhhoangg171@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocJTlRpCgDDh0FK2ypPcy9FgD3xUrHXPIeH1zNrtA8X64A=s96-c', 'lvhhoangg171@gmail.com', '12345', N'', '', 1, 1)

INSERT INTO Types VALUES
(N'Áo'),
(N'Quần'),
(N'Phụ kiện');

INSERT INTO Categories VALUES
(N'Áo sơ mi',1),
(N'T-Shirt',1),
(N'Sweatshirt',1),
(N'Áo khoác',1),
(N'Hoodies',1),
(N'Quần short',2),
(N'Quần thun',2),
(N'Quần jean',2),
(N'Áo Polo',1),
(N'Mũ',3),
(N'Balo',3),
(N'Giày',3)


INSERT INTO Suppliers VALUES
('Adidas', 'assets/img/suppliers/1.jpg'),
('Nike', 'assets/img/suppliers/2.jpg'),
('Louis Vuitton', 'assets/img/suppliers/3.jpg'),
('Channel', 'assets/img/suppliers/4.jpg'),
('BoBui', 'assets/img/suppliers/5.jpg'),
('4MEN', 'assets/img/suppliers/6.jpg')



INSERT INTO Products VALUES 
(N'ÁO KHOÁC REGULAR TECHNICAL', 6, 3, 'S,M', 5, N'Áo sơ mi khoác bằng cotton dệt chéo, có cổ, nẹp khuy liền và cầu vai phía sau. Túi ngực mở, tay dài có nẹp tay áo và măng sét cài khuy cùng vạt tròn.'
, 'assets/img/products/1-1.jpg assets/img/products/1-2.jpg', N'Đen' , '2021-12-01', 0.4, 5, 249.000,1, 1),
(N'ÁO SƠ MI TRƠN TAY NGẮN', 2, 1, 'S,M,L,XXL', 15, N'Áo Sơ Mi Tay Ngắn Nam Cotton Form Regular đem đến item tối giản với phong cách tràn đầy năng lượng, trẻ trung. Áo được làm từ chất liệu cotton với form áo suông, không ôm vào phần cơ thể đem đến sự thoải mái, nhẹ nhàng. Thân áo suông thẳng, thân sau áo có ly tạo nên điểm nổi bật cho áo.'
, 'assets/img/products/2-1.jpg assets/img/products/2-2.jpg', N'Trắng,Đen,Xám' , '2022-02-01', 0.37, 76, 179.000,1,1),
(N'QUẦN JEANS XANH WASH LASER TÚI SAU FORM SLIM-CROPPED', 6, 8, 'S,M,L', 45, N'Một chiếc jeans xanh Wash Laser túi sau form slim-cropped 4MEN QJ092 trong tủ đồ có thể giúp các chàng trai mix được hàng chục, hàng trăm outfit khác nhau, từ thanh lịch đến bụi bặm cá tính, rồi năng động và tất nhiên luôn toát lên vẻ đẹp trẻ trung và hiện đại. Sở hữu ngay mẫu quần jeans xanh wash laser túi sau form slim-cropped 4MEN QJ092, chất vải mềm mịn và co giãn tốt sẽ rất thích hợp với ai yêu thích jeans.'
, 'assets/img/products/3-1.jpg assets/img/products/3-2.jpg', N'Xanh dương' , '2023-11-01', 0, 72, 545.000,1,2),
(N'ÁO HOODIE MAY ĐẮP BASIC FORM REGULAR', 5, 4, 'S,M,L', 30, N'Áo nỉ có mũ, form Regular-Fit; Ngực trái áo có hình thêu chữ sử dụng kỹ thuật đắp vải con giống sắc nét ; 2 bên sườn áO may 2 mảng BO đảm bảo đúng form dáng thiết kế và tăng cảm giác thoải mái khi mặc; Áp dụng công nghệ giặt khô trước may hạn chế tình trạng co rút vải.'
, 'assets/img/products/4-1.jpg assets/img/products/4-2.jpg', N'Xanh dương' , '2019-11-01', 0.31, 51, 399.000,1,1),
(N'ÁO THUN RÃ PHỐI IN HOME IS FORM REGULAR', 6, 2, 'S,M,L', 30, N'Thiết kế áo thun nam basic, cổ tròn form regular tay ngắn trẻ trung, hiện đại. Áo thun nam phối kẻ ngang nam tính, phong cách hiện đại.'
, 'assets/img/products/5-1.jpg assets/img/products/5-2.jpg', N'Nâu' , '2019-11-01', 0.17, 21, 315.000,1,1),
(N'ÁO SWEATSHIRT BIG LOGO ADIDAS', 1, 3, 'S,M,L,XL', 10, N'Bất kể bạn chuẩn bị tập luyện buổi sáng hay nghỉ ngơi sau một ngày dài, đã có chiếc áo sweatshirt adidas này đồng hành cùng bạn. Chất liệu vải thun da cá siêu dễ chịu cùng cổ tay và gấu áo bo gân giúp bạn luôn thoải mái và duy trì nhiệt độ hoàn hảo trong mọi hoạt động. Hãy diện chiếc áo này và sẵn sàng cho tất cả.'
, 'assets/img/products/6-1.jpg assets/img/products/6-2.jpg', N'Xám,Trắng' , '2022-11-01', 0.15, 11, 875.000,1,1),
(N'ÁO BÓNG ĐÁ NIKE LFC M NK SSL SWOOSH TEE NAM DZ3613-010', 2, 2, 'M,L', 30, N'Chất liệu cotton mềm, nhẹ. In đồ họa tương phản với mặt trước. Cổ thuyền với tay áo ngắn. In thương hiệu logo swoosh của Nike.'
, 'assets/img/products/7-1.jpg assets/img/products/7-2.jpg', N'Đen' , '2022-11-01', 0., 21, 699.000,1,1),
(N'QUẦN JOGGER THUN RÃ PHỐI FORM REGULAR', 3, 7, 'S,M,L,XL', 30, N'Với xu hướng bùng nổ thời trang thể thao và thời trang đường phố hiện nay thì với Quần Jogger Nam – đại diện cho phong cách Street Style ngày càng được ưa chuộng. Đặc biệt, để phù hợp cho môi trường đi làm thì Kaki là chất liệu được đánh giá là lịch sự và trang trọng hơn hẳn chất liệu thun hay nỉ. Vì vậy mà bạn có thể tự tin diện Quần Jogger Kaki vừa để đi làm vừa để đi chơi.'
, 'assets/img/products/8-1.jpg assets/img/products/8-2.jpg', N'Vàng' , '2024-09-01', 0.34, 31, 425.000,1,2),
(N'ÁO KHOÁC GOLF ADIDAS HYBRID-SPACER', 1, 4, 'S,M,L', 30, N'Bắt đầu buổi chơi trong phong cách thanh thoát với chiếc áo khoác golf adidas này. Cấu trúc hybrid kết hợp hai lớp vải được bố trí hợp lý để giữ ấm, cùng độ co giãn tăng cường tại những vị trí cần thiết nhất để bạn vận động tối ưu trên sân golf. Các túi giúp giữ ấm đôi tay giữa những cú đánh và cất các vật dụng nhỏ khi chơi.'
, 'assets/img/products/9-1.jpg assets/img/products/9-2.jpg', N'Đen, Nâu' , '2024-11-01', 0.41, 51, 2660.000,1,1),
(N'ÁO BÓNG ĐÁ NIKE AS M NK DF FC LIBERO HOODIE', 2, 5, 'S,M,L,XL', 20, N'Áo bóng đá nike AS M NK DF FC LIBERO HOODIE nam DC9076-010'
, 'assets/img/products/10-1.jpg assets/img/products/10-2.jpg', N'Đen' , '2022-12-01', 0, 5, 1053.000,1,1),
(N'TRAVIS SCOTT CACT.US CORP X NIKE U NRG BH LONG SLEEVE T', 2, 1, 'S', 15, N'Hoạt động trong nhà/ ngoài trời.'
, 'assets/img/products/11-1.jpg assets/img/products/11-2.jpg', N'Đen' , '2024-02-01', 0.37, 76, 1100.000,1,1),
(N'ÁO THUN OVERSIZED *RETRO 9AS*', 5, 2, 'S,M,L', 45, N'100% COTTON, 320GSM, IN LỤA THỦ CÔNG, OVERSIZED FIT'
, 'assets/img/products/12-1.jpg assets/img/products/12-2.jpg', N'Trắng' , '2024-11-01', 0, 72, 555.000,1,1),
(N'QUẦN JEANS THIÊN THẦN PHUN SƠN', 5, 8, 'S,M,L', 30, N'VẢI CHÍNH: 100% SỢI BÔNG – COTTON, MẪU CAO 1M76 68KG MẶC SIZE 32'
, 'assets/img/products/13-1.jpg assets/img/products/13-2.jpg', N'Xanh dương' , '2019-11-01', 0.31, 51, 325.000,1,2),
(N'ÁO ĐẤU SÂN NHÀ MANCHESTER UNITED', 2, 2, 'M', 30, N'Chiếc áo đấu này hình thành mối liên kết vững chắc với sức ảnh hưởng lâu bền của Manchester trên toàn cầu. Vay mượn các yếu tố thiết kế từ một cây cầu gần thời Cách mạng công nghiệp, mặt trước áo phủ họa tiết hình học lấy cảm hứng từ Hoa Hồng Lancashire. Công nghệ AEROREADY đánh bay mồ hôi và các chi tiết đội tuyển siêu nhẹ phù hợp với sân cỏ — bất kể bạn chuẩn bị thi đấu quốc tế hay đá giao hữu đội hình sân 5.'
, 'assets/img/products/14-1.jpg assets/img/products/14-2.jpg', N'Đỏ' , '2024-11-01', 0.17, 21, 2200.000,1,1),
(N'ÁO THUN NAM THỂ THAO Z.N.E', 1, 2, 'S,M,L', 10, N'Với sự cung cấp năng lượng tích cực, chiếc áo thun adidas này được thiết kế để giúp bạn cảm thấy tốt nhất. Được làm từ chất liệu mềm mại và cắt dáng rộng rãi, nó giúp bạn tách biệt khỏi những lo lắng hàng ngày và nạp năng lượng lại. Kết hợp với quần short len hoặc quần jogger để có sự thoải mái từ đầu đến chân và tạo cảm giác bình yên. Bằng cách lựa chọn vật liệu tái chế, chúng tôi có thể tái sử dụng các vật liệu đã được tạo ra, giúp giảm thiểu lượng rác thải. Các lựa chọn vật liệu tái tạo sẽ giúp chúng tôi loại bỏ sự phụ thuộc của chúng tôi vào các nguồn tài nguyên hữu hạn. Các sản phẩm của chúng tôi được làm từ một hợp chất của các vật liệu tái chế và tái tạo có ít nhất 70% tổng số của các vật liệu này.'
, 'assets/img/products/15-1.jpg assets/img/products/15-2.jpg', N'Vàng' , '2022-11-01', 0.2, 12, 950.000,1,1),
(N'QUẦN SHORT JEANS ĐEN TÚI CHÉO WASH BẠC', 6, 6, 'M,L', 30, N'Phong cách: thể thao, Hàn Quốc, đường phố'
, 'assets/img/products/16-1.jpg assets/img/products/16-2.jpg', N'Đen' , '2022-11-01', 0., 21, 415.000,1,2),
(N'QUẦN SHORTS THỂ THAO 3 SỌC', 2, 6, 'S,M,L,XL', 30, N'Không gì có thể khiến bạn phân tâm khỏi thực tại khi bạn đang diện chiếc quần short adidas này. Mềm mại và siêu nhẹ, đôi chân bạn sẽ được bao bọc trong sự thoải mái, còn 3 Sọc biểu tượng tạo điểm nhấn tinh tế. Là lựa chọn hoàn hảo để dạo phố ban ngày cũng như ngắm sao về đêm, chiếc quần short này sẽ đồng hành cùng bạn từ lúc bắt đầu cho đến sau đó, sau đó, sau đó nữa...'
, 'assets/img/products/17-1.jpg assets/img/products/17-2.jpg', N'Đen' , '2024-09-01', 0.5, 61, 1050.000,1,2),
(N'ÁO THUN RAGLAN IN NGỰC BO CỔ DỆT ', 2, 2, 'S,L', 30, N'Phong cách: thể thao, Hàn Quốc, đường phố, công sở'
, 'assets/img/products/18-1.jpg assets/img/products/18-2.jpg', N'Đỏ' , '2022-11-01', 0.41, 51, 412.000,1,1),
(N'ÁO POLO CỔ V PHỐI IN HỌA TIẾT', 6, 9, 'S,M,L', 30, N'Phong cách: cơ bản, đường phố, Hàn Quốc.'
, 'assets/img/products/19-1.jpg assets/img/products/19-2.jpg', N'Đen' , '2024-11-01', 0.11, 11, 345.000,1,1),
(N'ÁO THUN OVERSIZED *RETRO 9AS* ', 5, 2, 'S,M,L,XL' , 30, N'Phong cách: trẻ trung, thời thượng, đường phố.'
, 'assets/img/products/20-1.jpg assets/img/products/20-2.jpg' , N'Trắng' , '2024-11-01' , 0., 81, 550.000,1,1),
(N'ÁO THUN DÀI TAY *CLOUD* ', 5, 2,'S,M,L,XL' , 30, N'Phong cách: trẻ trung, thời thượng, đường phố.'
, 'assets/img/products/21-1.jpg assets/img/products/21-2.jpg' , N'Trắng' , '2024-12-01' , 0., 81, 700.000,1,1),
(N'ÁO SƠ MI OXFORD *ANGEL* ', 1, 2,'XS,S,M,L,XL' , 30, N'Phong cách: trẻ trung, thời thượng, đường phố.'
, 'assets/img/products/22-1.jpg assets/img/products/22-2.jpg' , N'Xanh dương' , '2024-09-01' , 0., 81, 500.000,1,1),
(N'SƠ MI DÀI TAY *GLOWING HEART* ', 1, 2,'S,M,L' , 30, N'Phong cách: trẻ trung, thời thượng, đường phố.'
, 'assets/img/products/23-1.jpg assets/img/products/23-2.jpg' , N'Trắng,Đen' , '2024-03-01' , 0., 81, 650.000,1,1),
(N'ÁO KHOÁC DÙ *ANGELS* ', 4, 2,'S,M,L' , 30, N'Phong cách: trẻ trung, thời thượng, đường phố.'
, 'assets/img/products/24-1.jpg assets/img/products/24-2.jpg' , N'Xanh lá,Đen' , '2024-10-01' , 0., 81, 950.000,1,1),
(N'ÁO KHOÁC DÙ *LAST JUDGEMENT* ', 4, 2,'S,M,L' , 30, N'Phong cách: trẻ trung, thời thượng, đường phố.'
, 'assets/img/products/25-1.jpg assets/img/products/25-2.jpg' , N'Xanh lá,Đen' , '2023-02-01' , 0., 81, 1500.000,1,1),
(N'QUẦN DÀI *ANGEL BOBUI* ', 5, 2,'S' , 30, N'Phong cách: trẻ trung, thời thượng, đường phố.'
, 'assets/img/products/26-1.jpg assets/img/products/26-2.jpg' , N'Xanh lá' , '2023-03-02' , 0., 81, 700.000,1,1),
(N'QUẦN DOUBLE KNEE CANVAS WORKWEAR ', 5, 2,'S,M,L' , 30, N'Phong cách: trẻ trung, thời thượng, đường phố.'
, 'assets/img/products/27-1.jpg assets/img/products/27-2.jpg' , N'Vàng' , '2022-04-02' , 0., 81, 750.000,1,1)
--Phu kien
--...

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
('2024-03-10 12:30:00', 2241.00, 1, 1, 'phuuthanh2003', 1),
('2024-04-20 11:19:00', 5422.00, 1, 1, 'phuuthanh2003', 1),
('2018-05-19 11:30:00', 1129.00, 1, 1, 'phuuthanh2003', 1),
('2022-06-10 12:30:00', 1192.00, 1, 1, 'phuuthanh2003', 1),
('2018-07-20 11:19:00', 4396.00, 1, 1, 'phuuthanh2003', 1),
('2019-01-19 11:30:00', 2100.00, 1, 1, 'user2', 1),
('2024-01-19 11:30:00', 2200.00, 1, 1, 'user2', 1),
('2020-09-10 12:30:00', 2685.00, 1, 1, 'phuuthanh2003', 1),
('2021-10-20 11:19:00', 3250.00, 1, 1, 'phuuthanh2003', 1),
('2021-03-10 12:30:00', 114.11, 1, 1, 'user2', 1),
('2024-04-20 11:19:00', 10.59, 1, 1, 'user2', 1),
('2024-05-19 11:30:00', 80.50, 1, 1, 'phuuthanh2003', 1),
('2023-06-10 12:30:00', 41.59, 1, 1, 'phuuthanh2003', 1),
('2022-07-20 11:19:00', 160.59, 1, 1, 'user2', 1),
('2021-08-19 11:30:00', 80.50, 1, 1, 'phuuthanh2003', 1),
('2024-09-10 12:30:00', 110.59, 1, 1, 'user2', 1),
('2020-11-20 11:19:00', 110.59, 1, 1, 'phuuthanh2003', 1),
('2019-12-19 11:30:00', 80.50, 1, 1, 'user2', 1),
('2023-02-10 04:30:00', 70.50, 1, 1, 'phuuthanh2003', 0),
('2023-01-10 01:50:41', 67.45, 1, 1, 'phuuthanh2003', 0),
('2022-11-10 12:10:16', 40.79, 1, 1, 'user2', 1),
('2021-01-10 11:03:50', 50.70, 1, 1, 'phuuthanh2003', 0),
('2024-02-10 10:15:00', 55.15, 1, 1, 'phuuthanh2003', 0),
('2023-02-10 12:30:00', 50.70, 1, 1, 'phuuthanh2003', 0),
('2020-02-10 12:30:00', 159.50, 1, 1, 'phuuthanh2003', 1),
('2019-02-14 12:30:00', 100.50, 1, 2, 'admin', 1);

INSERT INTO Wallets VALUES 
('phuuthanh2003', 1000000),
('admin', 9999999)

INSERT INTO OrderItem VALUES 
(1, 249.000, 1, 1),
(8, 249.000, 1, 1),
(4, 399.0, 4, 2),
(2, 699.0, 7, 2),
(3, 179.0, 2, 2),
(4, 249.0, 1, 2),
(5, 179.0, 2, 2),
(1, 325.0, 13, 3),
(1, 950.0, 15, 3),
(1, 179.0, 2, 4),
(7, 179.0, 2, 4),
(6, 315.0, 5, 5),
(9, 179.0, 2, 5),
(5, 179.0, 2, 5),
(2, 1050.0, 17, 6),
(2, 1100.0, 11, 7),
(3, 345.0, 19, 8),
(3, 550.0, 20, 8),
(5, 650.0, 23, 9);
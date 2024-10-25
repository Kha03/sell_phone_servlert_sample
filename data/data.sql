USE [QUANLYDIENTHOAI]
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MANCC], [DIACHI], [SODIENTHOAI], [TENNHACC]) VALUES (2, N'Tan Binh', N'0921599123', N'Iphone')
INSERT [dbo].[NhaCungCap] ([MANCC], [DIACHI], [SODIENTHOAI], [TENNHACC]) VALUES (3, N'Tan Binh', N'0921599123', N'Iphone')
INSERT [dbo].[NhaCungCap] ([MANCC], [DIACHI], [SODIENTHOAI], [TENNHACC]) VALUES (6, N'Tan Binh', N'0921599123', N'SamSung')
INSERT [dbo].[NhaCungCap] ([MANCC], [DIACHI], [SODIENTHOAI], [TENNHACC]) VALUES (7, N'Tan Binh', N'0921599123', N'SamSung')
INSERT [dbo].[NhaCungCap] ([MANCC], [DIACHI], [SODIENTHOAI], [TENNHACC]) VALUES (8, N'Tan Binh', N'0921599123', N'SamSung')
INSERT [dbo].[NhaCungCap] ([MANCC], [DIACHI], [SODIENTHOAI], [TENNHACC]) VALUES (9, N'Tan Phu', N'0921599432', N'Minh Kha')
INSERT [dbo].[NhaCungCap] ([MANCC], [DIACHI], [SODIENTHOAI], [TENNHACC]) VALUES (10, N'Go Vap', N'0931599412', N'Miss Thoa')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[DIENTHOAI] ON 

INSERT [dbo].[DIENTHOAI] ([MADT], [CAUHINH], [HINHANH], [NAMSANXUAT], [TENDT], [MANCC]) VALUES (3, N'Phone: Galaxy S21, Year: 2021, Specs: 6.2" Dynamic AMOLED, CPU: Exynos 2100/Snapdragon 888, RAM: 8GB, Storage: 128GB/256GB, Battery: 4000mAh, Rear Camera: 12MP+64MP+12MP, Front Camera: 10MP, OS: Android 11, Image: galaxy_s21.jpg, Supplier: Samsung.
', N'samsung29.png', 2021, N'12', 3)
INSERT [dbo].[DIENTHOAI] ([MADT], [CAUHINH], [HINHANH], [NAMSANXUAT], [TENDT], [MANCC]) VALUES (10, N'Phone: Galaxy S21, Year: 2021, Specs: 6.2" Dynamic AMOLED, CPU: Exynos 2100/Snapdragon 888, RAM: 8GB, Storage: 128GB/256GB, Battery: 4000mAh, Rear Camera: 12MP+64MP+12MP, Front Camera: 10MP, OS: Android 11, Image: galaxy_s21.jpg, Supplier: Samsung.
', N'samsung29.png', 2022, N'iphone', 6)
INSERT [dbo].[DIENTHOAI] ([MADT], [CAUHINH], [HINHANH], [NAMSANXUAT], [TENDT], [MANCC]) VALUES (13, N'Phone: Galaxy S21, Year: 2021, Specs: 6.2" Dynamic AMOLED, CPU: Exynos 2100/Snapdragon 888, RAM: 8GB, Storage: 128GB/256GB, Battery: 4000mAh, Rear Camera: 12MP+64MP+12MP, Front Camera: 10MP, OS: Android 11, Image: galaxy_s21.jpg, Supplier: Samsung.
', N'5p0s2k.jpg', 2022, N'iphone', 6)
INSERT [dbo].[DIENTHOAI] ([MADT], [CAUHINH], [HINHANH], [NAMSANXUAT], [TENDT], [MANCC]) VALUES (14, N'Phone: Galaxy S21, Year: 2021, Specs: 6.2" Dynamic AMOLED, CPU: Exynos 2100/Snapdragon 888, RAM: 8GB, Storage: 128GB/256GB, Battery: 4000mAh, Rear Camera: 12MP+64MP+12MP, Front Camera: 10MP, OS: Android 11, Image: galaxy_s21.jpg, Supplier: Samsung.
', N'samsung20.png', 2023, N'SamSung', 7)
INSERT [dbo].[DIENTHOAI] ([MADT], [CAUHINH], [HINHANH], [NAMSANXUAT], [TENDT], [MANCC]) VALUES (15, N'Phone: Galaxy S21, Year: 2021, Specs: 6.2" Dynamic AMOLED, CPU: Exynos 2100/Snapdragon 888, RAM: 8GB, Storage: 128GB/256GB, Battery: 4000mAh, Rear Camera: 12MP+64MP+12MP, Front Camera: 10MP, OS: Android 11, Image: galaxy_s21.jpg, Supplier: Samsung.
', N'iphone15.png', 2021, N'Samsung galaxy', 6)
INSERT [dbo].[DIENTHOAI] ([MADT], [CAUHINH], [HINHANH], [NAMSANXUAT], [TENDT], [MANCC]) VALUES (16, N'2642b', N'iphone13.png', 2023, N'Realmee', 9)
INSERT [dbo].[DIENTHOAI] ([MADT], [CAUHINH], [HINHANH], [NAMSANXUAT], [TENDT], [MANCC]) VALUES (17, N'dung lu?ng m?nh', N'iphone14.png', 2018, N'SamSung', 10)
SET IDENTITY_INSERT [dbo].[DIENTHOAI] OFF
GO

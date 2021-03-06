USE [OilStore]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/2/2021 8:11:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [nvarchar](50) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[email] [nvarchar](70) NOT NULL,
	[phonenumber] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[admin] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Account__F3DBC573146EE33D] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 4/2/2021 8:11:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryID] [int] NOT NULL,
	[categoryName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 4/2/2021 8:11:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](70) NOT NULL,
	[subject] [nvarchar](100) NOT NULL,
	[message] [nvarchar](800) NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/2/2021 8:11:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](50) NULL,
	[phonenumber] [nvarchar](20) NULL,
	[email] [nvarchar](100) NULL,
	[country] [nvarchar](50) NULL,
	[address] [nvarchar](100) NULL,
	[city] [nvarchar](50) NULL,
	[postcode] [nvarchar](50) NULL,
	[message] [nvarchar](500) NULL,
	[total] [int] NULL,
 CONSTRAINT [PK__Orders__3213E83FC6B28546] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/2/2021 8:11:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[productID] [int] NOT NULL,
	[productName] [nvarchar](100) NOT NULL,
	[price] [int] NULL,
	[categoryID] [int] NOT NULL,
	[detail] [nvarchar](2000) NULL,
	[stock] [nvarchar](50) NULL,
	[img] [nvarchar](500) NULL,
 CONSTRAINT [PK__Products__2D10D14ADD38D3AD] PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Account] ([username], [fullname], [password], [email], [phonenumber], [address], [admin]) VALUES (N'admin', N'Administrator', N'123', N'admin@gmail.com', N'0397574822', N'hcm', N'y')
INSERT [dbo].[Account] ([username], [fullname], [password], [email], [phonenumber], [address], [admin]) VALUES (N'admin1', N'admin', N'123', N'211@gmail.com', N'011111', N'aa', N'y')
INSERT [dbo].[Account] ([username], [fullname], [password], [email], [phonenumber], [address], [admin]) VALUES (N'evape', N'Alkalin', N'12345', N'prj321@admin.com', N'7492384792874', N'Bac Giang', N'n')
INSERT [dbo].[Account] ([username], [fullname], [password], [email], [phonenumber], [address], [admin]) VALUES (N'hieudt', N'', N'123', N'', N'00', N'', N'n')
INSERT [dbo].[Account] ([username], [fullname], [password], [email], [phonenumber], [address], [admin]) VALUES (N'hieudt1', N'Doan Trung Hieu', N'123', N'doantrunghieu1108@gmail.com', N'0522855561', N'so 80 ngox 59 khuc thua du', N'n')
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (1, N'Aromatic Essential Oils')
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (2, N'Machine')
INSERT [dbo].[Category] ([categoryID], [categoryName]) VALUES (3, N'Lamp')
INSERT [dbo].[Contact] ([name], [email], [subject], [message]) VALUES (N'admin', N'doantrunghieu1108@gmail.com', N'aaa', N'aa')
INSERT [dbo].[Contact] ([name], [email], [subject], [message]) VALUES (N'doan trung hieu', N'doantrunghieu1108@gmail.com', N'hehe', N'Can mua lai mat bang')
INSERT [dbo].[Contact] ([name], [email], [subject], [message]) VALUES (N'hieu ', N'2@gmail.com', N'asdasd', N'asda')
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [fullname], [phonenumber], [email], [country], [address], [city], [postcode], [message], [total]) VALUES (5, N'a', N'00', N'aa', N'aa', N'aa', N'aa', N'aa', N'aa', 0)
INSERT [dbo].[Orders] ([id], [fullname], [phonenumber], [email], [country], [address], [city], [postcode], [message], [total]) VALUES (9, N'', N'', N'', N'', N'', N'', N'', N'', 0)
INSERT [dbo].[Orders] ([id], [fullname], [phonenumber], [email], [country], [address], [city], [postcode], [message], [total]) VALUES (10, N'Administrator', N'0397574822', N'admin@gmail.com', N'Viet Nam', N'Ha Noi', N'Ha Noi', N'Administrator', N'', 350000)
INSERT [dbo].[Orders] ([id], [fullname], [phonenumber], [email], [country], [address], [city], [postcode], [message], [total]) VALUES (11, N'Administrator', N'0397574822', N'admin@gmail.com', N'Viet Nam', N'Ha Noi', N'Ha Noi', N'Administrator', N'', 350000)
INSERT [dbo].[Orders] ([id], [fullname], [phonenumber], [email], [country], [address], [city], [postcode], [message], [total]) VALUES (12, N'Administrator', N'0397574822', N'admin@gmail.com', N'Viet Nam', N'Ha Noi', N'Ha Noi', N'Administrator', N'', 350000)
INSERT [dbo].[Orders] ([id], [fullname], [phonenumber], [email], [country], [address], [city], [postcode], [message], [total]) VALUES (13, N'test1', N'0397574822', N'admin@gmail.com', N'Viet Nam', N'Ha Noi', N'Ha Noi', N'test1', N'', 1000000)
INSERT [dbo].[Orders] ([id], [fullname], [phonenumber], [email], [country], [address], [city], [postcode], [message], [total]) VALUES (14, N'Administrator', N'0397574822', N'admin@gmail.com', N'Viet Nam', N'ha noi', N'Ha Noi', N'Administrator', N'', 2222222)
INSERT [dbo].[Orders] ([id], [fullname], [phonenumber], [email], [country], [address], [city], [postcode], [message], [total]) VALUES (15, N'test2', N'0397574822', N'admin@gmail.com', N'Viet Nam', N'ha noi', N'Ha Noi', N'test2', N'', 2000000)
INSERT [dbo].[Orders] ([id], [fullname], [phonenumber], [email], [country], [address], [city], [postcode], [message], [total]) VALUES (16, N'admin', N'0397574822', N'admin@gmail.com', N'Viet Nam', N'ha noi', N'Ha Noi', N'admin', N'', 4000000)
INSERT [dbo].[Orders] ([id], [fullname], [phonenumber], [email], [country], [address], [city], [postcode], [message], [total]) VALUES (17, N'hieudt', N'00', N'doantrunghieu1108@gmail.com', N'Việt Nam', N'ha noi', N'Ha Noi', N'hieudt', N'', 2222222)
INSERT [dbo].[Orders] ([id], [fullname], [phonenumber], [email], [country], [address], [city], [postcode], [message], [total]) VALUES (18, N'admin', N'0397574822', N'doantrunghieu1108@gmail.com', N'Việt Nam', N'ha noi', N'Ha Noi', N'admin', N'', 4444444)
INSERT [dbo].[Orders] ([id], [fullname], [phonenumber], [email], [country], [address], [city], [postcode], [message], [total]) VALUES (19, N'qwe', N'0397574822', N'doantrunghieu1108@gmail.com', N'ha noi', N'Việt Nam', N'Ha Noi', N'123123', N'', 2222222)
INSERT [dbo].[Orders] ([id], [fullname], [phonenumber], [email], [country], [address], [city], [postcode], [message], [total]) VALUES (20, N'qwe', N'0397574822', N'doantrunghieu1108@gmail.com', N'ha noi', N'Việt Nam', N'Ha Noi', N'123123', N'', 2222222)
SET IDENTITY_INSERT [dbo].[Orders] OFF
INSERT [dbo].[Products] ([productID], [productName], [price], [categoryID], [detail], [stock], [img]) VALUES (2, N'Lemongrass Essential Oil', 2000000, 1, N'Lemongrass essential oil promotes health and digestion. Helps clean the air and lift spirits. Lemongrass essential oil has antiseptic, deodorizing, and insect repellant effects. Limit oil on the skin, fight sweat, reduce fatigue and stress. Can be used as a fragrance for cosmetic production and as a hair conditioner supplement, used for steam bath to beautify the skin, and to treat acne.', N'Available', N'http://myphamthiennhien.vn/uploads/shops/tinh_dau/tinh-dau-sa-chanh-20ml-6.jpg')
INSERT [dbo].[Products] ([productID], [productName], [price], [categoryID], [detail], [stock], [img]) VALUES (3, N'Lemongrass Essential Oil (2)', 1000000, 1, N'Lemongrass essential oil promotes health and digestion. Helps clean the air and lift spirits. Lemongrass essential oil has antiseptic, deodorizing, and insect repellant effects. Limit oil on the skin, fight sweat, reduce fatigue and stress. Can be used as a fragrance for cosmetic production and as a hair conditioner supplement, used for steam bath to beautify the skin, and to treat acne.', N'Available', N'http://myphamthiennhien.vn/uploads/shops/tinh_dau/tinh-dau-sa-chanh-20ml-6.jpg')
INSERT [dbo].[Products] ([productID], [productName], [price], [categoryID], [detail], [stock], [img]) VALUES (4, N'Lemongrass Essential Oil (3)', 1000000, 1, N'Lemongrass essential oil promotes health and digestion. Helps clean the air and lift spirits. Lemongrass essential oil has antiseptic, deodorizing, and insect repellant effects. Limit oil on the skin, fight sweat, reduce fatigue and stress. Can be used as a fragrance for cosmetic production and as a hair conditioner supplement, used for steam bath to beautify the skin, and to treat acne.', N'Contact for Information', N'http://myphamthiennhien.vn/uploads/shops/tinh_dau/tinh-dau-sa-chanh-20ml-6.jpg')
INSERT [dbo].[Products] ([productID], [productName], [price], [categoryID], [detail], [stock], [img]) VALUES (5, N'SH - AREA TURBO', 111111, 2, N'Professional aroma generator, automatic Turbo with speed function thanks to flexible injectors with pure lock atomic processing chip, heavy grain mist with structured silent fan blower, luxurious fragrance treatment , complex. The professional start function allows for flexible floor, floor and slot clearance, the device uses essential oils in deep and strong contact on objects, the ability to store the fragrance for a long time.', N'Out of Stock', N'https://scenthomes.vn/uploads/images/anh-may/moi-co-bong/plus-turbo.jpg')
INSERT [dbo].[Products] ([productID], [productName], [price], [categoryID], [detail], [stock], [img]) VALUES (6, N'SH - AREA TURBO(1)', 1111111, 2, N'Professional aroma generator, automatic Turbo with speed function thanks to flexible injectors with pure lock atomic processing chip, heavy grain mist with structured silent fan blower, luxurious fragrance treatment , complex. The professional start function allows for flexible floor, floor and slot clearance, the device uses essential oils in deep and strong contact on objects, the ability to store the fragrance for a long time.', N'Available', N'https://scenthomes.vn/uploads/images/anh-may/moi-co-bong/plus-turbo.jpg')
INSERT [dbo].[Products] ([productID], [productName], [price], [categoryID], [detail], [stock], [img]) VALUES (7, N'SH - AREA TURBO(3)', 1111111, 2, N'Professional aroma generator, automatic Turbo with speed function thanks to flexible injectors with pure lock atomic processing chip, heavy grain mist with structured silent fan blower, luxurious fragrance treatment , complex. The professional start function allows for flexible floor, floor and slot clearance, the device uses essential oils in deep and strong contact on objects, the ability to store the fragrance for a long time.', N'Available', N'https://scenthomes.vn/uploads/images/anh-may/moi-co-bong/plus-turbo.jpg')
INSERT [dbo].[Products] ([productID], [productName], [price], [categoryID], [detail], [stock], [img]) VALUES (8, N'SH - AREA TURBO(8)', 1111111, 2, N'Professional aroma generator, automatic Turbo with speed function thanks to flexible injectors with pure lock atomic processing chip, heavy grain mist with structured silent fan blower, luxurious fragrance treatment , complex. The professional start function allows for flexible floor, floor and slot clearance, the device uses essential oils in deep and strong contact on objects, the ability to store the fragrance for a long time.', N'Contact for Information', N'https://scenthomes.vn/uploads/images/anh-may/moi-co-bong/plus-turbo.jpg')
INSERT [dbo].[Products] ([productID], [productName], [price], [categoryID], [detail], [stock], [img]) VALUES (9, N'Essential Oil Lamps', 22222, 3, N'Essential oil misting machine combines oil mist with ultrasonic essential oil diffusion technology to help bring a fresh, quiet space, suitable for families, offices, spas, restaurants ...', N'Out of Stock', N'http://myphamthiennhien.vn/uploads/shops/spa/unnamed-1_1.jpg')
INSERT [dbo].[Products] ([productID], [productName], [price], [categoryID], [detail], [stock], [img]) VALUES (10, N'Essential Oil Lamps(1)', 222222, 3, N'Essential oil misting machine combines oil mist with ultrasonic essential oil diffusion technology to help bring a fresh, quiet space, suitable for families, offices, spas, restaurants ...', N'Available', N'http://myphamthiennhien.vn/uploads/shops/spa/unnamed-1_1.jpg')
INSERT [dbo].[Products] ([productID], [productName], [price], [categoryID], [detail], [stock], [img]) VALUES (11, N'Essential Oil Lamps(2)', 2222222, 3, N'Essential oil misting machine combines oil mist with ultrasonic essential oil diffusion technology to help bring a fresh, quiet space, suitable for families, offices, spas, restaurants ...', N'Available', N'http://myphamthiennhien.vn/uploads/shops/spa/unnamed-1_1.jpg')
INSERT [dbo].[Products] ([productID], [productName], [price], [categoryID], [detail], [stock], [img]) VALUES (12, N'Essential Oil Lamps(3)', 2222222, 3, N'Essential oil misting machine combines oil mist with ultrasonic essential oil diffusion technology to help bring a fresh, quiet space, suitable for families, offices, spas, restaurants ...', N'Contact for Information', N'http://myphamthiennhien.vn/uploads/shops/spa/unnamed-1_1.jpg')
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK__Products__catego__398D8EEE] FOREIGN KEY([categoryID])
REFERENCES [dbo].[Category] ([categoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK__Products__catego__398D8EEE]
GO

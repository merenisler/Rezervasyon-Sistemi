USE [KGMDb]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 7.09.2023 13:16:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](150) NULL,
	[CustomerMail] [nvarchar](300) NULL,
	[CustomerPhone] [nvarchar](15) NULL,
	[ReservationId] [int] NULL,
	[CustomerType] [nvarchar](50) NULL,
 CONSTRAINT [PK__Customer__A4AE64D832DA9E7E] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerType]    Script Date: 7.09.2023 13:16:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerType](
	[CustomerTypeId] [int] NOT NULL,
	[CustomerType] [nvarchar](50) NULL,
	[AdditionalPrice] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mail]    Script Date: 7.09.2023 13:16:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mail](
	[MailId] [int] IDENTITY(1,1) NOT NULL,
	[SMTPServer] [nvarchar](300) NULL,
	[Port] [int] NULL,
	[FromMail] [nvarchar](400) NULL,
	[Password] [nvarchar](200) NULL,
	[Subject] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[MailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservations]    Script Date: 7.09.2023 13:16:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservations](
	[ReservationId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[RoomFloor] [int] NULL,
	[RoomNo] [int] NULL,
	[AdultCount] [int] NULL,
	[ChildCount] [int] NULL,
	[CheckIn] [date] NULL,
	[CheckOut] [date] NULL,
	[Status] [nvarchar](100) NULL,
	[Price] [int] NULL,
	[ReservationCreationDate] [date] NULL,
	[ReservationCreationTime] [time](7) NULL,
	[RoomType] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReservationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 7.09.2023 13:16:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[RoomId] [int] IDENTITY(1,1) NOT NULL,
	[RoomTypeId] [int] NULL,
	[RoomFloor] [int] NULL,
	[RoomNo] [int] NULL,
	[RoomStatus] [nvarchar](100) NULL,
	[CheckIn] [date] NULL,
	[CheckOut] [date] NULL,
	[ReservationId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomType]    Script Date: 7.09.2023 13:16:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomType](
	[RoomTypeId] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](50) NULL,
	[TypePrice] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoomTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 7.09.2023 13:16:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogin](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NULL,
	[UserPassword] [nvarchar](100) NULL,
	[UserRole] [nvarchar](100) NULL,
	[LastLoginDate] [date] NULL,
	[LastLoginTime] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [CustomerMail], [CustomerPhone], [ReservationId], [CustomerType]) VALUES (1, N'DenemeMüşteri2', N'mail', N'41234546425', 1, N'Memur')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [CustomerMail], [CustomerPhone], [ReservationId], [CustomerType]) VALUES (2, N'Deneme Müşteri', N'denemeMail', N'01111111111', 2, N'Memur')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
INSERT [dbo].[CustomerType] ([CustomerTypeId], [CustomerType], [AdditionalPrice]) VALUES (1, N'Memur', 0)
INSERT [dbo].[CustomerType] ([CustomerTypeId], [CustomerType], [AdditionalPrice]) VALUES (2, N'Sivil', 100)
GO
SET IDENTITY_INSERT [dbo].[Mail] ON 

INSERT [dbo].[Mail] ([MailId], [SMTPServer], [Port], [FromMail], [Password], [Subject]) VALUES (1, N'SMTPServer', 0, N'Mail Adresi', N'Mail Şifresi', N'Rezervasyon İptal Nedeni')
INSERT [dbo].[Mail] ([MailId], [SMTPServer], [Port], [FromMail], [Password], [Subject]) VALUES (2, N'SMTPServer', 0, N'Mail Adresi', N'Mail Şifresi', N'Rezervasyon Tamamlandı')
INSERT [dbo].[Mail] ([MailId], [SMTPServer], [Port], [FromMail], [Password], [Subject]) VALUES (3, N'SMTPServer', 0, N'Mail Adresi', N'Mail Şifresi', N'Toplu Mesaj')
SET IDENTITY_INSERT [dbo].[Mail] OFF
GO
SET IDENTITY_INSERT [dbo].[Reservations] ON 

INSERT [dbo].[Reservations] ([ReservationId], [CustomerId], [RoomFloor], [RoomNo], [AdultCount], [ChildCount], [CheckIn], [CheckOut], [Status], [Price], [ReservationCreationDate], [ReservationCreationTime], [RoomType]) VALUES (1, 1, 1, 9, 2, 0, CAST(N'2023-09-07' AS Date), CAST(N'2023-09-17' AS Date), N'İptal Edildi', 2500, CAST(N'2023-09-07' AS Date), CAST(N'12:30:08' AS Time), N'Çift Kişilik')
INSERT [dbo].[Reservations] ([ReservationId], [CustomerId], [RoomFloor], [RoomNo], [AdultCount], [ChildCount], [CheckIn], [CheckOut], [Status], [Price], [ReservationCreationDate], [ReservationCreationTime], [RoomType]) VALUES (2, 2, 1, 7, 1, 0, CAST(N'2023-09-07' AS Date), CAST(N'2023-09-16' AS Date), N'Oturmakta', 1350, CAST(N'2023-09-07' AS Date), CAST(N'13:08:27' AS Time), N'Tek Kişilik')
SET IDENTITY_INSERT [dbo].[Reservations] OFF
GO
SET IDENTITY_INSERT [dbo].[Rooms] ON 

INSERT [dbo].[Rooms] ([RoomId], [RoomTypeId], [RoomFloor], [RoomNo], [RoomStatus], [CheckIn], [CheckOut], [ReservationId]) VALUES (1, 1, 1, 1, N'Boş', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), NULL)
INSERT [dbo].[Rooms] ([RoomId], [RoomTypeId], [RoomFloor], [RoomNo], [RoomStatus], [CheckIn], [CheckOut], [ReservationId]) VALUES (2, 1, 1, 2, N'Boş', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), NULL)
INSERT [dbo].[Rooms] ([RoomId], [RoomTypeId], [RoomFloor], [RoomNo], [RoomStatus], [CheckIn], [CheckOut], [ReservationId]) VALUES (3, 1, 1, 3, N'Boş', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), NULL)
INSERT [dbo].[Rooms] ([RoomId], [RoomTypeId], [RoomFloor], [RoomNo], [RoomStatus], [CheckIn], [CheckOut], [ReservationId]) VALUES (4, 1, 1, 4, N'Boş', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), NULL)
INSERT [dbo].[Rooms] ([RoomId], [RoomTypeId], [RoomFloor], [RoomNo], [RoomStatus], [CheckIn], [CheckOut], [ReservationId]) VALUES (5, 1, 1, 5, N'Boş', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), NULL)
INSERT [dbo].[Rooms] ([RoomId], [RoomTypeId], [RoomFloor], [RoomNo], [RoomStatus], [CheckIn], [CheckOut], [ReservationId]) VALUES (6, 1, 1, 6, N'Boş', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), NULL)
INSERT [dbo].[Rooms] ([RoomId], [RoomTypeId], [RoomFloor], [RoomNo], [RoomStatus], [CheckIn], [CheckOut], [ReservationId]) VALUES (7, 1, 1, 7, N'Dolu', CAST(N'2023-09-07' AS Date), CAST(N'2023-09-16' AS Date), 2)
INSERT [dbo].[Rooms] ([RoomId], [RoomTypeId], [RoomFloor], [RoomNo], [RoomStatus], [CheckIn], [CheckOut], [ReservationId]) VALUES (8, 2, 1, 8, N'Boş', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), NULL)
INSERT [dbo].[Rooms] ([RoomId], [RoomTypeId], [RoomFloor], [RoomNo], [RoomStatus], [CheckIn], [CheckOut], [ReservationId]) VALUES (9, 2, 1, 9, N'Boş', CAST(N'2023-09-07' AS Date), CAST(N'2023-09-17' AS Date), NULL)
INSERT [dbo].[Rooms] ([RoomId], [RoomTypeId], [RoomFloor], [RoomNo], [RoomStatus], [CheckIn], [CheckOut], [ReservationId]) VALUES (10, 2, 1, 10, N'Boş', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), NULL)
INSERT [dbo].[Rooms] ([RoomId], [RoomTypeId], [RoomFloor], [RoomNo], [RoomStatus], [CheckIn], [CheckOut], [ReservationId]) VALUES (11, 2, 2, 11, N'Boş', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), NULL)
INSERT [dbo].[Rooms] ([RoomId], [RoomTypeId], [RoomFloor], [RoomNo], [RoomStatus], [CheckIn], [CheckOut], [ReservationId]) VALUES (12, 2, 2, 12, N'Boş', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), NULL)
INSERT [dbo].[Rooms] ([RoomId], [RoomTypeId], [RoomFloor], [RoomNo], [RoomStatus], [CheckIn], [CheckOut], [ReservationId]) VALUES (13, 2, 2, 13, N'Boş', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), NULL)
INSERT [dbo].[Rooms] ([RoomId], [RoomTypeId], [RoomFloor], [RoomNo], [RoomStatus], [CheckIn], [CheckOut], [ReservationId]) VALUES (14, 2, 2, 14, N'Boş', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), NULL)
INSERT [dbo].[Rooms] ([RoomId], [RoomTypeId], [RoomFloor], [RoomNo], [RoomStatus], [CheckIn], [CheckOut], [ReservationId]) VALUES (15, 2, 2, 15, N'Boş', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), NULL)
INSERT [dbo].[Rooms] ([RoomId], [RoomTypeId], [RoomFloor], [RoomNo], [RoomStatus], [CheckIn], [CheckOut], [ReservationId]) VALUES (16, 3, 2, 16, N'Boş', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), NULL)
INSERT [dbo].[Rooms] ([RoomId], [RoomTypeId], [RoomFloor], [RoomNo], [RoomStatus], [CheckIn], [CheckOut], [ReservationId]) VALUES (17, 3, 2, 17, N'Boş', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), NULL)
INSERT [dbo].[Rooms] ([RoomId], [RoomTypeId], [RoomFloor], [RoomNo], [RoomStatus], [CheckIn], [CheckOut], [ReservationId]) VALUES (18, 3, 2, 18, N'Boş', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), NULL)
INSERT [dbo].[Rooms] ([RoomId], [RoomTypeId], [RoomFloor], [RoomNo], [RoomStatus], [CheckIn], [CheckOut], [ReservationId]) VALUES (19, 3, 2, 19, N'Boş', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), NULL)
INSERT [dbo].[Rooms] ([RoomId], [RoomTypeId], [RoomFloor], [RoomNo], [RoomStatus], [CheckIn], [CheckOut], [ReservationId]) VALUES (20, 3, 2, 20, N'Boş', CAST(N'1900-01-01' AS Date), CAST(N'1900-01-01' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Rooms] OFF
GO
SET IDENTITY_INSERT [dbo].[RoomType] ON 

INSERT [dbo].[RoomType] ([RoomTypeId], [TypeName], [TypePrice]) VALUES (1, N'Tek Kişilik', 150)
INSERT [dbo].[RoomType] ([RoomTypeId], [TypeName], [TypePrice]) VALUES (2, N'Çift Kişilik', 250)
INSERT [dbo].[RoomType] ([RoomTypeId], [TypeName], [TypePrice]) VALUES (3, N'Aile', 350)
SET IDENTITY_INSERT [dbo].[RoomType] OFF
GO
SET IDENTITY_INSERT [dbo].[UserLogin] ON 

INSERT [dbo].[UserLogin] ([UserId], [UserName], [UserPassword], [UserRole], [LastLoginDate], [LastLoginTime]) VALUES (1, N'Personel1', N'123', N'Resepsiyon', CAST(N'2023-09-07' AS Date), CAST(N'13:06:01' AS Time))
INSERT [dbo].[UserLogin] ([UserId], [UserName], [UserPassword], [UserRole], [LastLoginDate], [LastLoginTime]) VALUES (2, N'Personel2', N'321', N'Resepsiyon', CAST(N'2023-09-07' AS Date), CAST(N'13:15:35' AS Time))
INSERT [dbo].[UserLogin] ([UserId], [UserName], [UserPassword], [UserRole], [LastLoginDate], [LastLoginTime]) VALUES (3, N'Müdür', N'Müdür123', N'Müdür', CAST(N'2023-08-12' AS Date), CAST(N'16:16:06' AS Time))
SET IDENTITY_INSERT [dbo].[UserLogin] OFF
GO

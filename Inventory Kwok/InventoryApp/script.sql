USE [dbinventory]
GO
/****** Object:  Table [dbo].[Cabinet]    Script Date: 9/25/2022 1:05:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cabinet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Number] [char](50) NOT NULL,
 CONSTRAINT [PK_Cabinet] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CabinetInventoryObject]    Script Date: 9/25/2022 1:05:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CabinetInventoryObject](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDInventoryObject] [int] NOT NULL,
	[IDCabinet] [int] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_CabinetInventoryObject] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CurrentStatus]    Script Date: 9/25/2022 1:05:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurrentStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDStatus] [int] NOT NULL,
	[NumberAct] [char](50) NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_CurrentStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employe]    Script Date: 9/25/2022 1:05:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employe](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [varchar](100) NOT NULL,
	[Position] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Employe] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[History]    Script Date: 9/25/2022 1:05:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FIO] [nvarchar](100) NOT NULL,
	[CabinetNumber] [char](50) NOT NULL,
	[IDInventoryObject] [int] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_History] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryObject]    Script Date: 9/25/2022 1:05:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryObject](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NOT NULL,
	[InventoryNumber] [char](50) NOT NULL,
	[CommissioningDate] [date] NOT NULL,
	[DocumentationPath] [nvarchar](1000) NOT NULL,
	[IDType] [int] NOT NULL,
	[IDSubType] [int] NOT NULL,
	[LifeTime] [int] NOT NULL,
	[IDInvoce] [int] NOT NULL,
	[IDCurrentStatus] [int] NOT NULL,
	[Amount] [decimal](13, 2) NOT NULL,
	[IDEmployee] [int] NOT NULL,
	[IDInventoryObjectDetail] [int] NOT NULL,
 CONSTRAINT [PK_InventoryObject] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryObjectDetails]    Script Date: 9/25/2022 1:05:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryObjectDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SeriaNumber] [char](50) NULL,
	[Title] [char](500) NOT NULL,
 CONSTRAINT [PK_InventoryObjectDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InventoryObjectInentoryObjectDetails]    Script Date: 9/25/2022 1:05:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InventoryObjectInentoryObjectDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDInventoryObject] [int] NOT NULL,
	[IDInventoryObjectDetails] [int] NOT NULL,
 CONSTRAINT [PK_InventoryObjectInentoryObjectDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoce]    Script Date: 9/25/2022 1:05:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoce](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Number] [char](50) NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Invoce] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 9/25/2022 1:05:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubType]    Script Date: 9/25/2022 1:05:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDType] [int] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_SubType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 9/25/2022 1:05:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 9/25/2022 1:05:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Role] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cabinet] ON 

INSERT [dbo].[Cabinet] ([ID], [Number]) VALUES (1, N'202                                               ')
INSERT [dbo].[Cabinet] ([ID], [Number]) VALUES (2, N'123                                               ')
INSERT [dbo].[Cabinet] ([ID], [Number]) VALUES (3, N'303                                               ')
INSERT [dbo].[Cabinet] ([ID], [Number]) VALUES (4, N'305                                               ')
SET IDENTITY_INSERT [dbo].[Cabinet] OFF
GO
SET IDENTITY_INSERT [dbo].[CabinetInventoryObject] ON 

INSERT [dbo].[CabinetInventoryObject] ([ID], [IDInventoryObject], [IDCabinet], [Date]) VALUES (1011, 4, 2, CAST(N'0001-01-01' AS Date))
INSERT [dbo].[CabinetInventoryObject] ([ID], [IDInventoryObject], [IDCabinet], [Date]) VALUES (1012, 3, 4, CAST(N'2022-01-27' AS Date))
INSERT [dbo].[CabinetInventoryObject] ([ID], [IDInventoryObject], [IDCabinet], [Date]) VALUES (1013, 4, 2, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[CabinetInventoryObject] ([ID], [IDInventoryObject], [IDCabinet], [Date]) VALUES (1014, 3, 1, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[CabinetInventoryObject] ([ID], [IDInventoryObject], [IDCabinet], [Date]) VALUES (1015, 3, 4, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[CabinetInventoryObject] ([ID], [IDInventoryObject], [IDCabinet], [Date]) VALUES (1016, 3, 4, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[CabinetInventoryObject] ([ID], [IDInventoryObject], [IDCabinet], [Date]) VALUES (1017, 5, 2, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[CabinetInventoryObject] ([ID], [IDInventoryObject], [IDCabinet], [Date]) VALUES (1018, 6, 3, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[CabinetInventoryObject] ([ID], [IDInventoryObject], [IDCabinet], [Date]) VALUES (1020, 11, 1, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[CabinetInventoryObject] ([ID], [IDInventoryObject], [IDCabinet], [Date]) VALUES (1021, 12, 1, CAST(N'2022-09-25' AS Date))
SET IDENTITY_INSERT [dbo].[CabinetInventoryObject] OFF
GO
SET IDENTITY_INSERT [dbo].[CurrentStatus] ON 

INSERT [dbo].[CurrentStatus] ([ID], [IDStatus], [NumberAct], [Date]) VALUES (1, 3, N'1                                                 ', CAST(N'2021-12-01' AS Date))
INSERT [dbo].[CurrentStatus] ([ID], [IDStatus], [NumberAct], [Date]) VALUES (2, 2, N'4                                                 ', CAST(N'2021-12-04' AS Date))
INSERT [dbo].[CurrentStatus] ([ID], [IDStatus], [NumberAct], [Date]) VALUES (3, 1, N'432                                               ', CAST(N'0001-01-01' AS Date))
INSERT [dbo].[CurrentStatus] ([ID], [IDStatus], [NumberAct], [Date]) VALUES (4, 1, N'323                                               ', CAST(N'0001-01-01' AS Date))
INSERT [dbo].[CurrentStatus] ([ID], [IDStatus], [NumberAct], [Date]) VALUES (5, 1, N'32131                                             ', CAST(N'2022-01-18' AS Date))
INSERT [dbo].[CurrentStatus] ([ID], [IDStatus], [NumberAct], [Date]) VALUES (6, 1, N'432                                               ', CAST(N'2022-01-04' AS Date))
INSERT [dbo].[CurrentStatus] ([ID], [IDStatus], [NumberAct], [Date]) VALUES (7, 1, N'123                                               ', CAST(N'2022-01-20' AS Date))
INSERT [dbo].[CurrentStatus] ([ID], [IDStatus], [NumberAct], [Date]) VALUES (8, 1, N'1233                                              ', NULL)
INSERT [dbo].[CurrentStatus] ([ID], [IDStatus], [NumberAct], [Date]) VALUES (9, 1, N'222                                               ', NULL)
INSERT [dbo].[CurrentStatus] ([ID], [IDStatus], [NumberAct], [Date]) VALUES (10, 1, N'214                                               ', NULL)
INSERT [dbo].[CurrentStatus] ([ID], [IDStatus], [NumberAct], [Date]) VALUES (15, 1, N'                                                  ', NULL)
INSERT [dbo].[CurrentStatus] ([ID], [IDStatus], [NumberAct], [Date]) VALUES (16, 1, N'9938                                              ', CAST(N'2022-01-22' AS Date))
INSERT [dbo].[CurrentStatus] ([ID], [IDStatus], [NumberAct], [Date]) VALUES (17, 2, N'887678                                            ', CAST(N'2022-01-22' AS Date))
INSERT [dbo].[CurrentStatus] ([ID], [IDStatus], [NumberAct], [Date]) VALUES (18, 1, N'23                                                ', NULL)
INSERT [dbo].[CurrentStatus] ([ID], [IDStatus], [NumberAct], [Date]) VALUES (19, 2, N'234                                               ', NULL)
INSERT [dbo].[CurrentStatus] ([ID], [IDStatus], [NumberAct], [Date]) VALUES (20, 1, N'3                                                 ', NULL)
INSERT [dbo].[CurrentStatus] ([ID], [IDStatus], [NumberAct], [Date]) VALUES (21, 1, NULL, NULL)
INSERT [dbo].[CurrentStatus] ([ID], [IDStatus], [NumberAct], [Date]) VALUES (22, 1, NULL, NULL)
INSERT [dbo].[CurrentStatus] ([ID], [IDStatus], [NumberAct], [Date]) VALUES (24, 1, NULL, NULL)
INSERT [dbo].[CurrentStatus] ([ID], [IDStatus], [NumberAct], [Date]) VALUES (25, 1, N'2432                                              ', CAST(N'2022-01-12' AS Date))
SET IDENTITY_INSERT [dbo].[CurrentStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Employe] ON 

INSERT [dbo].[Employe] ([ID], [FIO], [Position]) VALUES (1, N'Иванов И.А.', N'Директор')
INSERT [dbo].[Employe] ([ID], [FIO], [Position]) VALUES (3, N'Васильев В.А.', N'Менеджер')
SET IDENTITY_INSERT [dbo].[Employe] OFF
GO
SET IDENTITY_INSERT [dbo].[History] ON 

INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (5, N'Иванов И.А.', N'202                                               ', 4, CAST(N'2022-01-22' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (6, N'Васильев В.А.', N'123                                               ', 3, CAST(N'2022-01-22' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (7, N'Иванов И.А.', N'123                                               ', 4, CAST(N'2022-01-22' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (8, N'Иванов И.А.', N'303                                               ', 4, CAST(N'2022-01-22' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (9, N'Иванов И.А.', N'303                                               ', 4, CAST(N'2022-01-22' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (10, N'Иванов И.А.', N'305                                               ', 4, CAST(N'2022-01-22' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (11, N'Иванов И.А.', N'303                                               ', 4, CAST(N'2022-01-22' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (12, N'Васильев В.А.', N'303                                               ', 3, CAST(N'2022-01-22' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (13, N'Иванов И.А.', N'123                                               ', 4, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (14, N'Васильев В.А.', N'303                                               ', 3, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (15, N'Васильев В.А.', N'202                                               ', 3, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (16, N'Иванов И.А.', N'123                                               ', 4, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (17, N'Васильев В.А.', N'305                                               ', 3, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (18, N'Васильев В.А.', N'305                                               ', 3, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (19, N'Васильев В.А.', N'305                                               ', 3, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (20, N'Иванов И.А.', N'123                                               ', 4, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (21, N'Иванов И.А.', N'202                                               ', 5, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (22, N'Иванов И.А.', N'202                                               ', 5, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (23, N'Иванов И.А.', N'202                                               ', 6, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (24, N'Иванов И.А.', N'202                                               ', 4, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (25, N'Иванов И.А.', N'303                                               ', 5, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (26, N'Иванов И.А.', N'202                                               ', 5, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (27, N'Иванов И.А.', N'123                                               ', 5, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (28, N'Иванов И.А.', N'123                                               ', 5, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (29, N'Иванов И.А.', N'123                                               ', 4, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (30, N'Иванов И.А.', N'202                                               ', 6, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (31, N'Иванов И.А.', N'303                                               ', 4, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (32, N'Иванов И.А.', N'202                                               ', 6, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (33, N'Иванов И.А.', N'123                                               ', 6, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (34, N'Иванов И.А.', N'202                                               ', 6, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (35, N'Иванов И.А.', N'303                                               ', 6, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (36, N'Иванов И.А.', N'303                                               ', 4, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (37, N'Иванов И.А.', N'123                                               ', 4, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (38, N'Иванов И.А.', N'202                                               ', 7, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (39, N'Иванов И.А.', N'202                                               ', 8, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (40, N'Иванов И.А.', N'123                                               ', 8, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (41, N'Иванов И.А.', N'202                                               ', 9, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (42, N'Иванов И.А.', N'202                                               ', 11, CAST(N'2022-01-23' AS Date))
INSERT [dbo].[History] ([ID], [FIO], [CabinetNumber], [IDInventoryObject], [Date]) VALUES (43, N'Васильев В.А.', N'202                                               ', 12, CAST(N'2022-09-25' AS Date))
SET IDENTITY_INSERT [dbo].[History] OFF
GO
SET IDENTITY_INSERT [dbo].[InventoryObject] ON 

INSERT [dbo].[InventoryObject] ([ID], [Title], [InventoryNumber], [CommissioningDate], [DocumentationPath], [IDType], [IDSubType], [LifeTime], [IDInvoce], [IDCurrentStatus], [Amount], [IDEmployee], [IDInventoryObjectDetail]) VALUES (3, N'Test', N'12345                                             ', CAST(N'2014-01-01' AS Date), N'C:\Users\thevc\Documents\my work\github\thevckit-dotnet\Inventory Kwok\InventoryApp\InventoryApp\bin\Debug\ведомость.docx', 1, 18, 10, 12, 16, CAST(30000.00 AS Decimal(13, 2)), 3, 0)
INSERT [dbo].[InventoryObject] ([ID], [Title], [InventoryNumber], [CommissioningDate], [DocumentationPath], [IDType], [IDSubType], [LifeTime], [IDInvoce], [IDCurrentStatus], [Amount], [IDEmployee], [IDInventoryObjectDetail]) VALUES (4, N'Что-то там', N'99283                                             ', CAST(N'2020-01-22' AS Date), N'', 1, 18, 1, 13, 17, CAST(900000.00 AS Decimal(13, 2)), 1, 0)
INSERT [dbo].[InventoryObject] ([ID], [Title], [InventoryNumber], [CommissioningDate], [DocumentationPath], [IDType], [IDSubType], [LifeTime], [IDInvoce], [IDCurrentStatus], [Amount], [IDEmployee], [IDInventoryObjectDetail]) VALUES (5, N'Test', N'1234                                              ', CAST(N'2022-10-01' AS Date), N'', 1, 18, 1, 14, 18, CAST(230.00 AS Decimal(13, 2)), 1, 0)
INSERT [dbo].[InventoryObject] ([ID], [Title], [InventoryNumber], [CommissioningDate], [DocumentationPath], [IDType], [IDSubType], [LifeTime], [IDInvoce], [IDCurrentStatus], [Amount], [IDEmployee], [IDInventoryObjectDetail]) VALUES (6, N'Testttt', N'293                                               ', CAST(N'2022-01-23' AS Date), N'', 1, 18, 5, 15, 19, CAST(0.90 AS Decimal(13, 2)), 1, 0)
INSERT [dbo].[InventoryObject] ([ID], [Title], [InventoryNumber], [CommissioningDate], [DocumentationPath], [IDType], [IDSubType], [LifeTime], [IDInvoce], [IDCurrentStatus], [Amount], [IDEmployee], [IDInventoryObjectDetail]) VALUES (7, N'test', N'1245                                              ', CAST(N'0001-01-01' AS Date), N'', 1, 18, 1, 16, 20, CAST(30.00 AS Decimal(13, 2)), 1, 0)
INSERT [dbo].[InventoryObject] ([ID], [Title], [InventoryNumber], [CommissioningDate], [DocumentationPath], [IDType], [IDSubType], [LifeTime], [IDInvoce], [IDCurrentStatus], [Amount], [IDEmployee], [IDInventoryObjectDetail]) VALUES (8, N'test', N'12452141                                          ', CAST(N'0001-01-01' AS Date), N'', 1, 18, 1, 17, 21, CAST(2340.00 AS Decimal(13, 2)), 1, 0)
INSERT [dbo].[InventoryObject] ([ID], [Title], [InventoryNumber], [CommissioningDate], [DocumentationPath], [IDType], [IDSubType], [LifeTime], [IDInvoce], [IDCurrentStatus], [Amount], [IDEmployee], [IDInventoryObjectDetail]) VALUES (9, N'qwert', N'09823                                             ', CAST(N'0001-01-01' AS Date), N'', 1, 18, 1, 18, 22, CAST(100.00 AS Decimal(13, 2)), 1, 0)
INSERT [dbo].[InventoryObject] ([ID], [Title], [InventoryNumber], [CommissioningDate], [DocumentationPath], [IDType], [IDSubType], [LifeTime], [IDInvoce], [IDCurrentStatus], [Amount], [IDEmployee], [IDInventoryObjectDetail]) VALUES (11, N'wqreqr', N'12412412                                          ', CAST(N'0001-01-01' AS Date), N'', 2, 19, 1, 20, 24, CAST(120.00 AS Decimal(13, 2)), 1, 0)
INSERT [dbo].[InventoryObject] ([ID], [Title], [InventoryNumber], [CommissioningDate], [DocumentationPath], [IDType], [IDSubType], [LifeTime], [IDInvoce], [IDCurrentStatus], [Amount], [IDEmployee], [IDInventoryObjectDetail]) VALUES (12, N'Test', N'2314                                              ', CAST(N'2022-11-20' AS Date), N'', 1, 18, 2, 21, 25, CAST(20.22 AS Decimal(13, 2)), 3, 0)
SET IDENTITY_INSERT [dbo].[InventoryObject] OFF
GO
SET IDENTITY_INSERT [dbo].[InventoryObjectDetails] ON 

INSERT [dbo].[InventoryObjectDetails] ([ID], [SeriaNumber], [Title]) VALUES (1017, N'12345                                             ', N'Test                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ')
INSERT [dbo].[InventoryObjectDetails] ([ID], [SeriaNumber], [Title]) VALUES (1018, N'123                                               ', N'Title                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ')
SET IDENTITY_INSERT [dbo].[InventoryObjectDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[InventoryObjectInentoryObjectDetails] ON 

INSERT [dbo].[InventoryObjectInentoryObjectDetails] ([ID], [IDInventoryObject], [IDInventoryObjectDetails]) VALUES (1017, 3, 1017)
INSERT [dbo].[InventoryObjectInentoryObjectDetails] ([ID], [IDInventoryObject], [IDInventoryObjectDetails]) VALUES (1018, 4, 1018)
SET IDENTITY_INSERT [dbo].[InventoryObjectInentoryObjectDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoce] ON 

INSERT [dbo].[Invoce] ([ID], [Number], [Date]) VALUES (1, N'11                                                ', CAST(N'2021-02-21' AS Date))
INSERT [dbo].[Invoce] ([ID], [Number], [Date]) VALUES (2, N'23                                                ', CAST(N'2021-11-01' AS Date))
INSERT [dbo].[Invoce] ([ID], [Number], [Date]) VALUES (3, N'342                                               ', CAST(N'0001-01-01' AS Date))
INSERT [dbo].[Invoce] ([ID], [Number], [Date]) VALUES (4, N'3232                                              ', CAST(N'0001-01-01' AS Date))
INSERT [dbo].[Invoce] ([ID], [Number], [Date]) VALUES (5, N'2132                                              ', CAST(N'2022-01-18' AS Date))
INSERT [dbo].[Invoce] ([ID], [Number], [Date]) VALUES (6, N'432                                               ', CAST(N'0001-01-01' AS Date))
INSERT [dbo].[Invoce] ([ID], [Number], [Date]) VALUES (7, N'123                                               ', CAST(N'0001-01-01' AS Date))
INSERT [dbo].[Invoce] ([ID], [Number], [Date]) VALUES (8, N'12                                                ', CAST(N'0001-01-01' AS Date))
INSERT [dbo].[Invoce] ([ID], [Number], [Date]) VALUES (9, N'2                                                 ', CAST(N'0001-01-01' AS Date))
INSERT [dbo].[Invoce] ([ID], [Number], [Date]) VALUES (10, N'123                                               ', CAST(N'0001-01-01' AS Date))
INSERT [dbo].[Invoce] ([ID], [Number], [Date]) VALUES (11, N'2314                                              ', CAST(N'0001-01-01' AS Date))
INSERT [dbo].[Invoce] ([ID], [Number], [Date]) VALUES (12, N'9990                                              ', CAST(N'2013-01-01' AS Date))
INSERT [dbo].[Invoce] ([ID], [Number], [Date]) VALUES (13, N'9990                                              ', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[Invoce] ([ID], [Number], [Date]) VALUES (14, N'23                                                ', CAST(N'0001-01-01' AS Date))
INSERT [dbo].[Invoce] ([ID], [Number], [Date]) VALUES (15, N'123                                               ', CAST(N'0001-01-01' AS Date))
INSERT [dbo].[Invoce] ([ID], [Number], [Date]) VALUES (16, N'23                                                ', CAST(N'0001-01-01' AS Date))
INSERT [dbo].[Invoce] ([ID], [Number], [Date]) VALUES (17, N'123                                               ', CAST(N'0001-01-01' AS Date))
INSERT [dbo].[Invoce] ([ID], [Number], [Date]) VALUES (18, N'2332                                              ', CAST(N'0001-01-01' AS Date))
INSERT [dbo].[Invoce] ([ID], [Number], [Date]) VALUES (20, N'12                                                ', CAST(N'0001-01-01' AS Date))
INSERT [dbo].[Invoce] ([ID], [Number], [Date]) VALUES (21, N'2000                                              ', CAST(N'2002-01-01' AS Date))
SET IDENTITY_INSERT [dbo].[Invoce] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([ID], [Title]) VALUES (1, N'Рабочее')
INSERT [dbo].[Status] ([ID], [Title]) VALUES (2, N'На ремонте')
INSERT [dbo].[Status] ([ID], [Title]) VALUES (3, N'Списано')
INSERT [dbo].[Status] ([ID], [Title]) VALUES (4, N'Подразделение')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[SubType] ON 

INSERT [dbo].[SubType] ([ID], [IDType], [Title]) VALUES (18, 1, N'Ноутбук')
INSERT [dbo].[SubType] ([ID], [IDType], [Title]) VALUES (19, 2, N'Компьютерное кресло')
INSERT [dbo].[SubType] ([ID], [IDType], [Title]) VALUES (20, 1, N'fdf')
INSERT [dbo].[SubType] ([ID], [IDType], [Title]) VALUES (1019, 1, N'123')
SET IDENTITY_INSERT [dbo].[SubType] OFF
GO
SET IDENTITY_INSERT [dbo].[Type] ON 

INSERT [dbo].[Type] ([ID], [Title]) VALUES (1, N'Техническое оборудование (устройство)')
INSERT [dbo].[Type] ([ID], [Title]) VALUES (2, N'Мебель ')
INSERT [dbo].[Type] ([ID], [Title]) VALUES (3, N'fds')
INSERT [dbo].[Type] ([ID], [Title]) VALUES (4, N'fdgdf')
INSERT [dbo].[Type] ([ID], [Title]) VALUES (5, N'rwerw')
INSERT [dbo].[Type] ([ID], [Title]) VALUES (6, N'fdsfdsfsdfsdfsdfs')
SET IDENTITY_INSERT [dbo].[Type] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [Username], [Password], [Role]) VALUES (11, N'uservip', N'jc6yxETHtRe7EmzESnsxgA==', 2)
INSERT [dbo].[User] ([ID], [Username], [Password], [Role]) VALUES (12, N'admin', N'2aIZILXZtRUOKv2urfpykQ==', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[CabinetInventoryObject]  WITH CHECK ADD  CONSTRAINT [FK_CabinetInventoryObject_Cabinet] FOREIGN KEY([IDCabinet])
REFERENCES [dbo].[Cabinet] ([ID])
GO
ALTER TABLE [dbo].[CabinetInventoryObject] CHECK CONSTRAINT [FK_CabinetInventoryObject_Cabinet]
GO
ALTER TABLE [dbo].[CabinetInventoryObject]  WITH CHECK ADD  CONSTRAINT [FK_CabinetInventoryObject_InventoryObject] FOREIGN KEY([IDInventoryObject])
REFERENCES [dbo].[InventoryObject] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CabinetInventoryObject] CHECK CONSTRAINT [FK_CabinetInventoryObject_InventoryObject]
GO
ALTER TABLE [dbo].[CurrentStatus]  WITH CHECK ADD  CONSTRAINT [FK_CurrentStatus_Status] FOREIGN KEY([IDStatus])
REFERENCES [dbo].[Status] ([ID])
GO
ALTER TABLE [dbo].[CurrentStatus] CHECK CONSTRAINT [FK_CurrentStatus_Status]
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD  CONSTRAINT [FK_History_InventoryObject] FOREIGN KEY([IDInventoryObject])
REFERENCES [dbo].[InventoryObject] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[History] CHECK CONSTRAINT [FK_History_InventoryObject]
GO
ALTER TABLE [dbo].[InventoryObject]  WITH CHECK ADD  CONSTRAINT [FK_InventoryObject_CurrentStatus] FOREIGN KEY([IDCurrentStatus])
REFERENCES [dbo].[CurrentStatus] ([ID])
GO
ALTER TABLE [dbo].[InventoryObject] CHECK CONSTRAINT [FK_InventoryObject_CurrentStatus]
GO
ALTER TABLE [dbo].[InventoryObject]  WITH CHECK ADD  CONSTRAINT [FK_InventoryObject_Employe] FOREIGN KEY([IDEmployee])
REFERENCES [dbo].[Employe] ([ID])
GO
ALTER TABLE [dbo].[InventoryObject] CHECK CONSTRAINT [FK_InventoryObject_Employe]
GO
ALTER TABLE [dbo].[InventoryObject]  WITH CHECK ADD  CONSTRAINT [FK_InventoryObject_Invoce] FOREIGN KEY([IDInvoce])
REFERENCES [dbo].[Invoce] ([ID])
GO
ALTER TABLE [dbo].[InventoryObject] CHECK CONSTRAINT [FK_InventoryObject_Invoce]
GO
ALTER TABLE [dbo].[InventoryObject]  WITH CHECK ADD  CONSTRAINT [FK_InventoryObject_SubType] FOREIGN KEY([IDSubType])
REFERENCES [dbo].[SubType] ([ID])
GO
ALTER TABLE [dbo].[InventoryObject] CHECK CONSTRAINT [FK_InventoryObject_SubType]
GO
ALTER TABLE [dbo].[InventoryObject]  WITH CHECK ADD  CONSTRAINT [FK_InventoryObject_Type] FOREIGN KEY([IDType])
REFERENCES [dbo].[Type] ([ID])
GO
ALTER TABLE [dbo].[InventoryObject] CHECK CONSTRAINT [FK_InventoryObject_Type]
GO
ALTER TABLE [dbo].[InventoryObjectInentoryObjectDetails]  WITH CHECK ADD  CONSTRAINT [FK_InventoryObjectInentoryObjectDetails_InventoryObject] FOREIGN KEY([IDInventoryObject])
REFERENCES [dbo].[InventoryObject] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InventoryObjectInentoryObjectDetails] CHECK CONSTRAINT [FK_InventoryObjectInentoryObjectDetails_InventoryObject]
GO
ALTER TABLE [dbo].[InventoryObjectInentoryObjectDetails]  WITH CHECK ADD  CONSTRAINT [FK_InventoryObjectInentoryObjectDetails_InventoryObjectDetails] FOREIGN KEY([IDInventoryObjectDetails])
REFERENCES [dbo].[InventoryObjectDetails] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InventoryObjectInentoryObjectDetails] CHECK CONSTRAINT [FK_InventoryObjectInentoryObjectDetails_InventoryObjectDetails]
GO
ALTER TABLE [dbo].[SubType]  WITH CHECK ADD  CONSTRAINT [FK_SubType_Type] FOREIGN KEY([IDType])
REFERENCES [dbo].[Type] ([ID])
GO
ALTER TABLE [dbo].[SubType] CHECK CONSTRAINT [FK_SubType_Type]
GO

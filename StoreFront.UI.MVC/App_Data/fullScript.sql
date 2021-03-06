/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.5026)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_StockStatus]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT IF EXISTS [FK_Products_Categories]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employees]') AND type in (N'U'))
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT IF EXISTS [FK_Employees_Employees]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employees]') AND type in (N'U'))
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT IF EXISTS [FK_Employees_Department]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Table [dbo].[StockStatus]    Script Date: 4/8/2022 1:52:21 PM ******/
DROP TABLE IF EXISTS [dbo].[StockStatus]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/8/2022 1:52:21 PM ******/
DROP TABLE IF EXISTS [dbo].[Products]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 4/8/2022 1:52:21 PM ******/
DROP TABLE IF EXISTS [dbo].[Employees]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 4/8/2022 1:52:21 PM ******/
DROP TABLE IF EXISTS [dbo].[Department]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 4/8/2022 1:52:21 PM ******/
DROP TABLE IF EXISTS [dbo].[Categories]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/8/2022 1:52:21 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/8/2022 1:52:21 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/8/2022 1:52:21 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/8/2022 1:52:21 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/8/2022 1:52:21 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/8/2022 1:52:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/8/2022 1:52:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/8/2022 1:52:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/8/2022 1:52:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/8/2022 1:52:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 4/8/2022 1:52:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nchar](25) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Department]    Script Date: 4/8/2022 1:52:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Department]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 4/8/2022 1:52:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employees]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](25) NOT NULL,
	[LastName] [nvarchar](25) NOT NULL,
	[DepartmentID] [int] NULL,
	[Position] [nvarchar](25) NULL,
	[DirectReportID] [int] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/8/2022 1:52:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](25) NOT NULL,
	[CategoryID] [int] NULL,
	[Price] [money] NULL,
	[StatusID] [int] NOT NULL,
	[Description] [nvarchar](100) NULL,
	[ProductImage] [varchar](100) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[StockStatus]    Script Date: 4/8/2022 1:52:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StockStatus]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[StockStatus](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_StockStatus] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'15d22037-67b4-42de-affa-2fe0a70f54d0', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'c5de9e43-23cb-42fa-bf14-c8bf23a650b4', N'User')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3f3e6e59-cfd1-4591-b62d-74d3574fac29', N'15d22037-67b4-42de-affa-2fe0a70f54d0')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3f3e6e59-cfd1-4591-b62d-74d3574fac29', N'admin@storefront.com', 0, N'ALlNtJ6zR/hRoZvoyTX2uDB+cHrd2+mHbTbEofLZVCw5nGqjuTOpXKu1GCjbOnowLQ==', N'c23ee651-576b-425e-aa23-6c6a09de63e5', NULL, 0, 0, NULL, 1, 0, N'admin@storefront.com')
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (1, N'Growing Medium           ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (2, N'Fertilizer               ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (3, N'Plants                   ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (4, N'Pots/Containers          ')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (5, N'Accessories              ')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (1, N'Finance')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (2, N'Technologies')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (3, N'Sales')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (4, N'HR')
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (5, N'Marketing')
SET IDENTITY_INSERT [dbo].[Department] OFF
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [Position], [DirectReportID]) VALUES (1, N'Rafael', N'Holloway', 3, N'Clerk', 4)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [Position], [DirectReportID]) VALUES (2, N'Erica', N'Knapp', 3, N'Clerk', 4)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [Position], [DirectReportID]) VALUES (3, N'Nina', N'Gamble', 3, N'Clerk', 4)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [Position], [DirectReportID]) VALUES (4, N'Zelda', N'Beard', 3, N'Supervisor', 5)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [Position], [DirectReportID]) VALUES (5, N'Hiram', N'Floyd', 3, N'Manager', 9)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [Position], [DirectReportID]) VALUES (6, N'Alex', N'Smith', 3, N'Cashier', 8)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [Position], [DirectReportID]) VALUES (7, N'Ayanna', N'Moore', 3, N'Cashier', 8)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [Position], [DirectReportID]) VALUES (8, N'Cameron', N'Dalton', 3, N'Supervisor', 5)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [Position], [DirectReportID]) VALUES (9, N'Kayla', N'Nguyen', NULL, N'Owner', NULL)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [Position], [DirectReportID]) VALUES (10, N'Ronan', N'Herbert', 2, N'IT Specialist', 9)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [Position], [DirectReportID]) VALUES (11, N'Gregory', N'Acevedo', 1, N'Bookkeeper', 9)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [Position], [DirectReportID]) VALUES (12, N'Seth', N'Garrett', 1, N'Payroll Clerk', 11)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [Position], [DirectReportID]) VALUES (13, N'Julie', N'Bowers', 4, N'HR Clerk', 9)
INSERT [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [DepartmentID], [Position], [DirectReportID]) VALUES (14, N'Yuli', N'Vang', 5, N'Manager', 9)
SET IDENTITY_INSERT [dbo].[Employees] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (2, N'LECA 5lb', 1, 6.9900, 1, N'Lightweight expanded clay aggregate. 5lb bag.', N'leca-sack-1.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (3, N'LECA 10lb', 1, 10.9900, 1, N'Lightweight expanded clay aggregate. 10lb bag.', N'leca-sack-1.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (5, N'S LECA 5lb', 1, 6.9900, 1, N'Smaller sized LECA. 5lb bag.', N'leca-sack-1.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (6, N'L LECA 5lb', 1, 6.9900, 1, N'Extra large LECA. 5lb bag.', N'leca-sack-1.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (7, N'L LECA 10lb', 1, 10.9900, 1, N'Extra large LECA. 10lb bag.', N'leca-sack-1.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (8, N'Hydro Fert - Premix', 2, 9.9900, 1, N'1 gallon of premixed hydroponic fertilizer.', N'premix-fert.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (10, N'Hydro Fert - Part 1', 2, 14.9900, 1, N'1 gallon concentrate of part 1 of 3-part hydroponic fertilizer system.', N'3-part-fert.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (12, N'Hydro Fert - Part 2', 2, 14.9900, 1, N'1 gallon concentrate of part 2 of 3-part hydroponic fertilizer system.', N'3-part-fert-1.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (13, N'Hydro Fert - Part 3', 2, 14.9900, 1, N'1 gallon concentrate of part 3 of 3-part hydroponic fertilizer system.', N'3-part-fert-2.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (15, N'Golden Pothos', 3, 20.0000, 2, N'Pothos can thrive with low light. 6in nursery pot.', N'golden-pothos-1.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (16, N'Aloe', 3, 5.0000, 1, N'The leaves are fleshy and commonly have sharp toothed edges. 3in nursery pot.', N'aloe.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (17, N'L Glass Container', 4, 50.0000, 3, N'Large, round 10in glass container', N'l-glass-container1.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (18, N'M Glass Container', 4, 25.0000, 1, N'Medium, round 5in glass container', N'm-glass-container.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (19, N'S Glass Container', 4, 10.0000, 1, N'Small, round 2in glass container', N'small-container.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (20, N'Prop Jars (3 pack)', 4, 10.9900, 1, N'3 small propagation jars', N'6-glass-cups.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (21, N'Prop Jar', 4, 3.9900, 1, N'A single propagation jar', N'prop-jar.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (22, N'S Circle Trellis', 5, 1.9900, 3, N'3in metal trellis', N'NoImage.png')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (23, N'Circle Trellis', 5, 4.9900, 3, N'5in metal trellis', N'NoImage.png')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (24, N'L Circle Trellis', 5, 9.9900, 1, N'12in metal trelis', N'NoImage.png')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (25, N'LECA Pole', 5, 9.9900, 1, N'6in LECA pole used for climbers', N'NoImage.png')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (26, N'S Decorative Pot', 4, 5.0000, 1, N'Small ceramic decorative pot', N's-decorative-pot.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (27, N'M Decorative Pot', 4, 10.0000, 1, N'Medium ceramic decorative pot', N'decorative-pot.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (28, N'L Decorative Pot', 4, 20.0000, 1, N'Large ceramic decorative pot', N'l-decorative-pot.jpg')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (29, N'Nursery Pot x25', 4, 25.0000, 2, N'Perfect for props!', N'NoImage.png')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (30, N'test product', 1, 0.9900, 1, N'test', N'NoImage.png')
INSERT [dbo].[Products] ([ProductID], [ProductName], [CategoryID], [Price], [StatusID], [Description], [ProductImage]) VALUES (32, N'test product2', 1, 12.9900, 4, N'3', NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[StockStatus] ON 

INSERT [dbo].[StockStatus] ([StatusID], [Status]) VALUES (1, N'In Stock')
INSERT [dbo].[StockStatus] ([StatusID], [Status]) VALUES (2, N'Out of Stock')
INSERT [dbo].[StockStatus] ([StatusID], [Status]) VALUES (3, N'Backordered')
INSERT [dbo].[StockStatus] ([StatusID], [Status]) VALUES (4, N'Discontinued')
SET IDENTITY_INSERT [dbo].[StockStatus] OFF
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employees_Department]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employees]'))
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employees_Department]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employees]'))
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Department]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employees_Employees]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employees]'))
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Employees] FOREIGN KEY([DirectReportID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employees_Employees]') AND parent_object_id = OBJECT_ID(N'[dbo].[Employees]'))
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Employees]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Categories]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_StockStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_StockStatus] FOREIGN KEY([StatusID])
REFERENCES [dbo].[StockStatus] ([StatusID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_StockStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]'))
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_StockStatus]
GO

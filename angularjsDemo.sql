USE [master]
GO
/****** Object:  Database [AngularjsDemo]    Script Date: 5/20/2016 6:23:59 PM ******/
CREATE DATABASE [AngularjsDemo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AngularjsDemo', FILENAME = N'C:\Users\User\AngularjsDemo.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AngularjsDemo_log', FILENAME = N'C:\Users\User\AngularjsDemo_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AngularjsDemo] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AngularjsDemo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AngularjsDemo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AngularjsDemo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AngularjsDemo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AngularjsDemo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AngularjsDemo] SET ARITHABORT OFF 
GO
ALTER DATABASE [AngularjsDemo] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AngularjsDemo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AngularjsDemo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AngularjsDemo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AngularjsDemo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AngularjsDemo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AngularjsDemo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AngularjsDemo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AngularjsDemo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AngularjsDemo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AngularjsDemo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AngularjsDemo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AngularjsDemo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AngularjsDemo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AngularjsDemo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AngularjsDemo] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AngularjsDemo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AngularjsDemo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AngularjsDemo] SET  MULTI_USER 
GO
ALTER DATABASE [AngularjsDemo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AngularjsDemo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AngularjsDemo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AngularjsDemo] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [AngularjsDemo] SET DELAYED_DURABILITY = DISABLED 
GO
USE [AngularjsDemo]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 5/20/2016 6:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/20/2016 6:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/20/2016 6:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/20/2016 6:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/20/2016 6:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/20/2016 6:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
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

GO
/****** Object:  Table [dbo].[Consumer]    Script Date: 5/20/2016 6:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Consumer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConsumerName] [varchar](100) NULL,
	[ProductId] [int] NULL,
	[ConsumedQuantity] [int] NULL,
	[Amount] [decimal](18, 0) NULL,
	[SoldDate] [datetime] NULL,
	[Paid] [bit] NULL,
 CONSTRAINT [PK_Consumer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/20/2016 6:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [decimal](18, 0) NULL,
	[PurchaseDateTime] [datetime] NULL,
	[SupplierName] [varchar](50) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 5/20/2016 6:23:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 5/20/2016 6:23:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 5/20/2016 6:23:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RoleId]    Script Date: 5/20/2016 6:23:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 5/20/2016 6:23:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 5/20/2016 6:23:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[Consumer.Create]    Script Date: 5/20/2016 6:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Consumer.Create]
@Id int,
@ConsumerName varchar(100),
@ProductId int,
@ConsumedQuantity int,
@Amount decimal(18,0),
@SoldDate datetime,
@Paid bit
AS
BEGIN
INSERT INTO [dbo].[Consumer] VALUES(@ConsumerName,@ProductId,@ConsumedQuantity,@Amount,@SoldDate,@Paid)

UPDATE [dbo].[Product] SET Quantity=Quantity-@ConsumedQuantity WHERE Id=@ProductId

END
GO
/****** Object:  StoredProcedure [dbo].[Consumer.Delete]    Script Date: 5/20/2016 6:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Consumer.Delete]
@ConsumerId int

AS
BEGIN
DELETE FROM [dbo].[Consumer]
WHERE Id=@ConsumerId
END
GO
/****** Object:  StoredProcedure [dbo].[Consumer.Get]    Script Date: 5/20/2016 6:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



--- exec [dbo].[Consumer.Get]

CREATE PROC [dbo].[Consumer.Get]

AS
BEGIN
SELECT c.Id,c.ConsumerName,c.ProductId,p.Name as ProductName,c.ConsumedQuantity,c.Amount,c.SoldDate,c.Paid FROM [dbo].[Consumer] AS c

INNER JOIN [dbo].[Product] AS p

ON p.Id=c.ProductId

 
END


GO
/****** Object:  StoredProcedure [dbo].[Consumer.GetConsumerById]    Script Date: 5/20/2016 6:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Consumer.GetConsumerById]
@ConsumerId int

AS
BEGIN
SELECT Id,ConsumerName,ProductId,ConsumedQuantity,Amount,SoldDate,Paid FROM [dbo].[Consumer]
WHERE Id=@ConsumerId
END
GO
/****** Object:  StoredProcedure [dbo].[Consumer.Update]    Script Date: 5/20/2016 6:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Consumer.Update]
@Id int,
@ConsumerName varchar(100),
@ProductId int,
@ConsumedQuantity int,
@Amount decimal(18,0),
@Paid bit
AS
BEGIN
UPDATE [dbo].[Consumer] 
SET
ConsumerName=@ConsumerName,
ProductId=@ProductId,
ConsumedQuantity=@ConsumedQuantity,
Amount=@Amount,
Paid=@Paid
WHERE Id=@Id

UPDATE [dbo].[Product] SET Quantity=Quantity-@ConsumedQuantity WHERE Id=@ProductId

END
GO
/****** Object:  StoredProcedure [dbo].[ErrorCheck.ConsumedQuantity]    Script Date: 5/20/2016 6:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ErrorCheck.ConsumedQuantity]
@ProductId int

AS

BEGIN

SELECT Id,Name,quantity,UnitPrice FROM [dbo].[Product] WHERE Id=@ProductId
END
GO
/****** Object:  StoredProcedure [dbo].[Product.Create]    Script Date: 5/20/2016 6:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Product.Create]
@Id Int,
@Name varchar(200),
@Quantity int,
@UnitPrice decimal(18,0),
@PurchaseDateTime datetime,
@SupplierName varchar(200)
AS
BEGIN
INSERT INTO [dbo].[Product] VALUES(@Name,@Quantity,@UnitPrice,@PurchaseDateTime,@SupplierName)
END
GO
/****** Object:  StoredProcedure [dbo].[Product.Delete]    Script Date: 5/20/2016 6:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Product.Delete]
@ProductId int
AS
BEGIN
DELETE FROM [dbo].[Product] WHERE Id=@ProductId 
END
GO
/****** Object:  StoredProcedure [dbo].[Product.Get]    Script Date: 5/20/2016 6:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Product.Get]

AS
BEGIN
SELECT Id,Name,Quantity,UnitPrice,PurchaseDateTime,SupplierName FROM [dbo].[Product]

END


--- exec [dbo].[Product.Get] 0,''
GO
/****** Object:  StoredProcedure [dbo].[Product.GetProductById]    Script Date: 5/20/2016 6:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Product.GetProductById]
@ProductId Int
AS
BEGIN
SELECT Id,Name,Quantity,UnitPrice,PurchaseDateTime,SupplierName FROM [dbo].[Product] WHERE Id=@ProductId
END
GO
/****** Object:  StoredProcedure [dbo].[Product.Update]    Script Date: 5/20/2016 6:23:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Product.Update]
@Id Int,
@Name varchar(200),
@Quantity int,
@UnitPrice decimal(18,0),
@SupplierName varchar(200)
AS
BEGIN
UPDATE  [dbo].[Product] SET
Name=@Name,
Quantity=@Quantity,
UnitPrice=@UnitPrice,

SupplierName=@SupplierName
WHERE Id=@Id
END
GO
USE [master]
GO
ALTER DATABASE [AngularjsDemo] SET  READ_WRITE 
GO

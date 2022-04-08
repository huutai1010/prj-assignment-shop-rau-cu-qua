USE master;
GO;
DROP DATABASE [VegetableManagement];

CREATE DATABASE [VegetableManagement];
USE [VegetableManagement];
GO;

CREATE TABLE [dbo].[tblRoles] (
    [roleID] [nvarchar](50) NOT NULL,
    [roleName] [nvarchar](50) NULL,
    [status] [bit] NULL,
    CONSTRAINT PK_roleID PRIMARY KEY (roleID) 
)

CREATE TABLE [dbo].[tblUsers] (
    [userID] [nvarchar](50) NOT NULL,
	[fullName] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[roleID] [nvarchar](50) NOT NULL,
    [address] [nvarchar](50) NULL,
    [birthday] [DATE] NULL,
    [phone] [nvarchar](50) NULL,
    [email] [nvarchar](50) NULL,
	[status] [bit] NULL,
    CONSTRAINT PK_userID PRIMARY KEY (userID),
    CONSTRAINT FK_roleID FOREIGN KEY (roleID) REFERENCES tblRoles(roleID)
)



CREATE TABLE [dbo].[tblOrder] (
    [orderID] [nvarchar](50) NOT NULL,
    [orderDate] DATE NULL,
    [total] INT NULL,
    [userID] [nvarchar](50) NOT NULL,
    [status] [bit] NULL,
    CONSTRAINT PK_orderID PRIMARY KEY (orderID),
    CONSTRAINT FK_userID FOREIGN KEY (userID) REFERENCES tblUsers(userID)
)

CREATE TABLE [dbo].[tblCategory] (
    [categoryID] [nvarchar](50) NOT NULL,
    [categoryName] [nvarchar](50) NULL,
    [status] [bit] NULL,
    CONSTRAINT PK_categoryID PRIMARY KEY (categoryID)
)

CREATE TABLE [dbo].[tblProduct] (
    [productID] [nvarchar](50) NOT NULL,
    [productName] [nvarchar](50) NULL,
    [image] [nvarchar](200) NULL,
    [price] FLOAT NULL,
    [quantity] INT NULL,
    [categoryID] [nvarchar](50) NOT NULL,
    [importDate] DATE,
    [usingDate] DATE,
    [status] [bit] NULL,
    CONSTRAINT PK_productID PRIMARY KEY (productID),
    CONSTRAINT FK_categoryID FOREIGN KEY (categoryID) REFERENCES tblCategory(categoryID)
)

CREATE TABLE [dbo].[tblOrderDetail](
    [detailID] [nvarchar](50) NOT NULL,
    [price] FLOAT NULL,
    [quantity] INT NULL,
    [orderID] [nvarchar](50) NOT NULL,
    [productID] [nvarchar](50) NOT NULL,
    [status] [bit] NULL,
    CONSTRAINT PK_detailID PRIMARY KEY (detailID),
    CONSTRAINT FK_orderID FOREIGN KEY (orderID) REFERENCES tblOrder(orderID),
    CONSTRAINT FK_productID FOREIGN KEY (productID) REFERENCES tblProduct(productID)
)
GO;

DROP TABLE [dbo].[tblUsers];
DROP TABLE [dbo].[tblRoles];
DROP TABLE [dbo].[tblOrder];
DROP TABLE [dbo].[tblOrderDetail];
DROP TABLE [dbo].[tblProduct];
DROP TABLE [dbo].[tblCategory];
GO;

INSERT INTO [dbo].[tblCategory] ([categoryID], [categoryName], [status]) VALUES('1', N'Rau lá', 1);
INSERT INTO [dbo].[tblCategory] ([categoryID], [categoryName], [status]) VALUES('2', N'Rau củ', 1);
INSERT INTO [dbo].[tblCategory] ([categoryID], [categoryName], [status]) VALUES('3', N'Trái cây', 1);
GO;


INSERT INTO [dbo].[tblRoles] ([roleID], [roleName], [status]) VALUES('1', 'US', 1);
INSERT INTO [dbo].[tblRoles] ([roleID], [roleName], [status]) VALUES('2', 'AD', 1);
GO

INSERT INTO [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [address], [birthday], [phone], [email], [status])
VALUES ('admin', 'Admin', '1', 1, 'TP.HCM', '2001-01-01', '0123592821', 'admin@gmail.com', 1);
INSERT INTO [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [address], [birthday], [phone], [email], [status])
VALUES ('SE150315', N'Mai Hữu Tài', '1', 2, 'TP.HCM', '2001-10-10', '0858155621', 'huutaia2@gmail.com', 1);
INSERT INTO [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [address], [birthday], [phone], [email], [status])
VALUES ('SE150316', N'Nguyễn Văn A', '1', 2, N'Hà Nội', '1999-10-20', '0340568943', 'nguyenvana@gmail.com', 1);
INSERT INTO [dbo].[tblUsers] ([userID], [fullName], [password], [roleID], [address], [birthday], [phone], [email], [status])
VALUES ('SE150317', N'Trần Văn B', '1', 2, N'Đà Nẵng', '1995-01-01', '04350245565', 'tranvanb@gmail.com', 1);

INSERT INTO [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [categoryID], [importDate], [usingDate], [status]) 
VALUES ('1', N'Bí xanh', 'https://m.soibien.vn/media/img/product/365/03/Cu-qua-VietGAP-Bi-xanh_3801522117362.png
', 8500, 10, 2, '2022-03-01', '2022-03-30', 1);
INSERT INTO [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [categoryID], [importDate], [usingDate], [status]) 
VALUES ('2', N'Cà rốt', N'https://i0.wp.com/uforganics.com.vn/wp-content/uploads/2019/06/003-cà-rốt-baby-hữu-cơ-organic-ufo-univers-farms-organics-sạch-tiêu-chuẩn-châu-âu.png?fit=800%2C800&ssl=1', 8500, 5, 2, '2022-3-1', '2022-3-30', 1);
INSERT INTO [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [categoryID], [importDate], [usingDate], [status]) 
VALUES ('3', N'Khoai lang', 'https://fujimart.vn/image/cache/catalog/rau%20cu%20qua/186cfb2cb7a203903484e442d732a087-502x502.png
', 17000, 8, 2, '2022-3-1', '2022-03-30', 1);
INSERT INTO [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [categoryID], [importDate], [usingDate], [status]) 
VALUES ('4', N'Cà chua', 'https://cdn.picpng.com/tomato/shape-tomato-28575.png
', 16000, 5, 2, '2022-3-1', '2022-03-30', 1);
INSERT INTO [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [categoryID], [importDate], [usingDate], [status]) 
VALUES ('5', N'Khổ qua', 'https://hoayeuthuong.com/hinh-hoa-tuoi/moingay/11917_kho-quamuop-dang-kg.jpg
', 8500, 20, 2, '2022-3-1', '2022-03-30', 1);
INSERT INTO [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [categoryID], [importDate], [usingDate], [status]) 
VALUES ('6', N'Cải ngọt', 'https://m.soibien.vn/media/img/product/365/03/Rau-qua-VietGAP-Cai-ngot_d981522123660.png
', 19000, 10, 1, '2022-3-1', '2022-03-30', 1);
INSERT INTO [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [categoryID], [importDate], [usingDate], [status]) 
VALUES ('7', N'Bông cải', 'https://khothietke.net/wp-content/uploads/2021/05/PNGKhothietke.net-03269.png
', 13000, 10, 1, '2022-3-1', '2022-03-30', 1);
INSERT INTO [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [categoryID], [importDate], [usingDate], [status]) 
VALUES ('8', N'Rau dền', 'https://storage.googleapis.com/mm-online-bucket/ecommerce-website/uploads/media/240935.jpg
', 7500, 10, 1, '2022-3-1', '2022-03-30', 1);
INSERT INTO [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [categoryID], [importDate], [usingDate], [status]) 
VALUES ('9', N'Dâu tây', 'https://product.hstatic.net/200000281397/product/upload_8c0e7b0b1e624506b013bc342c779f90.jpg
', 10000, 10, 3, '2022-3-1', '2022-03-30', 1);
INSERT INTO [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [categoryID], [importDate], [usingDate], [status]) 
VALUES ('10', N'Táo', 'https://halinh82.files.wordpress.com/2010/03/qua-tao1.jpg
', 8500, 10, 3, '2022-3-1', '2022-03-30', 1);
INSERT INTO [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [categoryID], [importDate], [usingDate], [status]) 
VALUES ('11', N'Chuối', 'https://salt.tikicdn.com/ts/product/f6/3a/99/b144ddb5309badcaca7b6d7b2b23c9f9.jpg
', 27000, 10, 3, '2022-3-1', '2022-03-30', 1);
INSERT INTO [dbo].[tblProduct] ([productID], [productName], [image], [price], [quantity], [categoryID], [importDate], [usingDate], [status]) 
VALUES ('12', N'Quýt', 'https://maringimenez.com/wp-content/uploads/2019/11/MANDARINA.png
', 8500, 10, 3, '2022-3-1', '2022-03-30', 1);
GO;

INSERT INTO [dbo].[tblOrder] ([orderID], [orderDate], [total], [userID], [status]) VALUES('1', '2022-03-15', 2, 'SE150315', 1);
INSERT INTO [dbo].[tblOrder] ([orderID], [orderDate], [total], [userID], [status]) VALUES('2', '2022-02-06', 3, 'SE150317', 1);
INSERT INTO [dbo].[tblOrder] ([orderID], [orderDate], [total], [userID], [status]) VALUES('3', '2022-01-04', 5, 'SE150316', 1);
GO;

INSERT INTO [dbo].[tblOrderDetail] ([detailID], [price], [quantity], [orderID], [productID], [status]) 
VALUES ('1', 8500, 2, '2', '12', 1);
INSERT INTO [dbo].[tblOrderDetail] ([detailID], [price], [quantity], [orderID], [productID], [status]) 
VALUES ('2', 13000, 1, '1', '7', 1);
INSERT INTO [dbo].[tblOrderDetail] ([detailID], [price], [quantity], [orderID], [productID], [status]) 
VALUES ('3', 16000, 2, '3', '4', 1);
GO;

SELECT * FROM [dbo].[tblCategory];
SELECT * FROM [dbo].[tblRoles];
SELECT * FROM [dbo].[tblUsers];
SELECT * FROM [dbo].[tblOrder];
SELECT * FROM [dbo].[tblProduct];
SELECT * FROM [dbo].[tblOrderDetail];

SELECT u.fullName, u.roleID, r.roleName FROM tblUsers u, tblRoles r WHERE u.roleID = r.roleID AND u.userID='SE150315' AND u.password='1';





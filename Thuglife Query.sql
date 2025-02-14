USE [ThugLife]
GO
/****** Object:  Table [dbo].[VendorPayment]    Script Date: 05/04/2018 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VendorPayment](
	[Payment_No] [bigint] NOT NULL,
	[Payment_Date] [datetime] NULL,
	[Inv_No] [varchar](255) NULL,
	[Customer_Name] [varchar](255) NULL,
	[Bill_Amount] [numeric](18, 2) NULL,
	[Paid_Amount] [numeric](18, 2) NULL,
	[Balance_Amount] [numeric](18, 2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[VendorPayment] ([Payment_No], [Payment_Date], [Inv_No], [Customer_Name], [Bill_Amount], [Paid_Amount], [Balance_Amount]) VALUES (1, CAST(0x0000A8C500000000 AS DateTime), N'AA234', N'AJAY', CAST(8500.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)), CAST(7000.00 AS Numeric(18, 2)))
INSERT [dbo].[VendorPayment] ([Payment_No], [Payment_Date], [Inv_No], [Customer_Name], [Bill_Amount], [Paid_Amount], [Balance_Amount]) VALUES (2, CAST(0x0000A8C500000000 AS DateTime), N'AA234', N'AJAY', CAST(8500.00 AS Numeric(18, 2)), CAST(4000.00 AS Numeric(18, 2)), CAST(3000.00 AS Numeric(18, 2)))
INSERT [dbo].[VendorPayment] ([Payment_No], [Payment_Date], [Inv_No], [Customer_Name], [Bill_Amount], [Paid_Amount], [Balance_Amount]) VALUES (3, CAST(0x0000A8CF00000000 AS DateTime), N'i4', N'VIJAY1', CAST(1500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)))
/****** Object:  Table [dbo].[Vendor_Master_Table]    Script Date: 05/04/2018 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vendor_Master_Table](
	[Vendor_Code] [bigint] NULL,
	[Vendor_Name] [varchar](255) NULL,
	[Vendor_Address] [varchar](255) NULL,
	[TIN] [varchar](255) NULL,
	[Aadhaar] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Mobile] [varchar](255) NULL,
	[Bank_Name] [varchar](255) NULL,
	[Branch] [varchar](255) NULL,
	[Account_No] [varchar](255) NULL,
	[Account_Name] [varchar](255) NULL,
	[Account_Type] [varchar](255) NULL,
	[Ifsc] [varchar](255) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Vendor_Master_Table] ([Vendor_Code], [Vendor_Name], [Vendor_Address], [TIN], [Aadhaar], [Email], [Mobile], [Bank_Name], [Branch], [Account_No], [Account_Name], [Account_Type], [Ifsc]) VALUES (1, N'VIJAY1', N'ATTUR1', N'1', N'2', N'VIJAY1@GMAIL.COM', N'7708', N'CANARA', N'ATTUR', N'2827', N'VIJAY', N'SAVINGS', N'CNRB000')
/****** Object:  Table [dbo].[Stock_Master_Table]    Script Date: 05/04/2018 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stock_Master_Table](
	[Barcode] [varchar](255) NULL,
	[Brand_Name] [varchar](255) NULL,
	[Product_Name] [varchar](255) NULL,
	[Size] [varchar](255) NULL,
	[Quantity] [bigint] NULL,
	[Description] [varchar](255) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sales_Return_Table]    Script Date: 05/04/2018 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sales_Return_Table](
	[Inv_No] [bigint] NULL,
	[Bill_No] [bigint] NULL,
	[Customer_Name] [varchar](255) NULL,
	[Barcode] [varchar](255) NULL,
	[Product] [varchar](255) NULL,
	[Status] [varchar](255) NULL,
	[Reason] [varchar](255) NULL,
	[Quantity] [bigint] NULL,
	[Amount] [numeric](18, 2) NULL,
	[Return_Date] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sales_Return_Table] ([Inv_No], [Bill_No], [Customer_Name], [Barcode], [Product], [Status], [Reason], [Quantity], [Amount], [Return_Date]) VALUES (1, 2, N'PRABHA', N'1', N'RAYMONDSHIRTLARGE', N'RETURN', N'Return', 1, CAST(500.00 AS Numeric(18, 2)), CAST(0x0000A8CB00000000 AS DateTime))
INSERT [dbo].[Sales_Return_Table] ([Inv_No], [Bill_No], [Customer_Name], [Barcode], [Product], [Status], [Reason], [Quantity], [Amount], [Return_Date]) VALUES (2, 2, N'PRABHA', N'1', N'RAYMONDSHIRTLARGE', N'RETURN', N'Return', 1, CAST(500.00 AS Numeric(18, 2)), CAST(0x0000A8CB00000000 AS DateTime))
INSERT [dbo].[Sales_Return_Table] ([Inv_No], [Bill_No], [Customer_Name], [Barcode], [Product], [Status], [Reason], [Quantity], [Amount], [Return_Date]) VALUES (3, 2, N'PRABHA', N'1', N'RAYMONDSHIRTLARGE', N'RETURN', N'Return', 1, CAST(500.00 AS Numeric(18, 2)), CAST(0x0000A8CB00000000 AS DateTime))
INSERT [dbo].[Sales_Return_Table] ([Inv_No], [Bill_No], [Customer_Name], [Barcode], [Product], [Status], [Reason], [Quantity], [Amount], [Return_Date]) VALUES (4, 2, N'PRABHA', N'1', N'RAYMONDSHIRTLARGE', N'DEFECT', N'Damage', 1, CAST(500.00 AS Numeric(18, 2)), CAST(0x0000A8CB00000000 AS DateTime))
INSERT [dbo].[Sales_Return_Table] ([Inv_No], [Bill_No], [Customer_Name], [Barcode], [Product], [Status], [Reason], [Quantity], [Amount], [Return_Date]) VALUES (5, 2, N'PRABHA', N'2', N'RAYMONDSHIRTXXL', N'DEFECT', N'dafsdi', 1, CAST(650.00 AS Numeric(18, 2)), CAST(0x0000A8CB00000000 AS DateTime))
/****** Object:  Table [dbo].[Rate_Master_Table]    Script Date: 05/04/2018 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rate_Master_Table](
	[Barcode] [varchar](255) NULL,
	[Brand_Name] [varchar](255) NULL,
	[Product_Name] [varchar](255) NULL,
	[Size] [varchar](255) NULL,
	[Purchase_Price] [numeric](18, 2) NULL,
	[MRP] [numeric](18, 2) NULL,
	[Retail_Price] [numeric](18, 2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Purchase_Return_Table]    Script Date: 05/04/2018 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Purchase_Return_Table](
	[Inv_No] [varchar](255) NULL,
	[Customer_Name] [varchar](255) NULL,
	[Barcode] [varchar](255) NULL,
	[product] [varchar](255) NULL,
	[Status] [varchar](255) NULL,
	[Reason] [varchar](255) NULL,
	[Quantity] [numeric](18, 0) NULL,
	[Amount] [numeric](18, 0) NULL,
	[Return_Date] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Purchase_Return_Table] ([Inv_No], [Customer_Name], [Barcode], [product], [Status], [Reason], [Quantity], [Amount], [Return_Date]) VALUES (N'AA234', N'AJAY', N'1', N'RAYMONDSHIRTLARGE', N'RETURN', N'Damage', CAST(2 AS Numeric(18, 0)), CAST(800 AS Numeric(18, 0)), CAST(0x0000A8CA00000000 AS DateTime))
INSERT [dbo].[Purchase_Return_Table] ([Inv_No], [Customer_Name], [Barcode], [product], [Status], [Reason], [Quantity], [Amount], [Return_Date]) VALUES (N'AA234', N'AJAY', N'1', N'RAYMONDSHIRTLARGE', N'RETURN', N'Damage', CAST(1 AS Numeric(18, 0)), CAST(400 AS Numeric(18, 0)), CAST(0x0000A8CA00000000 AS DateTime))
INSERT [dbo].[Purchase_Return_Table] ([Inv_No], [Customer_Name], [Barcode], [product], [Status], [Reason], [Quantity], [Amount], [Return_Date]) VALUES (N'AA234', N'AJAY', N'1', N'RAYMONDSHIRTLARGE', N'RETURN', N'Damage', CAST(5 AS Numeric(18, 0)), CAST(2000 AS Numeric(18, 0)), CAST(0x0000A8CA00000000 AS DateTime))
INSERT [dbo].[Purchase_Return_Table] ([Inv_No], [Customer_Name], [Barcode], [product], [Status], [Reason], [Quantity], [Amount], [Return_Date]) VALUES (N'AA234', N'AJAY', N'1', N'RAYMONDSHIRTLARGE', N'RETURN', N'Damage', CAST(2 AS Numeric(18, 0)), CAST(800 AS Numeric(18, 0)), CAST(0x0000A8CA00000000 AS DateTime))
INSERT [dbo].[Purchase_Return_Table] ([Inv_No], [Customer_Name], [Barcode], [product], [Status], [Reason], [Quantity], [Amount], [Return_Date]) VALUES (N'AA234', N'AJAY', N'', N'ALL PRODUCT', N'RETURN', N'', CAST(0 AS Numeric(18, 0)), CAST(4500 AS Numeric(18, 0)), CAST(0x0000A8CA00000000 AS DateTime))
/****** Object:  Table [dbo].[Product_Master_Table]    Script Date: 05/04/2018 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product_Master_Table](
	[Barcode] [varchar](255) NULL,
	[Brand_Name] [varchar](255) NULL,
	[Product_Name] [varchar](255) NULL,
	[Size] [varchar](255) NULL,
	[Description] [varchar](200) NULL,
	[Quantity] [bigint] NULL,
	[MRP] [numeric](18, 2) NULL,
	[Retail] [numeric](18, 2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Product_Master_Table] ([Barcode], [Brand_Name], [Product_Name], [Size], [Description], [Quantity], [MRP], [Retail]) VALUES (N'1', N'RAYMOND', N'SHIRT', N'LARGE', N'RAYMONDSHIRTLARGE', 13, CAST(550.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)))
INSERT [dbo].[Product_Master_Table] ([Barcode], [Brand_Name], [Product_Name], [Size], [Description], [Quantity], [MRP], [Retail]) VALUES (N'2', N'RAYMOND', N'SHIRT', N'XXL', N'RAYMONDSHIRTXXL', 24, CAST(750.00 AS Numeric(18, 2)), CAST(650.00 AS Numeric(18, 2)))
INSERT [dbo].[Product_Master_Table] ([Barcode], [Brand_Name], [Product_Name], [Size], [Description], [Quantity], [MRP], [Retail]) VALUES (N'3', N'OTTO', N'SHIRT', N'SMALL', N'OTTOSHIRTSMALL', 29, CAST(450.00 AS Numeric(18, 2)), CAST(400.00 AS Numeric(18, 2)))
INSERT [dbo].[Product_Master_Table] ([Barcode], [Brand_Name], [Product_Name], [Size], [Description], [Quantity], [MRP], [Retail]) VALUES (N'BAND', N'', N'BAND', N'', N'BAND', 8, CAST(15.00 AS Numeric(18, 2)), CAST(10.00 AS Numeric(18, 2)))
/****** Object:  Table [dbo].[Product]    Script Date: 05/04/2018 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[Name] [varchar](255) NULL,
	[Size] [varchar](255) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NormalBill]    Script Date: 05/04/2018 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NormalBill](
	[Bill_No] [bigint] NULL,
	[Bill_Date] [datetime] NULL,
	[Bill_Time] [varchar](255) NULL,
	[Customer_Name] [varchar](255) NULL,
	[Mode] [varchar](255) NULL,
	[MobileNo] [varchar](255) NULL,
	[AadhaarNo] [varchar](255) NULL,
	[Barcode] [varchar](255) NULL,
	[Brand_Name] [varchar](255) NULL,
	[Product_Name] [varchar](255) NULL,
	[Size] [varchar](255) NULL,
	[Quantity] [numeric](18, 0) NULL,
	[Rate] [numeric](18, 2) NULL,
	[Amount] [numeric](18, 2) NULL,
	[Total_Amount] [numeric](18, 2) NULL,
	[Tax_Per] [numeric](18, 2) NULL,
	[Tot_CGST] [numeric](18, 2) NULL,
	[Tot_SGST] [numeric](18, 2) NULL,
	[Tax_Amount] [numeric](18, 2) NULL,
	[Discount] [numeric](18, 2) NULL,
	[Net_Amount] [numeric](18, 2) NULL,
	[Bill_By] [varchar](255) NULL,
	[DiscountPer] [numeric](18, 2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NormalBill] ([Bill_No], [Bill_Date], [Bill_Time], [Customer_Name], [Mode], [MobileNo], [AadhaarNo], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By], [DiscountPer]) VALUES (1, CAST(0x0000A8C800000000 AS DateTime), N'12:46:53', N'KARAN1', N'CREDIT', N'', N'', N'1', N'RAYMOND', N'SHIRT', N'LARGE', CAST(1 AS Numeric(18, 0)), CAST(500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(25.00 AS Numeric(18, 2)), CAST(475.00 AS Numeric(18, 2)), N'', CAST(5.00 AS Numeric(18, 2)))
INSERT [dbo].[NormalBill] ([Bill_No], [Bill_Date], [Bill_Time], [Customer_Name], [Mode], [MobileNo], [AadhaarNo], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By], [DiscountPer]) VALUES (3, CAST(0x0000A8CF00000000 AS DateTime), N'17:30:16', N'PRABHA', N'CASH', N'', N'', N'1', N'RAYMOND', N'SHIRT', N'LARGE', CAST(1 AS Numeric(18, 0)), CAST(500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), N'', CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[NormalBill] ([Bill_No], [Bill_Date], [Bill_Time], [Customer_Name], [Mode], [MobileNo], [AadhaarNo], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By], [DiscountPer]) VALUES (2, CAST(0x0000A8CA00000000 AS DateTime), N'12:49:44', N'PRABHA', N'CREDIT', N'', N'', N'2', N'RAYMOND', N'SHIRT', N'XXL', CAST(1 AS Numeric(18, 0)), CAST(650.00 AS Numeric(18, 2)), CAST(650.00 AS Numeric(18, 2)), CAST(1150.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(115.00 AS Numeric(18, 2)), CAST(535.00 AS Numeric(18, 2)), N'', CAST(5.00 AS Numeric(18, 2)))
INSERT [dbo].[NormalBill] ([Bill_No], [Bill_Date], [Bill_Time], [Customer_Name], [Mode], [MobileNo], [AadhaarNo], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By], [DiscountPer]) VALUES (4, CAST(0x0000A8CF00000000 AS DateTime), N'17:30:16', N'PRABHA', N'CARD', N'', N'', N'2', N'RAYMOND', N'SHIRT', N'XXL', CAST(1 AS Numeric(18, 0)), CAST(650.00 AS Numeric(18, 2)), CAST(650.00 AS Numeric(18, 2)), CAST(650.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(650.00 AS Numeric(18, 2)), N'', CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[NormalBill] ([Bill_No], [Bill_Date], [Bill_Time], [Customer_Name], [Mode], [MobileNo], [AadhaarNo], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By], [DiscountPer]) VALUES (5, CAST(0x0000A8CF00000000 AS DateTime), N'17:30:16', N'PRABHA', N'PAYTM', N'', N'', N'2', N'RAYMOND', N'SHIRT', N'XXL', CAST(1 AS Numeric(18, 0)), CAST(650.00 AS Numeric(18, 2)), CAST(650.00 AS Numeric(18, 2)), CAST(650.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(650.00 AS Numeric(18, 2)), N'', CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[NormalBill] ([Bill_No], [Bill_Date], [Bill_Time], [Customer_Name], [Mode], [MobileNo], [AadhaarNo], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By], [DiscountPer]) VALUES (6, CAST(0x0000A8CF00000000 AS DateTime), N'17:30:16', N'PRABHA', N'CREDIT', N'', N'', N'1', N'RAYMOND', N'SHIRT', N'LARGE', CAST(2 AS Numeric(18, 0)), CAST(500.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), N'', CAST(0.00 AS Numeric(18, 2)))
/****** Object:  Table [dbo].[Normal_Bill_Table]    Script Date: 05/04/2018 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Normal_Bill_Table](
	[Bill_No] [bigint] NULL,
	[Bill_Date] [datetime] NULL,
	[Customer_Name] [varchar](255) NULL,
	[Mode] [varchar](255) NULL,
	[Bill_Amount] [numeric](18, 2) NULL,
	[Received_Amount] [numeric](18, 2) NULL,
	[Balance_Amount] [numeric](18, 2) NULL,
	[Status] [varchar](255) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Normal_Bill_Table] ([Bill_No], [Bill_Date], [Customer_Name], [Mode], [Bill_Amount], [Received_Amount], [Balance_Amount], [Status]) VALUES (1, CAST(0x0000A8C800000000 AS DateTime), N'KARAN1', N'CREDIT', CAST(475.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(175.00 AS Numeric(18, 2)), N'PENDING')
INSERT [dbo].[Normal_Bill_Table] ([Bill_No], [Bill_Date], [Customer_Name], [Mode], [Bill_Amount], [Received_Amount], [Balance_Amount], [Status]) VALUES (2, CAST(0x0000A8CA00000000 AS DateTime), N'PRABHA', N'CREDIT', CAST(535.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(1185.00 AS Numeric(18, 2)), N'PENDING')
INSERT [dbo].[Normal_Bill_Table] ([Bill_No], [Bill_Date], [Customer_Name], [Mode], [Bill_Amount], [Received_Amount], [Balance_Amount], [Status]) VALUES (3, CAST(0x0000A8CF00000000 AS DateTime), N'PRABHA', N'CASH', CAST(500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'CLOSE')
INSERT [dbo].[Normal_Bill_Table] ([Bill_No], [Bill_Date], [Customer_Name], [Mode], [Bill_Amount], [Received_Amount], [Balance_Amount], [Status]) VALUES (4, CAST(0x0000A8CF00000000 AS DateTime), N'PRABHA', N'CARD', CAST(650.00 AS Numeric(18, 2)), CAST(650.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'CLOSE')
INSERT [dbo].[Normal_Bill_Table] ([Bill_No], [Bill_Date], [Customer_Name], [Mode], [Bill_Amount], [Received_Amount], [Balance_Amount], [Status]) VALUES (5, CAST(0x0000A8CF00000000 AS DateTime), N'PRABHA', N'PAYTM', CAST(650.00 AS Numeric(18, 2)), CAST(650.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'CLOSE')
INSERT [dbo].[Normal_Bill_Table] ([Bill_No], [Bill_Date], [Customer_Name], [Mode], [Bill_Amount], [Received_Amount], [Balance_Amount], [Status]) VALUES (6, CAST(0x0000A8CF00000000 AS DateTime), N'PRABHA', N'CREDIT', CAST(1000.00 AS Numeric(18, 2)), CAST(800.00 AS Numeric(18, 2)), CAST(200.00 AS Numeric(18, 2)), N'PENDING')
/****** Object:  Table [dbo].[login]    Script Date: 05/04/2018 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[login](
	[Role] [varchar](255) NULL,
	[UserName] [varchar](255) NULL,
	[Password] [varchar](255) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[login] ([Role], [UserName], [Password]) VALUES (N'ADMIN', N'ADMIN', N'')
/****** Object:  Table [dbo].[Invoice_Table]    Script Date: 05/04/2018 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Invoice_Table](
	[Inv_No] [varchar](255) NULL,
	[Inv_Date] [datetime] NULL,
	[Vendor_Name] [varchar](255) NULL,
	[Mode] [varchar](255) NULL,
	[Bill_Amount] [numeric](18, 2) NULL,
	[Received_Amount] [numeric](18, 2) NULL,
	[Balance_Amount] [numeric](18, 2) NULL,
	[Status] [varchar](255) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Invoice_Table] ([Inv_No], [Inv_Date], [Vendor_Name], [Mode], [Bill_Amount], [Received_Amount], [Balance_Amount], [Status]) VALUES (N'VI', CAST(0x0000A85D00000000 AS DateTime), N'VIJAY', N'CASH', CAST(19055.00 AS Numeric(18, 2)), CAST(19055.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'CLOSE')
INSERT [dbo].[Invoice_Table] ([Inv_No], [Inv_Date], [Vendor_Name], [Mode], [Bill_Amount], [Received_Amount], [Balance_Amount], [Status]) VALUES (N'123', CAST(0x0000A8D600000000 AS DateTime), N'KANCHI', N'CASH', CAST(51500.00 AS Numeric(18, 2)), CAST(51500.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'CLOSE')
INSERT [dbo].[Invoice_Table] ([Inv_No], [Inv_Date], [Vendor_Name], [Mode], [Bill_Amount], [Received_Amount], [Balance_Amount], [Status]) VALUES (N'AA123', CAST(0x0000A83C00000000 AS DateTime), N'AJAY', N'CASH', CAST(10800.00 AS Numeric(18, 2)), CAST(10800.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'CLOSE')
INSERT [dbo].[Invoice_Table] ([Inv_No], [Inv_Date], [Vendor_Name], [Mode], [Bill_Amount], [Received_Amount], [Balance_Amount], [Status]) VALUES (N'i1', CAST(0x0000A8CF00000000 AS DateTime), N'VIJAY1', N'CASH', CAST(1000.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'CLOSE')
INSERT [dbo].[Invoice_Table] ([Inv_No], [Inv_Date], [Vendor_Name], [Mode], [Bill_Amount], [Received_Amount], [Balance_Amount], [Status]) VALUES (N'i2', CAST(0x0000A8CF00000000 AS DateTime), N'VIJAY1', N'CARD', CAST(750.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'CLOSE')
INSERT [dbo].[Invoice_Table] ([Inv_No], [Inv_Date], [Vendor_Name], [Mode], [Bill_Amount], [Received_Amount], [Balance_Amount], [Status]) VALUES (N'i3', CAST(0x0000A8CF00000000 AS DateTime), N'VIJAY1', N'PAYTM', CAST(500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'CLOSE')
INSERT [dbo].[Invoice_Table] ([Inv_No], [Inv_Date], [Vendor_Name], [Mode], [Bill_Amount], [Received_Amount], [Balance_Amount], [Status]) VALUES (N'i4', CAST(0x0000A8CF00000000 AS DateTime), N'VIJAY1', N'CREDIT', CAST(1500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), N'PENDING')
/****** Object:  Table [dbo].[Invoice_Bill]    Script Date: 05/04/2018 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Invoice_Bill](
	[Inv_No] [varchar](255) NULL,
	[Inv_Date] [datetime] NULL,
	[Vendor_Name] [varchar](255) NULL,
	[Mode] [varchar](255) NULL,
	[Barcode] [varchar](255) NULL,
	[Brand_Name] [varchar](255) NULL,
	[Product_Name] [varchar](255) NULL,
	[Size] [varchar](255) NULL,
	[Quantity] [numeric](18, 0) NULL,
	[Rate] [numeric](18, 2) NULL,
	[Amount] [numeric](18, 2) NULL,
	[Total_Amount] [numeric](18, 2) NULL,
	[Tax_Per] [numeric](18, 2) NULL,
	[Tot_CGST] [numeric](18, 2) NULL,
	[Tot_SGST] [numeric](18, 2) NULL,
	[Tax_Amount] [numeric](18, 2) NULL,
	[Discount] [numeric](18, 2) NULL,
	[Net_Amount] [numeric](18, 2) NULL,
	[Bill_By] [varchar](255) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Invoice_Bill] ([Inv_No], [Inv_Date], [Vendor_Name], [Mode], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By]) VALUES (N'VI', CAST(0x0000A85D00000000 AS DateTime), N'VIJAY', N'CASH', N'1', N'RAYMOND', N'SHIRT', N'LARGE', CAST(10 AS Numeric(18, 0)), CAST(400.00 AS Numeric(18, 2)), CAST(4000.00 AS Numeric(18, 2)), CAST(18500.00 AS Numeric(18, 2)), CAST(3.00 AS Numeric(18, 2)), CAST(277.50 AS Numeric(18, 2)), CAST(277.50 AS Numeric(18, 2)), CAST(555.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(19055.00 AS Numeric(18, 2)), N'')
INSERT [dbo].[Invoice_Bill] ([Inv_No], [Inv_Date], [Vendor_Name], [Mode], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By]) VALUES (N'VI', CAST(0x0000A85D00000000 AS DateTime), N'VIJAY', N'CASH', N'2', N'RAYMOND', N'SHIRT', N'XL', CAST(20 AS Numeric(18, 0)), CAST(500.00 AS Numeric(18, 2)), CAST(10000.00 AS Numeric(18, 2)), CAST(18500.00 AS Numeric(18, 2)), CAST(3.00 AS Numeric(18, 2)), CAST(277.50 AS Numeric(18, 2)), CAST(277.50 AS Numeric(18, 2)), CAST(555.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(19055.00 AS Numeric(18, 2)), N'')
INSERT [dbo].[Invoice_Bill] ([Inv_No], [Inv_Date], [Vendor_Name], [Mode], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By]) VALUES (N'VI', CAST(0x0000A85D00000000 AS DateTime), N'VIJAY', N'CASH', N'3', N'OTTO', N'SHIRT', N'SMALL', CAST(15 AS Numeric(18, 0)), CAST(300.00 AS Numeric(18, 2)), CAST(4500.00 AS Numeric(18, 2)), CAST(18500.00 AS Numeric(18, 2)), CAST(3.00 AS Numeric(18, 2)), CAST(277.50 AS Numeric(18, 2)), CAST(277.50 AS Numeric(18, 2)), CAST(555.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(19055.00 AS Numeric(18, 2)), N'')
INSERT [dbo].[Invoice_Bill] ([Inv_No], [Inv_Date], [Vendor_Name], [Mode], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By]) VALUES (N'123', CAST(0x0000A8D600000000 AS DateTime), N'KANCHI', N'CASH', N'KANCHI', N'KANCHI', N'PATTU SAREE', N'', CAST(10 AS Numeric(18, 0)), CAST(5000.00 AS Numeric(18, 2)), CAST(50000.00 AS Numeric(18, 2)), CAST(50000.00 AS Numeric(18, 2)), CAST(3.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(51500.00 AS Numeric(18, 2)), N'')
INSERT [dbo].[Invoice_Bill] ([Inv_No], [Inv_Date], [Vendor_Name], [Mode], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By]) VALUES (N'AA123', CAST(0x0000A83C00000000 AS DateTime), N'AJAY', N'CASH', N'1', N'RAYMOND', N'SHIRT', N'LARGE', CAST(10 AS Numeric(18, 0)), CAST(400.00 AS Numeric(18, 2)), CAST(4000.00 AS Numeric(18, 2)), CAST(12000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(10.00 AS Numeric(18, 2)), CAST(10800.00 AS Numeric(18, 2)), N'')
INSERT [dbo].[Invoice_Bill] ([Inv_No], [Inv_Date], [Vendor_Name], [Mode], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By]) VALUES (N'AA123', CAST(0x0000A83C00000000 AS DateTime), N'AJAY', N'CASH', N'2', N'RAYMOND', N'SHIRT', N'XL', CAST(10 AS Numeric(18, 0)), CAST(450.00 AS Numeric(18, 2)), CAST(4500.00 AS Numeric(18, 2)), CAST(12000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(10.00 AS Numeric(18, 2)), CAST(10800.00 AS Numeric(18, 2)), N'')
INSERT [dbo].[Invoice_Bill] ([Inv_No], [Inv_Date], [Vendor_Name], [Mode], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By]) VALUES (N'AA123', CAST(0x0000A83C00000000 AS DateTime), N'AJAY', N'CASH', N'3', N'OTTO', N'SHIRT', N'SMALL', CAST(10 AS Numeric(18, 0)), CAST(350.00 AS Numeric(18, 2)), CAST(3500.00 AS Numeric(18, 2)), CAST(12000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(10.00 AS Numeric(18, 2)), CAST(10800.00 AS Numeric(18, 2)), N'')
INSERT [dbo].[Invoice_Bill] ([Inv_No], [Inv_Date], [Vendor_Name], [Mode], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By]) VALUES (N'i1', CAST(0x0000A8CF00000000 AS DateTime), N'VIJAY1', N'CASH', N'1', N'RAYMOND', N'SHIRT', N'LARGE', CAST(5 AS Numeric(18, 0)), CAST(200.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), N'')
INSERT [dbo].[Invoice_Bill] ([Inv_No], [Inv_Date], [Vendor_Name], [Mode], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By]) VALUES (N'i2', CAST(0x0000A8CF00000000 AS DateTime), N'VIJAY1', N'CARD', N'2', N'RAYMOND', N'SHIRT', N'XXL', CAST(5 AS Numeric(18, 0)), CAST(150.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(750.00 AS Numeric(18, 2)), N'')
INSERT [dbo].[Invoice_Bill] ([Inv_No], [Inv_Date], [Vendor_Name], [Mode], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By]) VALUES (N'i3', CAST(0x0000A8CF00000000 AS DateTime), N'VIJAY1', N'PAYTM', N'3', N'OTTO', N'SHIRT', N'SMALL', CAST(5 AS Numeric(18, 0)), CAST(100.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), N'')
INSERT [dbo].[Invoice_Bill] ([Inv_No], [Inv_Date], [Vendor_Name], [Mode], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By]) VALUES (N'i4', CAST(0x0000A8CF00000000 AS DateTime), N'VIJAY1', N'CREDIT', N'1', N'RAYMOND', N'SHIRT', N'LARGE', CAST(10 AS Numeric(18, 0)), CAST(150.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)), N'')
/****** Object:  Table [dbo].[GSTSales_Return_Table]    Script Date: 05/04/2018 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GSTSales_Return_Table](
	[Inv_No] [bigint] NULL,
	[Bill_No] [bigint] NULL,
	[Customer_Name] [varchar](255) NULL,
	[Barcode] [varchar](255) NULL,
	[Product] [varchar](255) NULL,
	[Status] [varchar](255) NULL,
	[Reason] [varchar](255) NULL,
	[Quantity] [bigint] NULL,
	[Amount] [numeric](18, 2) NULL,
	[Return_Date] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[GSTSales_Return_Table] ([Inv_No], [Bill_No], [Customer_Name], [Barcode], [Product], [Status], [Reason], [Quantity], [Amount], [Return_Date]) VALUES (1, 6, N'PRABHA', N'1', N'RAYMONDSHIRTLARGE', N'RETURN', N'fghv', 1, CAST(500.00 AS Numeric(18, 2)), CAST(0x0000A8CB00000000 AS DateTime))
INSERT [dbo].[GSTSales_Return_Table] ([Inv_No], [Bill_No], [Customer_Name], [Barcode], [Product], [Status], [Reason], [Quantity], [Amount], [Return_Date]) VALUES (2, 6, N'PRABHA', N'', N'ALL PRODUCT', N'RETURN', N'', 0, CAST(478.50 AS Numeric(18, 2)), CAST(0x0000A8CB00000000 AS DateTime))
/****** Object:  Table [dbo].[GSTCustomerPayment]    Script Date: 05/04/2018 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GSTCustomerPayment](
	[Payment_No] [bigint] NOT NULL,
	[Payment_Date] [datetime] NULL,
	[Bill_No] [bigint] NULL,
	[Customer_Name] [varchar](255) NULL,
	[Bill_Amount] [numeric](18, 2) NULL,
	[Paid_Amount] [numeric](18, 2) NULL,
	[Balance_Amount] [numeric](18, 2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[GSTCustomerPayment] ([Payment_No], [Payment_Date], [Bill_No], [Customer_Name], [Bill_Amount], [Paid_Amount], [Balance_Amount]) VALUES (1, CAST(0x0000A8C500000000 AS DateTime), 2, N'vijay', CAST(1520.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(520.00 AS Numeric(18, 2)))
INSERT [dbo].[GSTCustomerPayment] ([Payment_No], [Payment_Date], [Bill_No], [Customer_Name], [Bill_Amount], [Paid_Amount], [Balance_Amount]) VALUES (2, CAST(0x0000A8C500000000 AS DateTime), 3, N'ASDF', CAST(1600.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(600.00 AS Numeric(18, 2)))
INSERT [dbo].[GSTCustomerPayment] ([Payment_No], [Payment_Date], [Bill_No], [Customer_Name], [Bill_Amount], [Paid_Amount], [Balance_Amount]) VALUES (3, CAST(0x0000A8C500000000 AS DateTime), 3, N'ASDF', CAST(1600.00 AS Numeric(18, 2)), CAST(600.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[GSTCustomerPayment] ([Payment_No], [Payment_Date], [Bill_No], [Customer_Name], [Bill_Amount], [Paid_Amount], [Balance_Amount]) VALUES (4, CAST(0x0000A8C600000000 AS DateTime), 4, N'BALAJI', CAST(1668.60 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(668.60 AS Numeric(18, 2)))
INSERT [dbo].[GSTCustomerPayment] ([Payment_No], [Payment_Date], [Bill_No], [Customer_Name], [Bill_Amount], [Paid_Amount], [Balance_Amount]) VALUES (5, CAST(0x0000A8C800000000 AS DateTime), 4, N'vijay', CAST(1668.60 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(668.60 AS Numeric(18, 2)))
INSERT [dbo].[GSTCustomerPayment] ([Payment_No], [Payment_Date], [Bill_No], [Customer_Name], [Bill_Amount], [Paid_Amount], [Balance_Amount]) VALUES (6, CAST(0x0000A8C800000000 AS DateTime), 4, N'vijay', CAST(1668.60 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(668.60 AS Numeric(18, 2)))
INSERT [dbo].[GSTCustomerPayment] ([Payment_No], [Payment_Date], [Bill_No], [Customer_Name], [Bill_Amount], [Paid_Amount], [Balance_Amount]) VALUES (7, CAST(0x0000A8C800000000 AS DateTime), 6, N'PRABHA', CAST(978.50 AS Numeric(18, 2)), CAST(978.50 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[GSTCustomerPayment] ([Payment_No], [Payment_Date], [Bill_No], [Customer_Name], [Bill_Amount], [Paid_Amount], [Balance_Amount]) VALUES (8, CAST(0x0000A8CF00000000 AS DateTime), 9, N'PRABHA', CAST(500.00 AS Numeric(18, 2)), CAST(100.00 AS Numeric(18, 2)), CAST(400.00 AS Numeric(18, 2)))
INSERT [dbo].[GSTCustomerPayment] ([Payment_No], [Payment_Date], [Bill_No], [Customer_Name], [Bill_Amount], [Paid_Amount], [Balance_Amount]) VALUES (9, CAST(0x0000A8CF00000000 AS DateTime), 9, N'PRABHA', CAST(500.00 AS Numeric(18, 2)), CAST(200.00 AS Numeric(18, 2)), CAST(200.00 AS Numeric(18, 2)))
/****** Object:  Table [dbo].[Expenses]    Script Date: 05/04/2018 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Expenses](
	[No] [bigint] NOT NULL,
	[Date] [datetime] NULL,
	[Expenses] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
	[Amount] [numeric](18, 2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Expenses] ([No], [Date], [Expenses], [Description], [Amount]) VALUES (1, CAST(0x0000A8C500000000 AS DateTime), N'vijay', N'salary', CAST(1000.00 AS Numeric(18, 2)))
INSERT [dbo].[Expenses] ([No], [Date], [Expenses], [Description], [Amount]) VALUES (2, CAST(0x0000A8CF00000000 AS DateTime), N'Vijay', N'Expenses', CAST(100.00 AS Numeric(18, 2)))
/****** Object:  Table [dbo].[DailyAccounts]    Script Date: 05/04/2018 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyAccounts](
	[Date] [datetime] NULL,
	[OpeningBalance] [numeric](18, 2) NULL,
	[CashOwner] [numeric](18, 2) NULL,
	[GSTCashSales] [numeric](18, 2) NULL,
	[GSTCardSales] [numeric](18, 2) NULL,
	[GSTCreditSales] [numeric](18, 2) NULL,
	[NormalCashSales] [numeric](18, 2) NULL,
	[NormalCardSales] [numeric](18, 2) NULL,
	[NormalCreditSales] [numeric](18, 2) NULL,
	[TotalSales] [numeric](18, 2) NULL,
	[CustomerPayment] [numeric](18, 2) NULL,
	[TotalInward] [numeric](18, 2) NULL,
	[CashToOwner] [numeric](18, 2) NULL,
	[CashPurchase] [numeric](18, 2) NULL,
	[Expenses] [numeric](18, 2) NULL,
	[VendorPayment] [numeric](18, 2) NULL,
	[BankTransaction] [numeric](18, 2) NULL,
	[CreditTransaction] [numeric](18, 2) NULL,
	[TotalOutward] [numeric](18, 2) NULL,
	[ClosingBalance] [numeric](18, 2) NULL,
	[ManualBillAmount] [numeric](18, 2) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[DailyAccounts] ([Date], [OpeningBalance], [CashOwner], [GSTCashSales], [GSTCardSales], [GSTCreditSales], [NormalCashSales], [NormalCardSales], [NormalCreditSales], [TotalSales], [CustomerPayment], [TotalInward], [CashToOwner], [CashPurchase], [Expenses], [VendorPayment], [BankTransaction], [CreditTransaction], [TotalOutward], [ClosingBalance], [ManualBillAmount]) VALUES (CAST(0x0000A8CF00000000 AS DateTime), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(1100.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), CAST(1300.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(5400.00 AS Numeric(18, 2)), CAST(1100.00 AS Numeric(18, 2)), CAST(6500.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(100.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), CAST(2400.00 AS Numeric(18, 2)), CAST(1500.00 AS Numeric(18, 2)), CAST(5500.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)))
/****** Object:  Table [dbo].[CustomerPayment]    Script Date: 05/04/2018 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerPayment](
	[Payment_No] [bigint] NOT NULL,
	[Payment_Date] [datetime] NULL,
	[Bill_No] [bigint] NULL,
	[Customer_Name] [varchar](255) NULL,
	[Bill_Amount] [numeric](18, 2) NULL,
	[Paid_Amount] [numeric](18, 2) NULL,
	[Balance_Amount] [numeric](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Payment_No] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CustomerPayment] ([Payment_No], [Payment_Date], [Bill_No], [Customer_Name], [Bill_Amount], [Paid_Amount], [Balance_Amount]) VALUES (1, CAST(0x0000A8C800000000 AS DateTime), 1, N'KARAN1', CAST(475.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(175.00 AS Numeric(18, 2)))
INSERT [dbo].[CustomerPayment] ([Payment_No], [Payment_Date], [Bill_No], [Customer_Name], [Bill_Amount], [Paid_Amount], [Balance_Amount]) VALUES (2, CAST(0x0000A8CA00000000 AS DateTime), 2, N'PRABHA', CAST(2185.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(1185.00 AS Numeric(18, 2)))
INSERT [dbo].[CustomerPayment] ([Payment_No], [Payment_Date], [Bill_No], [Customer_Name], [Bill_Amount], [Paid_Amount], [Balance_Amount]) VALUES (3, CAST(0x0000A8CF00000000 AS DateTime), 6, N'PRABHA', CAST(1000.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)))
INSERT [dbo].[CustomerPayment] ([Payment_No], [Payment_Date], [Bill_No], [Customer_Name], [Bill_Amount], [Paid_Amount], [Balance_Amount]) VALUES (4, CAST(0x0000A8CF00000000 AS DateTime), 6, N'PRABHA', CAST(1000.00 AS Numeric(18, 2)), CAST(300.00 AS Numeric(18, 2)), CAST(200.00 AS Numeric(18, 2)))
/****** Object:  Table [dbo].[Customer_Master_Table]    Script Date: 05/04/2018 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer_Master_Table](
	[Customer_code] [bigint] NULL,
	[Customer_Name] [varchar](255) NULL,
	[Address] [varchar](255) NULL,
	[GSTIN] [varchar](255) NULL,
	[Aadhaar] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Mobile] [varchar](255) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Customer_Master_Table] ([Customer_code], [Customer_Name], [Address], [GSTIN], [Aadhaar], [Email], [Mobile]) VALUES (1, N'PRABHA', N'ATTUR', N'', N'', N'', N'7708245323')
INSERT [dbo].[Customer_Master_Table] ([Customer_code], [Customer_Name], [Address], [GSTIN], [Aadhaar], [Email], [Mobile]) VALUES (2, N'KARAN1', N'SALEM', N'1', N'3', N'2', N'98')
/****** Object:  Table [dbo].[Credit_Table]    Script Date: 05/04/2018 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Credit_Table](
	[Bill_No] [bigint] NULL,
	[Bill_Date] [datetime] NULL,
	[Customer_Name] [varchar](255) NULL,
	[Mobile] [varchar](255) NULL,
	[Bill_Amount] [numeric](18, 2) NULL,
	[Received_Amount] [numeric](18, 2) NULL,
	[Balance_Amount] [numeric](18, 2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bill_Table]    Script Date: 05/04/2018 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bill_Table](
	[Bill_No] [bigint] NULL,
	[Bill_Date] [datetime] NULL,
	[Customer_Name] [varchar](255) NULL,
	[Mode] [varchar](255) NULL,
	[Bill_Amount] [numeric](18, 2) NULL,
	[Received_Amount] [numeric](18, 2) NULL,
	[Balance_Amount] [numeric](18, 2) NULL,
	[Status] [varchar](255) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Bill_Table] ([Bill_No], [Bill_Date], [Customer_Name], [Mode], [Bill_Amount], [Received_Amount], [Balance_Amount], [Status]) VALUES (1, CAST(0x0000A8C500000000 AS DateTime), N'VIJAY', N'CREDIT', CAST(1440.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(1440.00 AS Numeric(18, 2)), N'PENDING')
INSERT [dbo].[Bill_Table] ([Bill_No], [Bill_Date], [Customer_Name], [Mode], [Bill_Amount], [Received_Amount], [Balance_Amount], [Status]) VALUES (2, CAST(0x0000A8C500000000 AS DateTime), N'vijay', N'CREDIT', CAST(1520.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(520.00 AS Numeric(18, 2)), N'PENDING')
INSERT [dbo].[Bill_Table] ([Bill_No], [Bill_Date], [Customer_Name], [Mode], [Bill_Amount], [Received_Amount], [Balance_Amount], [Status]) VALUES (3, CAST(0x0000A8C500000000 AS DateTime), N'ASDF', N'CREDIT', CAST(1600.00 AS Numeric(18, 2)), CAST(1600.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'CLOSE')
INSERT [dbo].[Bill_Table] ([Bill_No], [Bill_Date], [Customer_Name], [Mode], [Bill_Amount], [Received_Amount], [Balance_Amount], [Status]) VALUES (4, CAST(0x0000A8C800000000 AS DateTime), N'vijay', N'CREDIT', CAST(463.50 AS Numeric(18, 2)), CAST(463.50 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'CLOSE')
INSERT [dbo].[Bill_Table] ([Bill_No], [Bill_Date], [Customer_Name], [Mode], [Bill_Amount], [Received_Amount], [Balance_Amount], [Status]) VALUES (5, CAST(0x0000A8C600000000 AS DateTime), N'PRABHA', N'CREDIT', CAST(927.00 AS Numeric(18, 2)), CAST(927.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'CLOSE')
INSERT [dbo].[Bill_Table] ([Bill_No], [Bill_Date], [Customer_Name], [Mode], [Bill_Amount], [Received_Amount], [Balance_Amount], [Status]) VALUES (6, CAST(0x0000A8CF00000000 AS DateTime), N'PRABHA', N'CASH', CAST(1000.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'CLOSE')
INSERT [dbo].[Bill_Table] ([Bill_No], [Bill_Date], [Customer_Name], [Mode], [Bill_Amount], [Received_Amount], [Balance_Amount], [Status]) VALUES (7, CAST(0x0000A8CF00000000 AS DateTime), N'PRABHA', N'CARD', CAST(650.00 AS Numeric(18, 2)), CAST(650.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'CLOSE')
INSERT [dbo].[Bill_Table] ([Bill_No], [Bill_Date], [Customer_Name], [Mode], [Bill_Amount], [Received_Amount], [Balance_Amount], [Status]) VALUES (8, CAST(0x0000A8CF00000000 AS DateTime), N'PRABHA', N'PAYTM', CAST(450.00 AS Numeric(18, 2)), CAST(450.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'CLOSE')
INSERT [dbo].[Bill_Table] ([Bill_No], [Bill_Date], [Customer_Name], [Mode], [Bill_Amount], [Received_Amount], [Balance_Amount], [Status]) VALUES (9, CAST(0x0000A8CF00000000 AS DateTime), N'PRABHA', N'CREDIT', CAST(500.00 AS Numeric(18, 2)), CAST(300.00 AS Numeric(18, 2)), CAST(200.00 AS Numeric(18, 2)), N'PENDING')
/****** Object:  Table [dbo].[Bill]    Script Date: 05/04/2018 14:05:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bill](
	[Bill_No] [bigint] NULL,
	[Bill_Date] [datetime] NULL,
	[Bill_Time] [varchar](255) NULL,
	[Customer_Name] [varchar](255) NULL,
	[Mode] [varchar](255) NULL,
	[MobileNo] [varchar](255) NULL,
	[AadhaarNo] [varchar](255) NULL,
	[Barcode] [varchar](255) NULL,
	[Brand_Name] [varchar](255) NULL,
	[Product_Name] [varchar](255) NULL,
	[Size] [varchar](255) NULL,
	[Quantity] [numeric](18, 0) NULL,
	[Rate] [numeric](18, 2) NULL,
	[Amount] [numeric](18, 2) NULL,
	[Total_Amount] [numeric](18, 2) NULL,
	[Tax_Per] [numeric](18, 2) NULL,
	[Tot_CGST] [numeric](18, 2) NULL,
	[Tot_SGST] [numeric](18, 2) NULL,
	[Tax_Amount] [numeric](18, 2) NULL,
	[Discount] [numeric](18, 2) NULL,
	[Net_Amount] [numeric](18, 2) NULL,
	[Bill_By] [varchar](255) NULL,
	[DiscountPer] [numeric](18, 2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Bill] ([Bill_No], [Bill_Date], [Bill_Time], [Customer_Name], [Mode], [MobileNo], [AadhaarNo], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By], [DiscountPer]) VALUES (1, CAST(0x0000A8C500000000 AS DateTime), N'15:18:15', N'VIJAY', N'CREDIT', N'9698694094', N'', N'1', N'RAYMOND', N'SHIRT', N'LARGE', CAST(2 AS Numeric(18, 0)), CAST(500.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(1600.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(160.00 AS Numeric(18, 2)), CAST(1440.00 AS Numeric(18, 2)), N'', NULL)
INSERT [dbo].[Bill] ([Bill_No], [Bill_Date], [Bill_Time], [Customer_Name], [Mode], [MobileNo], [AadhaarNo], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By], [DiscountPer]) VALUES (1, CAST(0x0000A8C500000000 AS DateTime), N'15:18:15', N'VIJAY', N'CREDIT', N'9698694094', N'', N'2', N'RAYMOND', N'SHIRT', N'XL', CAST(1 AS Numeric(18, 0)), CAST(600.00 AS Numeric(18, 2)), CAST(600.00 AS Numeric(18, 2)), CAST(1600.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(160.00 AS Numeric(18, 2)), CAST(1440.00 AS Numeric(18, 2)), N'', NULL)
INSERT [dbo].[Bill] ([Bill_No], [Bill_Date], [Bill_Time], [Customer_Name], [Mode], [MobileNo], [AadhaarNo], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By], [DiscountPer]) VALUES (2, CAST(0x0000A8C500000000 AS DateTime), N'15:26:52', N'vijay', N'CREDIT', N'9383982', N'', N'1', N'RAYMOND', N'SHIRT', N'LARGE', CAST(2 AS Numeric(18, 0)), CAST(500.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(1600.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(80.00 AS Numeric(18, 2)), CAST(1520.00 AS Numeric(18, 2)), N'', NULL)
INSERT [dbo].[Bill] ([Bill_No], [Bill_Date], [Bill_Time], [Customer_Name], [Mode], [MobileNo], [AadhaarNo], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By], [DiscountPer]) VALUES (2, CAST(0x0000A8C500000000 AS DateTime), N'15:26:52', N'vijay', N'CREDIT', N'9383982', N'', N'2', N'RAYMOND', N'SHIRT', N'XL', CAST(1 AS Numeric(18, 0)), CAST(600.00 AS Numeric(18, 2)), CAST(600.00 AS Numeric(18, 2)), CAST(1600.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(80.00 AS Numeric(18, 2)), CAST(1520.00 AS Numeric(18, 2)), N'', NULL)
INSERT [dbo].[Bill] ([Bill_No], [Bill_Date], [Bill_Time], [Customer_Name], [Mode], [MobileNo], [AadhaarNo], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By], [DiscountPer]) VALUES (3, CAST(0x0000A8C500000000 AS DateTime), N'16:53:46', N'ASDF', N'CREDIT', N'', N'', N'1', N'RAYMOND', N'SHIRT', N'LARGE', CAST(1 AS Numeric(18, 0)), CAST(500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), CAST(1700.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(100.00 AS Numeric(18, 2)), CAST(1600.00 AS Numeric(18, 2)), N'', NULL)
INSERT [dbo].[Bill] ([Bill_No], [Bill_Date], [Bill_Time], [Customer_Name], [Mode], [MobileNo], [AadhaarNo], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By], [DiscountPer]) VALUES (3, CAST(0x0000A8C500000000 AS DateTime), N'16:53:46', N'ASDF', N'CREDIT', N'', N'', N'2', N'RAYMOND', N'SHIRT', N'XL', CAST(2 AS Numeric(18, 0)), CAST(600.00 AS Numeric(18, 2)), CAST(1200.00 AS Numeric(18, 2)), CAST(1700.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(100.00 AS Numeric(18, 2)), CAST(1600.00 AS Numeric(18, 2)), N'', NULL)
INSERT [dbo].[Bill] ([Bill_No], [Bill_Date], [Bill_Time], [Customer_Name], [Mode], [MobileNo], [AadhaarNo], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By], [DiscountPer]) VALUES (4, CAST(0x0000A8C800000000 AS DateTime), N'12:04:25', N'vijay', N'CREDIT', N'', N'', N'1', N'RAYMOND', N'SHIRT', N'LARGE', CAST(1 AS Numeric(18, 0)), CAST(500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), CAST(3.00 AS Numeric(18, 2)), CAST(7.50 AS Numeric(18, 2)), CAST(7.50 AS Numeric(18, 2)), CAST(15.00 AS Numeric(18, 2)), CAST(51.50 AS Numeric(18, 2)), CAST(463.50 AS Numeric(18, 2)), N'', CAST(10.00 AS Numeric(18, 2)))
INSERT [dbo].[Bill] ([Bill_No], [Bill_Date], [Bill_Time], [Customer_Name], [Mode], [MobileNo], [AadhaarNo], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By], [DiscountPer]) VALUES (5, CAST(0x0000A8C600000000 AS DateTime), N'12:22:05', N'PRABHA', N'CREDIT', N'', N'', N'1', N'RAYMOND', N'SHIRT', N'LARGE', CAST(2 AS Numeric(18, 0)), CAST(500.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(3.00 AS Numeric(18, 2)), CAST(15.00 AS Numeric(18, 2)), CAST(15.00 AS Numeric(18, 2)), CAST(30.00 AS Numeric(18, 2)), CAST(103.00 AS Numeric(18, 2)), CAST(927.00 AS Numeric(18, 2)), N'', CAST(10.00 AS Numeric(18, 2)))
INSERT [dbo].[Bill] ([Bill_No], [Bill_Date], [Bill_Time], [Customer_Name], [Mode], [MobileNo], [AadhaarNo], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By], [DiscountPer]) VALUES (6, CAST(0x0000A8CF00000000 AS DateTime), N'17:30:16', N'PRABHA', N'CASH', N'', N'', N'1', N'RAYMOND', N'SHIRT', N'LARGE', CAST(2 AS Numeric(18, 0)), CAST(500.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), N'', CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[Bill] ([Bill_No], [Bill_Date], [Bill_Time], [Customer_Name], [Mode], [MobileNo], [AadhaarNo], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By], [DiscountPer]) VALUES (7, CAST(0x0000A8CF00000000 AS DateTime), N'17:30:16', N'PRABHA', N'CARD', N'', N'', N'2', N'RAYMOND', N'SHIRT', N'XXL', CAST(1 AS Numeric(18, 0)), CAST(650.00 AS Numeric(18, 2)), CAST(650.00 AS Numeric(18, 2)), CAST(650.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(650.00 AS Numeric(18, 2)), N'', CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[Bill] ([Bill_No], [Bill_Date], [Bill_Time], [Customer_Name], [Mode], [MobileNo], [AadhaarNo], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By], [DiscountPer]) VALUES (8, CAST(0x0000A8CF00000000 AS DateTime), N'17:30:16', N'PRABHA', N'PAYTM', N'', N'', N'OSHIRT', N'OTTO', N'SHIRT', N'SMALL', CAST(1 AS Numeric(18, 0)), CAST(450.00 AS Numeric(18, 2)), CAST(450.00 AS Numeric(18, 2)), CAST(450.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(450.00 AS Numeric(18, 2)), N'', CAST(0.00 AS Numeric(18, 2)))
INSERT [dbo].[Bill] ([Bill_No], [Bill_Date], [Bill_Time], [Customer_Name], [Mode], [MobileNo], [AadhaarNo], [Barcode], [Brand_Name], [Product_Name], [Size], [Quantity], [Rate], [Amount], [Total_Amount], [Tax_Per], [Tot_CGST], [Tot_SGST], [Tax_Amount], [Discount], [Net_Amount], [Bill_By], [DiscountPer]) VALUES (9, CAST(0x0000A8CF00000000 AS DateTime), N'17:30:16', N'PRABHA', N'CREDIT', N'', N'', N'1', N'RAYMOND', N'SHIRT', N'LARGE', CAST(1 AS Numeric(18, 0)), CAST(500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), N'', CAST(0.00 AS Numeric(18, 2)))

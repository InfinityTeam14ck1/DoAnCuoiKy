USE [ShopDienThoai]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 5/16/2017 8:03:48 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/16/2017 8:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/16/2017 8:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/16/2017 8:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/16/2017 8:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/16/2017 8:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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

GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 5/16/2017 8:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBinhLuan] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [nvarchar](128) NULL,
	[MaSanPham] [int] NULL,
	[TenTaiKhoan] [varchar](50) NULL,
	[NoiDung] [nvarchar](200) NULL,
	[ThoiGian] [datetime] NULL CONSTRAINT [DF_BinhLuan_ThoiGian]  DEFAULT (getdate()),
	[TinhTrang] [int] NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[MaBinhLuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 5/16/2017 8:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[MaTK] [int] NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
	[GiaTien] [int] NULL,
	[MaTinhTrang] [int] NULL,
	[BiXoa] [int] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 5/16/2017 8:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [nvarchar](128) NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HangSP]    Script Date: 5/16/2017 8:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangSP](
	[MaHang] [int] IDENTITY(1,1) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[BiXoa] [int] NULL,
 CONSTRAINT [PK_HangSP] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 5/16/2017 8:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[BiXoa] [int] NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 5/16/2017 8:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[MaHang] [int] NULL,
	[MaLoai] [int] NULL,
	[HinhAnh] [nvarchar](50) NULL,
	[TinhTrang] [int] NULL,
	[GiaBan] [int] NULL,
	[SoLuong] [int] NULL,
	[BiXoa] [int] NULL,
	[ChiTiet] [nvarchar](500) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinhThanh]    Script Date: 5/16/2017 8:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhThanh](
	[MaTinhThanh] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhThanh] [nvarchar](50) NULL,
 CONSTRAINT [PK_TinhThanh] PRIMARY KEY CLUSTERED 
(
	[MaTinhThanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinhTrangDH]    Script Date: 5/16/2017 8:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrangDH](
	[MaTinhTrang] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_TinhTrangDH] PRIMARY KEY CLUSTERED 
(
	[MaTinhTrang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinhTrangSP]    Script Date: 5/16/2017 8:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrangSP](
	[MaTinhTrang] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_TinhTrangSP] PRIMARY KEY CLUSTERED 
(
	[MaTinhTrang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[v_GioHang]    Script Date: 5/16/2017 8:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_GioHang]
AS
SELECT        dbo.GioHang.id, dbo.GioHang.MaTaiKhoan, dbo.GioHang.MaSanPham, dbo.GioHang.SoLuong, dbo.SanPham.TenSP, dbo.SanPham.HinhAnh, dbo.SanPham.GiaBan, 
                         dbo.SanPham.GiaBan * dbo.GioHang.SoLuong AS ThanhTien
FROM            dbo.GioHang INNER JOIN
                         dbo.SanPham ON dbo.GioHang.MaSanPham = dbo.SanPham.MaSP

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201705010250269_InitialCreate', N'WebApplication1.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EDC36107D2FD07F10F4D416CECA9726488DDD04EEDA6E8DC617649DB46F0157E2AE85489422518E8DA25FD6877E527FA14389BAF1A2CBAEBCBB2E02042B727866381C92C3E1D0FFFEFDCFF8ED83EF19F7388ADD804CCC83D1BE696062078E4B961333A18B17AFCDB76FBEFD667CE6F80FC6C79CEE88D1414B124FCC3B4AC363CB8AED3BECA378E4BB7614C4C1828EECC0B790135887FBFB3F59070716060813B00C63FC3E21D4F571FA019FD380D838A409F22E03077B312F879A598A6A5C211FC721B2F1C4FC1DCF4FC2D0736D4441948351D6C2344E3C17813433EC2D4C031112D094E0F8438C67340AC872164201F26E1F430C740BE4C598F7E1B824EFDA9DFD43D61DAB6C9843D9494C03BF27E0C111D78F25365F49CB66A13FD0E019689A3EB25EA75A9C98170E4E8BDE071E284064783CF522463C312F0B1627717885E9286F38CA20CF2380FB1A449F4755C43DA373BBBDC29E0E47FBECDF9E314D3C9A447842704223E4ED1937C91C86FA37FC781B7CC6647274305F1CBD7EF90A3947AF7EC4472FAB3D85BE025DAD008A6EA220C411C8861745FF4DC3AAB7B3C48645B34A9B4C2B604B30354CE3123DBCC36449EF60D21CBE368D73F7013B790937AE0FC48599048D6894C0E755E27968EEE1A2DE6AE4C9FE6FE07AF8F2D5205CAFD0BDBB4C875EE00F13278279F51E7B696D7CE786D9F4AA8DF7274E761E053EFBAEDB5756FB69162491CD3A1368496E51B4C4B42EDDD82A8DB7934933A8E1CD3A47DD7DD36692CAE6AD24651D5A6526E42C363D1B72799F966F678BAB6C414C234D06A7DEB04602C29E21D0952674D0D5840874EDFFBC229EF9C8F50658123B70018F64E1463E2E7AF973000688486F996F501CC38AE0FC8AE2BB06D1E1E700A2CFB09D4460A8338AFCF0C9B9DDDC05045F25FE9CD9FFE6780D3634B75F837364D3203A23ACD5DA78EF02FB7390D033E29C228A3F503B07649FB7AEDF1D6010714E6C1BC7F139183376A60138DC39E005A14787BDE1D822B56D9764EA21D757FB24C272FA29272DFD123585E49B68C854FE4993A8EF82A54BBA899A93EA45CD285A45E5647D456560DD24E5947A415382563933AAC13CBE74848677F952D8DDF7F9D6DBBC756B41458D335821F12F98E0089631E706518A23528E409775631BCE423A7C8CE993EF4D29A78FC84B8666B5D26C481781E167430ABBFBB32115138AEF5D8779251D0E423931C077A2579FB1DAE79C20D9A6A743AD9B9B66BE993540375D4EE238B0DD74162842603C8051971F7C38A33D9A91F5468C8840C7C0D05DB6E54109F4CD148DEA9A9C620F536C9CD85988708A621B39B21AA1434E0FC1F21D5521581919A90BF783C4132C1D47AC116287A01866AA4BA83C2D5C62BB21F25AB524B4ECB885B1BE173CC49A531C62C218B66AA20B737520840950F01106A54D4363AB6271CD86A8F15A7563DEE6C296E32EC5273662932DBEB3C62EB9FFF62486D9ACB10D1867B34ABA08A00DEA6DC340F959A5AB018807975D3350E1C4A43150EE526DC440EB1ADB8281D655F2EC0C343BA2761D7FE1BCBA6BE6593F286F7E5B6F54D7166CB3A68F1D33CDCCF78436145AE04836CFD339ABC40F5471380339F9F92CE6AEAE68220C7C86693D6453FABB4A3FD46A06118DA809B034B416507E1D28014913AA8770792CAF513AEE45F480CDE36E8DB07CED17602B36206357AF452B84FACB53D1383B9D3E8A9E15D6201979A7C34205476110E2E255EF7807A5E8E2B2B262BAF8C27DBCE14AC7F8603428A8C573D52829EFCCE05ACA4DB35D4B2A87AC8F4BB6969604F749A3A5BC33836B89DB68BB92144E410FB7602D15D5B7F081265B1EE928769BA26E6C651953BC606C6952ABC697280C5DB2ACA45AF1126396E5594D5FCCFA271FF9198665C78A1CA442DA82130D22B4C4422DB00649CFDD28A6A788A23962719EA9E34B64CABD55B3FCE72CABDBA73C88F93E9053B3DF590BCD257E6DBF951D128E730EBDF499579386D21536A06E6EB0F437E4A14811BD9F065EE213BD93A56F9DDDE155DB672532C2D812E4979C28496392AB5B577FA7C19127C6800355F831AB0F961E42A7F2DC0BAD2A5DE799EA51F24055154517BCDADAE0E91C9ADE0326FA8BFDC7AB15E169E6174F52A902F0A29E18953C0709AC52D71DB59E8A52C5ACD7744714F24DAA9042550F29AB59253521AB152BE16934AAA6E8CE41CE23A9A2CBB5DD91151925556845F50AD80A99C5BAEEA88AA4932AB0A2BA3B769981222EA43BBC83694F316B6D61D96177BD3D4C83F134ABE2305B60E54EBF0A5429EE89C56FED25305EBE9316A53DF1AD6551599C633D8BD260E857A0DA8D787D016ABCC6D763D6AEB96B8B7CD335BF1EAF9FDD3EA97548873E91A4E05E1CFE8443DE981FB8DA1FD94827B08CC4347235C206FF1853EC8F18C168F6C59B7A2E66CB794E708988BBC031CD523BCCC3FD8343E18DCEEEBC97B1E2D8F1140756DDA399FA986D204B8BDCA3C8BE43919C33B1C69B9212540A475F10073F4CCC3FD356C7696483FD4A8BF78C8BF80371BF2450711B25D8F84BCE011D26C7BEF9C0B5A32F22BA6BF5E28F4F59D33DE33A8219736CEC0BBA5C6584EBEF247A4993355D439A955F4F3CDF09557B92A0441526C4EA2F10E62E1DE4F5412EE5773E7AF8BEAF68CA17066B212A5E110C8537880A75AF0456C1D2BE1070E093A62F04FA7556FD626015D1B4AF055CD21F4C7C2BD07D19CA5B6E71AB519C8B36B124A57A6ECDB55E2BF172DB7B939492BDD64497D3AE7BC0AD915ABD82653CB3ACE4C1764745D2F160D8DB34ED27CF34DE95E4E232ED63BB39C59B4C236EB822FA5F650FEF40BE9B227F67FB39C29BB6355D2C77C7132DFB6502EF98B1F1ACAEEDE7FB6EDAD87461DE1D37B65E59BD3B666BDBDA3FB76C699DB7D0ADE7E8CAE9469A3B19552CB82D07370B9CC3097F1E8011641E65F674529DF4D594B0DAC2B024D133D5679B898CA58923F195289AD9F6EB2BDFF01B3BCB699AD96A72349B78F3F5BF9137A769E6ADC97CDC46F6B032F75095D1DDB28E3525443DA76CE15A4F5A92D3DB7CD6C60BF6E7941C3C88526AB3477347FC7C72810751C99053A747EEAF7CDD0B7B67E52F2FC2FE1DBBCB1282FD1D4682EDDAAE59D05C9045906FDE8244398910A1B9C41439B0A59E44D45D209B42358B31A76FBFD3B81DBBE99863E7825C27344C287419FB73AF16F0624E4013FF34C1B92EF3F83A645FF1105D00315D169BBF263F27AEE714729F2B62421A08E65DF0882E1B4BCA22BBCBC702E92A201D81B8FA0AA7E816FBA10760F13599A17BBC8A6C607EEFF012D98F65045007D23E1075B58F4F5DB48C901F738CB23D7C820D3BFEC39BFF000B618BF780540000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'16e08745-8209-458b-9b93-2e30298d6f40', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'86beb9e4-d0ef-413a-a8a1-edc276d939ab', N'16e08745-8209-458b-9b93-2e30298d6f40')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'5389c3ec-0071-48c5-b461-7d3a86b73b35', N'test@gmail.com', 0, N'AMvNulfIAE3RbWWWNaILZVQVrZwpzexMOyISzVZ8y8oDX9BFrww66p85Q68xN52QAQ==', N'ab5110e4-d754-4b56-b0e1-38b176163d54', NULL, 0, 0, NULL, 1, 0, N'test@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'7a6df105-9e0a-4879-ae7f-1a0a067614b8', N'huynhvinhphat@gmail.com', 0, N'AABBo9F+XMwqKnQecBHwFgKn1zTFGFYUOoohCP4UU3QV7aeOBGDjqrAMrlhxbuH1/g==', N'0720c5c8-f7c0-4093-b7d2-c21b908b8be3', NULL, 0, 0, NULL, 1, 0, N'huynhvinhphat@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'86beb9e4-d0ef-413a-a8a1-edc276d939ab', N'phat@gmail.com', 0, N'AEi9VzQ3bFdqlUdujvcn3rhFXXXjY1oU0vM0o70gFoaj5Zu9zYW5r4vaq3H3sTTtIQ==', N'4e473a0d-aa86-432a-912c-2d601a2fd44d', NULL, 0, 0, NULL, 0, 0, N'phat@gmail.com')
SET IDENTITY_INSERT [dbo].[BinhLuan] ON 

INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaTaiKhoan], [MaSanPham], [TenTaiKhoan], [NoiDung], [ThoiGian], [TinhTrang]) VALUES (7, N'86beb9e4-d0ef-413a-a8a1-edc276d939ab', 4, N'phat@gmail.com', N'alo', CAST(N'2017-05-09 15:12:21.847' AS DateTime), 0)
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaTaiKhoan], [MaSanPham], [TenTaiKhoan], [NoiDung], [ThoiGian], [TinhTrang]) VALUES (8, N'86beb9e4-d0ef-413a-a8a1-edc276d939ab', 4, N'phat@gmail.com', N'test2', CAST(N'2017-05-09 15:13:31.153' AS DateTime), 0)
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaTaiKhoan], [MaSanPham], [TenTaiKhoan], [NoiDung], [ThoiGian], [TinhTrang]) VALUES (9, N'7a6df105-9e0a-4879-ae7f-1a0a067614b8', 4, N'huynhvinhphat@gmail.com', N'test123', CAST(N'2017-05-09 16:12:02.067' AS DateTime), 0)
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaTaiKhoan], [MaSanPham], [TenTaiKhoan], [NoiDung], [ThoiGian], [TinhTrang]) VALUES (10, N'86beb9e4-d0ef-413a-a8a1-edc276d939ab', 4, N'phat@gmail.com', N'ssssss', CAST(N'2017-05-09 19:25:36.603' AS DateTime), 0)
INSERT [dbo].[BinhLuan] ([MaBinhLuan], [MaTaiKhoan], [MaSanPham], [TenTaiKhoan], [NoiDung], [ThoiGian], [TinhTrang]) VALUES (11, N'86beb9e4-d0ef-413a-a8a1-edc276d939ab', 5, N'phat@gmail.com', N'test', CAST(N'2017-05-09 19:26:33.723' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[BinhLuan] OFF
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDonHang], [MaTK], [MaSP], [SoLuong], [GiaTien], [MaTinhTrang], [BiXoa]) VALUES (3, 1, 5, 1, 12300000, 1, 0)
INSERT [dbo].[DonHang] ([MaDonHang], [MaTK], [MaSP], [SoLuong], [GiaTien], [MaTinhTrang], [BiXoa]) VALUES (4, 2, 7, 2, 10000000, 1, 0)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
SET IDENTITY_INSERT [dbo].[GioHang] ON 

INSERT [dbo].[GioHang] ([id], [MaTaiKhoan], [MaSanPham], [SoLuong]) VALUES (1, N'86beb9e4-d0ef-413a-a8a1-edc276d939ab', 4, 1)
INSERT [dbo].[GioHang] ([id], [MaTaiKhoan], [MaSanPham], [SoLuong]) VALUES (2, N'86beb9e4-d0ef-413a-a8a1-edc276d939ab', 5, 2)
INSERT [dbo].[GioHang] ([id], [MaTaiKhoan], [MaSanPham], [SoLuong]) VALUES (3, N'7a6df105-9e0a-4879-ae7f-1a0a067614b8', 4, 1)
INSERT [dbo].[GioHang] ([id], [MaTaiKhoan], [MaSanPham], [SoLuong]) VALUES (4, N'7a6df105-9e0a-4879-ae7f-1a0a067614b8', 7, 1)
INSERT [dbo].[GioHang] ([id], [MaTaiKhoan], [MaSanPham], [SoLuong]) VALUES (5, N'7a6df105-9e0a-4879-ae7f-1a0a067614b8', 5, 1)
INSERT [dbo].[GioHang] ([id], [MaTaiKhoan], [MaSanPham], [SoLuong]) VALUES (6, N'7a6df105-9e0a-4879-ae7f-1a0a067614b8', 8, 1)
INSERT [dbo].[GioHang] ([id], [MaTaiKhoan], [MaSanPham], [SoLuong]) VALUES (7, N'7a6df105-9e0a-4879-ae7f-1a0a067614b8', 5, 1)
INSERT [dbo].[GioHang] ([id], [MaTaiKhoan], [MaSanPham], [SoLuong]) VALUES (8, N'7a6df105-9e0a-4879-ae7f-1a0a067614b8', 6, 1)
SET IDENTITY_INSERT [dbo].[GioHang] OFF
SET IDENTITY_INSERT [dbo].[HangSP] ON 

INSERT [dbo].[HangSP] ([MaHang], [TenHang], [BiXoa]) VALUES (1, N'Samsung', 0)
INSERT [dbo].[HangSP] ([MaHang], [TenHang], [BiXoa]) VALUES (2, N'Apple', 0)
INSERT [dbo].[HangSP] ([MaHang], [TenHang], [BiXoa]) VALUES (3, N'Sony', 0)
INSERT [dbo].[HangSP] ([MaHang], [TenHang], [BiXoa]) VALUES (4, N'Xiaomi', 0)
INSERT [dbo].[HangSP] ([MaHang], [TenHang], [BiXoa]) VALUES (5, N'HTC', 0)
INSERT [dbo].[HangSP] ([MaHang], [TenHang], [BiXoa]) VALUES (6, N'Oppo', 0)
INSERT [dbo].[HangSP] ([MaHang], [TenHang], [BiXoa]) VALUES (7, N'LG', 0)
INSERT [dbo].[HangSP] ([MaHang], [TenHang], [BiXoa]) VALUES (8, N'test', 1)
SET IDENTITY_INSERT [dbo].[HangSP] OFF
SET IDENTITY_INSERT [dbo].[LoaiSP] ON 

INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [BiXoa]) VALUES (1, N'SmartPhone', 0)
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [BiXoa]) VALUES (2, N'Tablet', 0)
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [BiXoa]) VALUES (3, N'Laptop', 0)
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai], [BiXoa]) VALUES (4, N'test3', 1)
SET IDENTITY_INSERT [dbo].[LoaiSP] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (4, N'SamSung Galaxy A7', 1, 1, N'samsunggalaxya7.jpg', 1, 7200000, 5, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; Android 6.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exnos 7650</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (5, N'Iphone 7 plus', 2, 1, N'iphone7plus.jpg', 1, 15900000, 1, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; ios 9.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Apple A9</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (6, N'Iphone 6', 2, 1, N'iphone6.jpg', 1, 8990000, 3, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; ios 9.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Apple A9</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (7, N'Iphone 6 plus', 2, 1, N'iphone6plus.jpg', 1, 11900000, 6, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; ios 9.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Apple A9</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (8, N'Sony Xperia X', 3, 1, N'sonyxperiax.jpg', 1, 12990000, 1, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; Android 6.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exnos 7650</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (9, N'Iphone 6s', 2, 1, N'iphone6s.jpg', 1, 14990000, 7, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; ios 9.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Apple A9</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (10, N'Sony Xperia XZ', 3, 1, N'sonyxperiaxz.jpg', 1, 12300000, 3, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; Android 6.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exnos 7650</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (11, N'Oppo F1 Plus', 6, 1, N'oppof1plus.jpg', 1, 7000000, 10, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; Android 6.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exnos 7650</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (12, N'Oppo A37', 6, 1, N'oppoa37.jpg', 1, 5600000, 6, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; Android 6.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exnos 7650</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (13, N'Sony Xperia Z5 Dual', 3, 1, N'sonyxperiaz5dual.jpg', 1, 1500000, 3, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; Android 6.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exnos 7650</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (14, N'Sony Xperia XA Ultra', 3, 1, N'sonyxperiaxaultra.jpg', 1, 7000000, 8, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; Android 6.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exnos 7650</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (16, N'SamSung Galaxy S7 EDGE', 1, 1, N'samsunggalaxys7edge.jpg', 1, 14000000, 15, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; Android 6.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exnos 7650</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (18, N'SamSung Galaxy Note 5', 1, 1, N'samsunggalaxynote5.jpg', 1, 9000000, 6, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; Android 6.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exnos 7650</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (19, N'LG X Power', 7, 1, N'lgxpower.jpg', 1, 5600000, 9, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; Android 6.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exnos 7650</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (20, N'LG K10', 7, 1, N'lgk10.jpg', 1, 5700000, 12, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; Android 6.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exnos 7650</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (21, N'HTC 10', 5, 1, N'htc10.jpg', 1, 10600000, 24, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; Android 6.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exnos 7650</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (22, N'HTC One A9', 5, 1, N'htconea9.jpg', 1, 7800000, 2, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; Android 6.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exnos 7650</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (23, N'HTC Desire 10 Pro', 5, 1, N'htcdesire10pro.jpg', 1, 7900000, 7, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; Android 6.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exnos 7650</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (24, N'HTC One Me', 5, 1, N'htconeme.jpg', 1, 6500000, 3, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; Android 6.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exnos 7650</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (25, N'HTC One A9s', 5, 1, N'htconea9s.jpg', 1, 8000000, 7, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; Android 6.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exnos 7650</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (26, N'Xiaomi Mi Mix', 4, 1, N'xiaomimimix.jpg', 1, 14000000, 2, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; Android 6.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exnos 7650</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (27, N'Xiaomi Mi Note 2', 4, 1, N'xiaomiminote2.jpg', 1, 9700000, 5, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; Android 6.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exnos 7650</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (28, N'Iphone SE', 2, 1, N'iphonese.jpg', 1, 8900000, 12, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; ios 9.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Apple A9</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (29, N'Iphone 6s Plus', 2, 1, N'iphone6splus.jpg', 1, 14800000, 4, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; ios 9.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Apple A9</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (30, N'Xiaomi Mi5s Plus', 4, 1, N'xiaomimi5splus.jpg', 1, 8900000, 6, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; Android 6.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exnos 7650</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (31, N'Xiaomi Mi5s', 4, 1, N'xiaomimi5s.jpg', 1, 10000000, 2, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; Android 6.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exnos 7650</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (32, N'LG G5', 7, 1, N'lgg5.jpg', 1, 7800000, 6, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; Android 6.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exnos 7650</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (33, N'iPad Pro Wifi 32GB', 2, 2, N'ipadprowifi32gb.jpg', 1, 16500000, 12, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; Android 6.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exnos 7650</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (34, N'iPad Air 2 Cellula 128GB', 2, 2, N'ipadair2cellular128gbnowatermark.jpg', 1, 15490000, 10, 0, N'<p>M&agrave;n H&igrave;nh: &nbsp; &nbsp; &nbsp; &nbsp; 5.5&#39;&#39;,Full HD</p><p>Hệ Điều H&agrave;nh: &nbsp; Android 6.0</p><p>Camera Sau: &nbsp; &nbsp;12MP</p><p>Camera Trước: 3MP</p><p>CPU: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Exnos 7650</p><p>Ram: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;4GB</p>')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaHang], [MaLoai], [HinhAnh], [TinhTrang], [GiaBan], [SoLuong], [BiXoa], [ChiTiet]) VALUES (49, N'test', 1, 1, NULL, 1, 1, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET IDENTITY_INSERT [dbo].[TinhThanh] ON 

INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (1, N'An Giang')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (2, N'Bà Rịa - Vùng Tàu')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (3, N'Bắc Giang')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (4, N'Bắc Kạn')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (5, N'Bạc Liêu')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (6, N'Bắc Ninh')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (7, N'Bến Tre')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (8, N'Bình Định')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (9, N'Bình Dương')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (10, N'Bình Phước')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (11, N'Bình Thuận')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (12, N'Cà Mau')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (13, N'Cao Bằng')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (14, N'Đắk Lắk')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (15, N'Đắk Nông')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (16, N'Điện Biên')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (17, N'Đồng Nai')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (18, N'Đồng Tháp')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (19, N'Gia Lai')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (20, N'Hà Giang')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (21, N'Hà Nam')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (22, N'Hà Tĩnh')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (23, N'Hải Dương')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (24, N'Hậu Giang')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (25, N'Hòa Bình')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (26, N'Hưng Yên')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (27, N'Khánh Hòa')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (28, N'Kiên Giang')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (29, N'Kon Tum')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (30, N'Lai Châu')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (31, N'Lâm Đồng')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (32, N'Lạng Sơn')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (33, N'Lào Cai')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (34, N'Long An')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (35, N'Nam Định')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (36, N'Nghệ An')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (37, N'Ninh Bình')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (38, N'Ninh Thuận')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (39, N'Phú Thọ')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (40, N'Quảng Bình')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (41, N'Quảng Nam')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (42, N'Quảng Ngãi')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (43, N'Quảng Ninh')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (44, N'Quảng Trị')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (45, N'Sóc Trăng')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (46, N'Sơn La')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (47, N'Tây Ninh')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (48, N'Thái Bình')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (49, N'Thái Nguyên')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (50, N'Thanh Hóa')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (51, N'Thừa Thiên Huế')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (52, N'Tiền Giang')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (53, N'Trà Vinh')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (54, N'Tuyên Quang')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (55, N'Vĩnh Long')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (56, N'Vĩnh Phúc')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (57, N'Yên Bái')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (58, N'Phú Yên')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (59, N'Cần Thơ')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (60, N'Đà Nẵng')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (61, N'Hải Phòng')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (62, N'Hà Nội')
INSERT [dbo].[TinhThanh] ([MaTinhThanh], [TenTinhThanh]) VALUES (63, N'TP HCM')
SET IDENTITY_INSERT [dbo].[TinhThanh] OFF
SET IDENTITY_INSERT [dbo].[TinhTrangDH] ON 

INSERT [dbo].[TinhTrangDH] ([MaTinhTrang], [TenTinhTrang]) VALUES (1, N'Đang giao')
INSERT [dbo].[TinhTrangDH] ([MaTinhTrang], [TenTinhTrang]) VALUES (2, N'Đã giao')
INSERT [dbo].[TinhTrangDH] ([MaTinhTrang], [TenTinhTrang]) VALUES (3, N'Hủy')
INSERT [dbo].[TinhTrangDH] ([MaTinhTrang], [TenTinhTrang]) VALUES (4, N'Đang trong kho')
SET IDENTITY_INSERT [dbo].[TinhTrangDH] OFF
SET IDENTITY_INSERT [dbo].[TinhTrangSP] ON 

INSERT [dbo].[TinhTrangSP] ([MaTinhTrang], [TenTinhTrang]) VALUES (0, N'Hết hàng')
INSERT [dbo].[TinhTrangSP] ([MaTinhTrang], [TenTinhTrang]) VALUES (1, N'Còn hàng')
SET IDENTITY_INSERT [dbo].[TinhTrangSP] OFF
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
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_AspNetUsers] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_AspNetUsers]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_TinhTrangDH] FOREIGN KEY([MaTinhTrang])
REFERENCES [dbo].[TinhTrangDH] ([MaTinhTrang])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_TinhTrangDH]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_AspNetUsers] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_AspNetUsers]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_SanPham] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_SanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_HangSP] FOREIGN KEY([MaHang])
REFERENCES [dbo].[HangSP] ([MaHang])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_HangSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSP] ([MaLoai])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_TinhTrangSP] FOREIGN KEY([TinhTrang])
REFERENCES [dbo].[TinhTrangSP] ([MaTinhTrang])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_TinhTrangSP]
GO
/****** Object:  StoredProcedure [dbo].[KhoiPhucHangSP]    Script Date: 5/16/2017 8:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[KhoiPhucHangSP] @id int
AS
BEGIN
	update HangSP SET BiXoa = 0 where MaHang=@id
END
GO
/****** Object:  StoredProcedure [dbo].[KhoiPhucLoaiSP]    Script Date: 5/16/2017 8:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[KhoiPhucLoaiSP] @id int
AS
BEGIN
	update LoaiSP SET BiXoa = 0 where MaLoai=@id
END
GO
/****** Object:  StoredProcedure [dbo].[KhoiPhucSanPham]    Script Date: 5/16/2017 8:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[KhoiPhucSanPham] @id int
AS
BEGIN
	update SanPham SET BiXoa = 0 where MaSP=@id
END
GO
/****** Object:  StoredProcedure [dbo].[XoaHangSP]    Script Date: 5/16/2017 8:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XoaHangSP] @id int
AS
BEGIN
	update HangSP SET BiXoa = 1 where MaHang=@id
END
GO
/****** Object:  StoredProcedure [dbo].[XoaLoaiSP]    Script Date: 5/16/2017 8:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XoaLoaiSP] @id int
AS
BEGIN
	update LoaiSP SET BiXoa = 1 where MaLoai=@id
END
GO
/****** Object:  StoredProcedure [dbo].[XoaSanPham]    Script Date: 5/16/2017 8:03:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XoaSanPham] @id int
AS
BEGIN
	update SanPham SET BiXoa = 1 where MaSP=@id
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "GioHang"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SanPham"
            Begin Extent = 
               Top = 5
               Left = 354
               Bottom = 135
               Right = 524
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_GioHang'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_GioHang'
GO

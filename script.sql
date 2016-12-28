USE [master]
GO
/****** Object:  Database [HRAM-SNU_DB]    Script Date: 2016/12/28 13:22:14 ******/
CREATE DATABASE [HRAM-SNU_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HRAM-SNU_DB', FILENAME = N'C:\Database\HRAM-SNU_DB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HRAM-SNU_DB_log', FILENAME = N'C:\Database\HRAM-SNU_DB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HRAM-SNU_DB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HRAM-SNU_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HRAM-SNU_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [HRAM-SNU_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HRAM-SNU_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HRAM-SNU_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HRAM-SNU_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HRAM-SNU_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HRAM-SNU_DB] SET  MULTI_USER 
GO
ALTER DATABASE [HRAM-SNU_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HRAM-SNU_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HRAM-SNU_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HRAM-SNU_DB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [HRAM-SNU_DB]
GO
/****** Object:  Table [dbo].[T_ADImgList]    Script Date: 2016/12/28 13:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ADImgList](
	[pk_id] [nvarchar](50) NOT NULL,
	[PM_ADImgListlD] [nvarchar](50) NOT NULL,
	[PM_ADImgListURL] [nvarchar](50) NOT NULL,
	[PM_ADImgListNum] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_T_ADImgList] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DMType]    Script Date: 2016/12/28 13:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DMType](
	[pk_id] [nvarchar](50) NOT NULL,
	[DM_TypeID] [nvarchar](50) NOT NULL,
	[DM_TypeValue] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_T_DMType] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DownloadManage]    Script Date: 2016/12/28 13:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DownloadManage](
	[pk_id] [nvarchar](50) NOT NULL,
	[U_LoginName] [nvarchar](50) NOT NULL,
	[DM_Title] [nvarchar](50) NOT NULL,
	[DM_TypeID] [nvarchar](50) NOT NULL,
	[DM_FileURL] [nvarchar](50) NOT NULL,
	[DM_DownloadNum] [nvarchar](50) NOT NULL,
	[DM_UploadTime] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_T_DownloadManage] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_FriendlyLink]    Script Date: 2016/12/28 13:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_FriendlyLink](
	[pk_id] [nvarchar](50) NOT NULL,
	[U_LoginName] [nvarchar](50) NOT NULL,
	[FL_Name] [nvarchar](50) NOT NULL,
	[FL_URL] [nvarchar](100) NOT NULL,
	[FL_ImgURL] [nvarchar](100) NOT NULL,
	[FL_AddTime] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_T_FriendlyLink] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Member]    Script Date: 2016/12/28 13:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Member](
	[pk_id] [nvarchar](50) NOT NULL,
	[U_LoginName] [nvarchar](50) NOT NULL,
	[M_ReviewResultID] [nvarchar](50) NOT NULL,
	[M_ApplyTime] [nvarchar](50) NOT NULL,
	[M_Name] [nvarchar](50) NOT NULL,
	[M_TypeID] [nvarchar](50) NOT NULL,
	[M_OrganizationCode] [nvarchar](50) NOT NULL,
	[M_Address] [nvarchar](200) NOT NULL,
	[M_CorporateName] [nvarchar](50) NOT NULL,
	[M_IDCardNo] [nvarchar](50) NOT NULL,
	[M_Contacts] [nvarchar](50) NOT NULL,
	[M_ContactsPhone] [nvarchar](50) NOT NULL,
	[M_Summary] [text] NOT NULL,
	[M_ImgUrl] [nvarchar](100) NOT NULL,
	[M_URL] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_T_Members] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_MemberType]    Script Date: 2016/12/28 13:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_MemberType](
	[pk_id] [nvarchar](50) NOT NULL,
	[M_TypeID] [nvarchar](50) NOT NULL,
	[M_TypeValue] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_T_MemberType] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_PMType]    Script Date: 2016/12/28 13:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PMType](
	[pk_id] [nvarchar](50) NOT NULL,
	[PM_TypeID] [nvarchar](50) NOT NULL,
	[PM_TypeValue] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_T_PMType] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_PublishManage]    Script Date: 2016/12/28 13:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PublishManage](
	[pk_id] [nvarchar](50) NOT NULL,
	[U_LoginName] [nvarchar](50) NOT NULL,
	[PM_Title] [nvarchar](50) NOT NULL,
	[PM_TypeID] [nvarchar](50) NOT NULL,
	[PM_ADImgListlD] [nvarchar](50) NOT NULL,
	[PM_PublishTime] [nvarchar](50) NOT NULL,
	[PM_Views] [nvarchar](50) NOT NULL,
	[PM_Text] [text] NOT NULL,
	[PM_Preview] [bit] NOT NULL,
 CONSTRAINT [PK_T_PublishManage] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_ReviewResult]    Script Date: 2016/12/28 13:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ReviewResult](
	[pk_id] [nvarchar](50) NOT NULL,
	[M_ReviewResultID] [nvarchar](50) NOT NULL,
	[M_ReviewResultValue] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_T_ReviewResult] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SysModule]    Script Date: 2016/12/28 13:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SysModule](
	[M_ID] [int] IDENTITY(1,1) NOT NULL,
	[M_Name] [nvarchar](50) NULL,
	[M_LinkUrl] [nvarchar](100) NULL,
	[M_Icon] [nvarchar](100) NULL,
	[M_ParentNo] [int] NULL,
	[M_Sort] [int] NULL,
	[M_IsVisible] [bit] NULL,
	[M_IsSingle] [bit] NULL,
	[M_IsMenu] [bit] NULL,
	[M_IsDeleted] [bit] NULL,
	[M_Controller] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Sys_Module] PRIMARY KEY CLUSTERED 
(
	[M_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_User]    Script Date: 2016/12/28 13:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_User](
	[pk_id] [nvarchar](50) NOT NULL,
	[U_LoginName] [nvarchar](50) NOT NULL,
	[U_LoginTypeID] [nvarchar](50) NOT NULL,
	[U_Password] [nvarchar](50) NOT NULL,
	[U_UserName] [nvarchar](50) NOT NULL,
	[U_Phone] [nvarchar](50) NOT NULL,
	[U_MaiBox] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_T_Admin] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_UserType]    Script Date: 2016/12/28 13:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_UserType](
	[pk_id] [nvarchar](50) NOT NULL,
	[U_LoginTypeID] [nvarchar](50) NOT NULL,
	[U_LoginTypeValue] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_T_UserType] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[T_DMType] ([pk_id], [DM_TypeID], [DM_TypeValue]) VALUES (N'653DC690-3C28-481B-A12F-EF4011E80000', N'2003', N'表格')
INSERT [dbo].[T_DMType] ([pk_id], [DM_TypeID], [DM_TypeValue]) VALUES (N'D2572298-BC95-4B3A-A77D-433580462A21', N'2002', N'简历模板')
INSERT [dbo].[T_DMType] ([pk_id], [DM_TypeID], [DM_TypeValue]) VALUES (N'FB48E856-7DD6-4987-99DB-68CA12A93B87', N'2001', N'HR表格')
INSERT [dbo].[T_Member] ([pk_id], [U_LoginName], [M_ReviewResultID], [M_ApplyTime], [M_Name], [M_TypeID], [M_OrganizationCode], [M_Address], [M_CorporateName], [M_IDCardNo], [M_Contacts], [M_ContactsPhone], [M_Summary], [M_ImgUrl], [M_URL]) VALUES (N'077F9FB8-ECE5-4136-B404-B89EA5592229', N'1314', N'0001', N'314', N'14', N'30001', N'2134', N'234', N'2341', N'234', N'1243', N'234', N'2134', N'124', N'124')
INSERT [dbo].[T_Member] ([pk_id], [U_LoginName], [M_ReviewResultID], [M_ApplyTime], [M_Name], [M_TypeID], [M_OrganizationCode], [M_Address], [M_CorporateName], [M_IDCardNo], [M_Contacts], [M_ContactsPhone], [M_Summary], [M_ImgUrl], [M_URL]) VALUES (N'4FCD95C5-CE39-4530-A30A-6B2850DA981D', N'123', N'0001', N'123', N'12', N'30001', N'234', N'234', N'234', N'234', N'234', N'234', N'234', N'234', N'234')
INSERT [dbo].[T_Member] ([pk_id], [U_LoginName], [M_ReviewResultID], [M_ApplyTime], [M_Name], [M_TypeID], [M_OrganizationCode], [M_Address], [M_CorporateName], [M_IDCardNo], [M_Contacts], [M_ContactsPhone], [M_Summary], [M_ImgUrl], [M_URL]) VALUES (N'F63E3D52-6E80-47D6-B716-EB6D09F97F32', N'123', N'0001', N'234', N'234', N'66666', N'qwe', N'123', N'123', N'123', N'123', N'123', N'123', N'123', N'123')
INSERT [dbo].[T_MemberType] ([pk_id], [M_TypeID], [M_TypeValue]) VALUES (N'0EC11004-07FF-47DF-8C88-5C0AA343563C', N'66666', N'二级会员')
INSERT [dbo].[T_MemberType] ([pk_id], [M_TypeID], [M_TypeValue]) VALUES (N'19A35000-F5DE-42A1-90AF-97A9D2743501', N'30001', N'一级会员')
INSERT [dbo].[T_MemberType] ([pk_id], [M_TypeID], [M_TypeValue]) VALUES (N'9D4D3630-6552-4483-AEE0-4002293EF7F9', N'30003', N'12313')
INSERT [dbo].[T_MemberType] ([pk_id], [M_TypeID], [M_TypeValue]) VALUES (N'CE7EEC9D-6388-4B06-9B63-A64304BE439D', N'30004', N'123123')
INSERT [dbo].[T_PMType] ([pk_id], [PM_TypeID], [PM_TypeValue]) VALUES (N'0C726F9B-CE88-45A3-89A6-4688AB74E050', N'1001', N'社会保障')
INSERT [dbo].[T_PMType] ([pk_id], [PM_TypeID], [PM_TypeValue]) VALUES (N'B8B76011-FC79-4DD9-98F5-145DF38B4BA1', N'1002', N'人力资源')
INSERT [dbo].[T_ReviewResult] ([pk_id], [M_ReviewResultID], [M_ReviewResultValue]) VALUES (N'1CC66838-9680-4539-BE4B-43935C3F2221', N'0003', N'审核未通过')
INSERT [dbo].[T_ReviewResult] ([pk_id], [M_ReviewResultID], [M_ReviewResultValue]) VALUES (N'207FC595-5385-44BD-9359-20805882F50E', N'0003', N'wersdfq')
INSERT [dbo].[T_ReviewResult] ([pk_id], [M_ReviewResultID], [M_ReviewResultValue]) VALUES (N'8949D434-A427-4A1D-95E4-D67EC827F909', N'0002', N'审核通过')
INSERT [dbo].[T_ReviewResult] ([pk_id], [M_ReviewResultID], [M_ReviewResultValue]) VALUES (N'8AE804BC-9A3A-4012-988C-AADC96B13F8A', N'0003', N'@#%@')
INSERT [dbo].[T_ReviewResult] ([pk_id], [M_ReviewResultID], [M_ReviewResultValue]) VALUES (N'DA972C06-A7F1-414D-9F69-566E1B50520A', N'0009', N'黑名单')
INSERT [dbo].[T_ReviewResult] ([pk_id], [M_ReviewResultID], [M_ReviewResultValue]) VALUES (N'DC6C3A3B-46A8-4F71-B199-D8745B31CB73', N'0001', N'待审核')
SET IDENTITY_INSERT [dbo].[T_SysModule] ON 

INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (1, N'系统管理', NULL, N'/Images/icons/32X32/settings.gif', 0, 2, 1, 1, 1, 0, NULL)
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (2, N'部门管理', N'/Manager/System/DepartmentView', N'/Scripts/Manager/icons/32X32/customers.gif', 1, 66, 1, 1, 1, 1, N'Department')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (3, N'后台用户管理', N'/Manager/System/ModuleView', N'/Scripts/Manager/icons/32X32/user.gif', 1, 5, 1, 1, 1, 1, N'SystemController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (4, N'角色管理', N'/Manager/System/RoleView', N'/Scripts/Manager/icons/32X32/role.gif', 1, 6, 1, 1, 1, 1, N'Role')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (5, N'组织架构', NULL, N'/Scripts/Manager/icons/32X32/sitemap.gif', 0, 3, 0, 1, 1, 1, NULL)
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (8, N'系统日志管理', N'/Admin/OperateLog/Index', N'/Scripts/Manager/icons/32X32/project.gif', 1, 5, 1, 1, 1, 1, N'OperateLog')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (9, N'后台管理', N'/Manager/System/ModuleView', N'/Images/icons/32X32/bank.gif', 1, 55, 1, 1, 1, 0, N'Menus')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (11, N'系统权限维护', N'/Manager/System/ModuleView', N'/Scripts/Manager/icons/32X32/config.gif', 1, 10, 1, 1, 1, 1, N'Button')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (23, N'菜单按钮管理', N'/Admin/MenusButtonsManage/Index', N'/Scripts/Manager/icons/32X32/feed.gif', 1, 10, 1, 1, 0, 1, N'MenusButtonsManage')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (24, N'角色权限管理', N'/Admin/RolePermission/Index', N'/Scripts/Manager/icons/32X32/setup.gif', 1, 55, 1, 1, 1, 1, N'RolePermission')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (25, N'系统配置', N'/Manager/Config/WebSiteConfig', N'/Images/icons/32X32/networking.gif', 1, NULL, 1, 1, 0, 0, N'Config')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (27, N'友情链接', N'/Manager/Links/LinksView', N'/Scripts/Manager/icons/32X32/login.gif', 63, 7, 1, 1, 0, 1, N'LinksController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (39, N'产品类别管理', N'/Manager/Products/ProductsTypeView', N'/Scripts/Manager/icons/32X32/feed.gif', 50, 9, 1, 1, 0, 1, N'ProductsController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (41, N'产品管理', N'/Manager/Products/ProductsView', N'/Scripts/Manager/icons/32X32/feed.gif', 63, 1, 1, 1, 1, 1, N'ProductsController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (42, N'企业概况', NULL, N'/Scripts/Manager/icons/32X32/sitemap.gif', 0, 4, 1, 0, 1, 1, NULL)
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (43, N'企业介绍', N'/Manager/SinglePage/SinglePageEdit', N'/Scripts/Manager/icons/32X32/feed.gif', 42, 10, 1, 0, 1, 1, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (44, N'资质荣誉', N'/Manager/Qualification/QualificationView', N'/Scripts/Manager/icons/32X32/feed.gif', 51, 10, 1, 1, 1, 0, N'QualificationController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (45, N'菜单UI管理', N'/Manager/System/MenusUiView', N'/Scripts/Manager/icons/32X32/order_159.gif', 1, NULL, 1, 1, 1, 1, N'SystemController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (46, N'组织机构', N'/Manager/SinglePage/SinglePageEdit', N'/Scripts/Manager/icons/32X32/feed.gif', 42, 10, 1, 0, 1, 1, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (47, N'发展历程', N'/Manager/SinglePage/SinglePageEdit', N'/Scripts/Manager/icons/32X32/feed.gif', 42, 10, 1, 0, 1, 1, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (48, N'测试', N'2', N'/Scripts/Manager/icons/32X32/lock.gif', 1, 48, 1, 1, 1, 1, N'1')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (49, N'测试', N'2', N'/Scripts/Manager/icons/32X32/product.gif', 1, 49, 1, 1, 1, 1, N'1')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (50, N'产品展示', NULL, N'/Scripts/Manager/icons/32X32/product_design.gif', 0, 50, 1, 1, 1, 1, N'ProductsController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (51, N'企业文化', NULL, N'/Scripts/Manager/icons/32X32/member.gif', 0, 51, 1, 1, 1, 1, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (52, N'质量方针', N'/Manager/SinglePage/SinglePageEdit', N'/Scripts/Manager/icons/32X32/searchtool.gif', 51, 52, 1, 0, 1, 0, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (53, N'环境、职业健康安全方针', N'/Manager/SinglePage/SinglePageEdit', N'/Scripts/Manager/icons/32X32/Time Machine.gif', 51, 53, 1, 0, 1, 0, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (54, N'研发能力', N'/Manager/SinglePage/SinglePageEdit', N'/Scripts/Manager/icons/32X32/photography.gif', 51, 54, 1, 0, 1, 0, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (55, N'生产能力和设备', N'/Manager/SinglePage/SinglePageEdit', N'/Scripts/Manager/icons/32X32/delicious (2).gif', 51, 55, 1, 0, 1, 0, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (56, N'人力资源', NULL, N'/Scripts/Manager/icons/32X32/user.gif', 0, 56, 1, 1, 1, 1, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (57, N'人才招聘', N'/Manager/SinglePage/SinglePageEdit', N'/Scripts/Manager/icons/32X32/freelance.gif', 56, 57, 1, 0, 1, 0, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (58, N'联系我们', NULL, N'/Scripts/Manager/icons/32X32/date.gif', 0, 58, 1, 1, 1, 1, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (59, N'我们的服务', N'/Manager/SinglePage/SinglePageEdit', N'/Scripts/Manager/icons/32X32/premium.gif', 58, 59, 1, 0, 1, 1, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (60, N'联系方式', N'/Manager/SinglePage/SinglePageEdit', N'/Scripts/Manager/icons/32X32/hire_me.gif', 58, 60, 1, 0, 1, 1, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (61, N'新闻列表', N'/Manager/Article/NewsView', N'/Scripts/Manager/icons/32X32/communication.gif', 51, 61, 1, 1, 1, 0, N'ArticleController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (62, N'广告位管理', N'/Manager/Ad/AdView', N'/Scripts/Manager/icons/32X32/feed.gif', 63, 5, 1, 0, 1, 1, N'Ad')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (63, N'内容管理', NULL, N'/Images/icons/32X32/settings.gif', 0, 1, 1, 1, 1, 0, NULL)
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (64, N'单页管理', N'/Manager/SinglePage/SinglePageView', N'/Scripts/Manager/icons/32X32/settings.gif', 63, 2, 1, 1, 1, 1, N'SinglePageController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (65, N'用户管理', N'/Manager/User/UsersView', N'/Images/icons/32X32/user.gif', 63, 30, 1, 0, 1, 0, N'UserController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (66, N'会员管理', N'/Manager/Member/MemberView', N'/Images/icons/32X32/role.gif', 63, 30, 1, 0, 1, 0, N'MemberController')
INSERT [dbo].[T_SysModule] ([M_ID], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsSingle], [M_IsMenu], [M_IsDeleted], [M_Controller]) VALUES (67, N'类型管理', N'/Manager/TypeManager/TypeManagerView', N'/Images/icons/32X32/communication.gif', 1, 30, 1, 0, 1, 0, N'TypeManagerController')
SET IDENTITY_INSERT [dbo].[T_SysModule] OFF
INSERT [dbo].[T_User] ([pk_id], [U_LoginName], [U_LoginTypeID], [U_Password], [U_UserName], [U_Phone], [U_MaiBox]) VALUES (N'0A6039BF-6527-4C72-9E09-F63EAF080F7F', N'123', N'0002', N'202CB962AC59075B964B07152D234B70', N'123', N'123', N'123')
INSERT [dbo].[T_User] ([pk_id], [U_LoginName], [U_LoginTypeID], [U_Password], [U_UserName], [U_Phone], [U_MaiBox]) VALUES (N'38F5600E-008F-4269-919A-0A756CF68E6A', N'qwe', N'0001', N'76D80224611FC919A5D54F0FF9FBA446', N'qwe', N'qwe', N'qwe')
INSERT [dbo].[T_User] ([pk_id], [U_LoginName], [U_LoginTypeID], [U_Password], [U_UserName], [U_Phone], [U_MaiBox]) VALUES (N'7E7E975E-7EF1-42E5-9CB1-3EC4C5661945', N'admin', N'0001', N'202CB962AC59075B964B07152D234B70', N'徐志坚', N'15196606812', N'ccc.surpass@qq.com')
INSERT [dbo].[T_UserType] ([pk_id], [U_LoginTypeID], [U_LoginTypeValue]) VALUES (N'0813851F-549D-430B-B2B0-6F0934DB7E7E', N'0001', N'管理员')
INSERT [dbo].[T_UserType] ([pk_id], [U_LoginTypeID], [U_LoginTypeValue]) VALUES (N'3C52C3F2-B354-4498-8D65-4A17D0198271', N'0002', N'普通用户')
INSERT [dbo].[T_UserType] ([pk_id], [U_LoginTypeID], [U_LoginTypeValue]) VALUES (N'4A6F009E-C281-4737-8075-676D3449D896', N'0003', N'游客')
INSERT [dbo].[T_UserType] ([pk_id], [U_LoginTypeID], [U_LoginTypeValue]) VALUES (N'870A8C16-F553-4453-9D0B-28DF20FC552D', N'0004', N'黑名单')
ALTER TABLE [dbo].[T_ADImgList] ADD  CONSTRAINT [DF_T_ADImgList_pk_id]  DEFAULT (newid()) FOR [pk_id]
GO
ALTER TABLE [dbo].[T_DMType] ADD  CONSTRAINT [DF_T_DMType_pk_id]  DEFAULT (newid()) FOR [pk_id]
GO
ALTER TABLE [dbo].[T_DownloadManage] ADD  CONSTRAINT [DF_T_DownloadManage_pk_id]  DEFAULT (newid()) FOR [pk_id]
GO
ALTER TABLE [dbo].[T_DownloadManage] ADD  CONSTRAINT [DF_T_DownloadManage_DM_TypeID]  DEFAULT ('-0000') FOR [DM_TypeID]
GO
ALTER TABLE [dbo].[T_DownloadManage] ADD  CONSTRAINT [DF_T_DownloadManage_DM_DownloadNum]  DEFAULT ((0)) FOR [DM_DownloadNum]
GO
ALTER TABLE [dbo].[T_FriendlyLink] ADD  CONSTRAINT [DF_T_FriendlyLink_pk_id]  DEFAULT (newid()) FOR [pk_id]
GO
ALTER TABLE [dbo].[T_FriendlyLink] ADD  CONSTRAINT [DF_T_FriendlyLink_FL_ImgURL]  DEFAULT (N'暂无') FOR [FL_ImgURL]
GO
ALTER TABLE [dbo].[T_Member] ADD  CONSTRAINT [DF_T_Members_pk_id]  DEFAULT (newid()) FOR [pk_id]
GO
ALTER TABLE [dbo].[T_Member] ADD  CONSTRAINT [DF_T_Member_M_ReviewResultID]  DEFAULT ('-0000') FOR [M_ReviewResultID]
GO
ALTER TABLE [dbo].[T_Member] ADD  CONSTRAINT [DF_T_Member_M_TypeID]  DEFAULT ('-0000') FOR [M_TypeID]
GO
ALTER TABLE [dbo].[T_Member] ADD  CONSTRAINT [DF_T_Members_M_ImgUrl]  DEFAULT (N'暂无') FOR [M_ImgUrl]
GO
ALTER TABLE [dbo].[T_Member] ADD  CONSTRAINT [DF_T_Members_M_URL]  DEFAULT (N'暂无') FOR [M_URL]
GO
ALTER TABLE [dbo].[T_MemberType] ADD  CONSTRAINT [DF_T_MemberType_pk_id]  DEFAULT (newid()) FOR [pk_id]
GO
ALTER TABLE [dbo].[T_PMType] ADD  CONSTRAINT [DF_T_PMType_pk_id]  DEFAULT (newid()) FOR [pk_id]
GO
ALTER TABLE [dbo].[T_PublishManage] ADD  CONSTRAINT [DF_T_PublishManage_pk_id]  DEFAULT (newid()) FOR [pk_id]
GO
ALTER TABLE [dbo].[T_PublishManage] ADD  CONSTRAINT [DF_T_PublishManage_PM_TypeID]  DEFAULT ('-0000') FOR [PM_TypeID]
GO
ALTER TABLE [dbo].[T_PublishManage] ADD  CONSTRAINT [DF_T_PublishManage_PM_ADImgListlD]  DEFAULT (N'暂无') FOR [PM_ADImgListlD]
GO
ALTER TABLE [dbo].[T_PublishManage] ADD  CONSTRAINT [DF_T_PublishManage_PM_Views]  DEFAULT ((0)) FOR [PM_Views]
GO
ALTER TABLE [dbo].[T_ReviewResult] ADD  CONSTRAINT [DF_T_ReviewResult_pk_id]  DEFAULT (newid()) FOR [pk_id]
GO
ALTER TABLE [dbo].[T_User] ADD  CONSTRAINT [DF_T_Admin_pk_id]  DEFAULT (newid()) FOR [pk_id]
GO
ALTER TABLE [dbo].[T_User] ADD  CONSTRAINT [DF_T_User_U_LoginTypeID]  DEFAULT ('-0000') FOR [U_LoginTypeID]
GO
ALTER TABLE [dbo].[T_User] ADD  CONSTRAINT [DF_T_Admin_A_Phone]  DEFAULT (N'暂无') FOR [U_Phone]
GO
ALTER TABLE [dbo].[T_User] ADD  CONSTRAINT [DF_T_Admin_A_MaiBox]  DEFAULT (N'暂无') FOR [U_MaiBox]
GO
ALTER TABLE [dbo].[T_UserType] ADD  CONSTRAINT [DF_T_UserType_pk_id]  DEFAULT (newid()) FOR [pk_id]
GO
USE [master]
GO
ALTER DATABASE [HRAM-SNU_DB] SET  READ_WRITE 
GO

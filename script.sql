USE [master]
GO
/****** Object:  Database [HRAM-SNU_DB]    Script Date: 2017/2/24 21:12:27 ******/
CREATE DATABASE [HRAM-SNU_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HRAM-SNU_DB', FILENAME = N'D:\database\HRAM-SNU_DB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HRAM-SNU_DB_log', FILENAME = N'D:\database\HRAM-SNU_DB_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  Table [dbo].[T_ADImgList]    Script Date: 2017/2/24 21:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ADImgList](
	[pk_id] [nvarchar](50) NOT NULL,
	[PM_ADImgListID] [nvarchar](50) NOT NULL,
	[PM_ADImgListURL] [nvarchar](50) NOT NULL,
	[PM_ADImgListNum] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_T_ADImgList] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DMType]    Script Date: 2017/2/24 21:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DMType](
	[pk_id] [nvarchar](50) NOT NULL,
	[DM_TypeID] [nvarchar](50) NOT NULL,
	[DM_TypeValue] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_T_DMType] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_DownloadManage]    Script Date: 2017/2/24 21:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_DownloadManage](
	[pk_id] [nvarchar](50) NOT NULL,
	[U_LoginName] [nvarchar](50) NOT NULL,
	[DM_Title] [nvarchar](50) NOT NULL,
	[DM_TypeID] [nvarchar](50) NOT NULL,
	[DM_FileURL] [nvarchar](50) NULL,
	[DM_DownloadNum] [bigint] NULL,
	[DM_UploadTime] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_T_DownloadManage] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_FriendlyLink]    Script Date: 2017/2/24 21:12:27 ******/
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
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_T_FriendlyLink] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Member]    Script Date: 2017/2/24 21:12:27 ******/
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
	[M_Summary] [text] NULL,
	[M_ImgURL] [nvarchar](100) NULL,
	[M_URL] [nvarchar](100) NOT NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_T_Members] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_MemberType]    Script Date: 2017/2/24 21:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_MemberType](
	[pk_id] [nvarchar](50) NOT NULL,
	[M_TypeID] [nvarchar](50) NOT NULL,
	[M_TypeValue] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_T_MemberType] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_PMType]    Script Date: 2017/2/24 21:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PMType](
	[pk_id] [nvarchar](50) NOT NULL,
	[PM_TypeID] [nvarchar](50) NOT NULL,
	[PM_TypeValue] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_T_PMType] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_PublishManage]    Script Date: 2017/2/24 21:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PublishManage](
	[pk_id] [nvarchar](50) NOT NULL,
	[U_LoginName] [nvarchar](50) NOT NULL,
	[PM_Title] [nvarchar](50) NULL,
	[PM_TypeID] [nvarchar](50) NOT NULL,
	[PM_ADImgListID] [nvarchar](50) NULL,
	[PM_PublishTime] [nvarchar](50) NOT NULL,
	[PM_Views] [bigint] NULL,
	[PM_Text] [text] NULL,
	[PM_Preview] [bit] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_T_PublishManage] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_ReviewResult]    Script Date: 2017/2/24 21:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ReviewResult](
	[pk_id] [nvarchar](50) NOT NULL,
	[M_ReviewResultID] [nvarchar](50) NOT NULL,
	[M_ReviewResultValue] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_T_ReviewResult] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_SysModule]    Script Date: 2017/2/24 21:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_SysModule](
	[pk_id] [int] IDENTITY(1,1) NOT NULL,
	[M_Name] [nvarchar](50) NULL,
	[M_LinkUrl] [nvarchar](100) NULL,
	[M_Icon] [nvarchar](100) NULL,
	[M_ParentNo] [int] NULL,
	[M_Sort] [int] NULL,
	[M_IsVisible] [bit] NULL,
	[M_IsMenu] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[M_Controller] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Sys_Module] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_User]    Script Date: 2017/2/24 21:12:27 ******/
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
	[U_Phone] [nvarchar](50) NULL,
	[U_MaiBox] [nvarchar](50) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_T_Admin] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_UserType]    Script Date: 2017/2/24 21:12:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_UserType](
	[pk_id] [nvarchar](50) NOT NULL,
	[U_LoginTypeID] [nvarchar](50) NOT NULL,
	[U_LoginTypeValue] [nvarchar](50) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_T_UserType] PRIMARY KEY CLUSTERED 
(
	[pk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[T_ADImgList] ([pk_id], [PM_ADImgListID], [PM_ADImgListURL], [PM_ADImgListNum], [IsDeleted]) VALUES (N'22522D03-A3AE-4FCC-8D1F-C21169FAEA70', N'123', N'/upload/publish/201702182354506533.jpg', N'2', 0)
INSERT [dbo].[T_ADImgList] ([pk_id], [PM_ADImgListID], [PM_ADImgListURL], [PM_ADImgListNum], [IsDeleted]) VALUES (N'47A976E0-DC9A-4A63-8FC5-2FA6E0ECA546', N'123', N'123', N'1', 0)
INSERT [dbo].[T_ADImgList] ([pk_id], [PM_ADImgListID], [PM_ADImgListURL], [PM_ADImgListNum], [IsDeleted]) VALUES (N'DD8DE8E5-7F5F-4118-B849-1EED03D1B6EE', N'123', N'/upload/publish/201702202152598373.png', N'3', 0)
INSERT [dbo].[T_DMType] ([pk_id], [DM_TypeID], [DM_TypeValue], [IsDeleted]) VALUES (N'5B7FD07B-16C3-48DB-BC0F-D7C2B4401F68', N'scdsc', N'esdfs', 0)
INSERT [dbo].[T_DMType] ([pk_id], [DM_TypeID], [DM_TypeValue], [IsDeleted]) VALUES (N'653DC690-3C28-481B-A12F-EF4011E80000', N'2003', N'表格', 0)
INSERT [dbo].[T_DMType] ([pk_id], [DM_TypeID], [DM_TypeValue], [IsDeleted]) VALUES (N'D2572298-BC95-4B3A-A77D-433580462A21', N'2002', N'简历模板', 0)
INSERT [dbo].[T_DMType] ([pk_id], [DM_TypeID], [DM_TypeValue], [IsDeleted]) VALUES (N'FB48E856-7DD6-4987-99DB-68CA12A93B87', N'2001', N'HR表格', 0)
INSERT [dbo].[T_DownloadManage] ([pk_id], [U_LoginName], [DM_Title], [DM_TypeID], [DM_FileURL], [DM_DownloadNum], [DM_UploadTime], [IsDeleted]) VALUES (N'1ABB624C-485F-4BBC-9EEB-E44C3CCC099F', N'dsfg', N'dsfg', N'2001', N'', 0, N'2017-02-01 16:44:57', 0)
INSERT [dbo].[T_DownloadManage] ([pk_id], [U_LoginName], [DM_Title], [DM_TypeID], [DM_FileURL], [DM_DownloadNum], [DM_UploadTime], [IsDeleted]) VALUES (N'8DBB4F04-6D06-44DE-ACA1-765492782D5E', N'dfhg', N'fghd', N'scdsc', N'', 0, N'2017-02-08 16:43:21', 0)
INSERT [dbo].[T_DownloadManage] ([pk_id], [U_LoginName], [DM_Title], [DM_TypeID], [DM_FileURL], [DM_DownloadNum], [DM_UploadTime], [IsDeleted]) VALUES (N'CD3D823A-5919-422D-8386-E95B577D3EC9', N'123', N'123', N'scdsc', N'/upload/download/files/201702190915246989.docx', 0, N'2017-02-01 09:15:17', 0)
INSERT [dbo].[T_DownloadManage] ([pk_id], [U_LoginName], [DM_Title], [DM_TypeID], [DM_FileURL], [DM_DownloadNum], [DM_UploadTime], [IsDeleted]) VALUES (N'E06A2C9C-CA00-499E-9721-EE6BCE846A19', N'dfhgfd', N'fdgh', N'2002', N'fdgh', 0, N'fgh', 0)
INSERT [dbo].[T_FriendlyLink] ([pk_id], [U_LoginName], [FL_Name], [FL_URL], [FL_ImgURL], [FL_AddTime], [IsDeleted]) VALUES (N'F6081C23-3B80-4967-8A6F-2AFDF8EB02C3', N'123', N'12123', N'123', N'123213', N'2017-02-19 10:53:16', 0)
INSERT [dbo].[T_Member] ([pk_id], [U_LoginName], [M_ReviewResultID], [M_ApplyTime], [M_Name], [M_TypeID], [M_OrganizationCode], [M_Address], [M_CorporateName], [M_IDCardNo], [M_Contacts], [M_ContactsPhone], [M_Summary], [M_ImgURL], [M_URL], [IsDeleted]) VALUES (N'077F9FB8-ECE5-4136-B404-B89EA5592229', N'1314', N'0001', N'314', N'14', N'30001', N'2134', N'234', N'2341', N'234', N'1243', N'234', N'<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2134
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p><img src="../../../upload/ueditor/image/20170114/6362000367403858752764660.jpg" title="282-2-1366x768_副本.jpg" alt="282-2-1366x768_副本.jpg"/></p>', N'', N'124', 0)
INSERT [dbo].[T_Member] ([pk_id], [U_LoginName], [M_ReviewResultID], [M_ApplyTime], [M_Name], [M_TypeID], [M_OrganizationCode], [M_Address], [M_CorporateName], [M_IDCardNo], [M_Contacts], [M_ContactsPhone], [M_Summary], [M_ImgURL], [M_URL], [IsDeleted]) VALUES (N'4FCD95C5-CE39-4530-A30A-6B2850DA981D', N'123', N'0001', N'123', N'12', N'30001', N'234', N'234', N'234', N'234', N'234', N'234', N'<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;234
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="/ueditor/net/upload/image/20170114/6362000401667418515753372.png" title="scrawl.png" alt="scrawl.png"/><video class="edui-upload-video  vjs-default-skin video-js" controls="" preload="none" width="420" height="280" src="../../../upload/ueditor/video/20170114/6362000402906289373592846.mp4" data-setup="{}"></video></p>', N'/upload/member/icons/201702182324245864.jpg', N'234', 0)
INSERT [dbo].[T_Member] ([pk_id], [U_LoginName], [M_ReviewResultID], [M_ApplyTime], [M_Name], [M_TypeID], [M_OrganizationCode], [M_Address], [M_CorporateName], [M_IDCardNo], [M_Contacts], [M_ContactsPhone], [M_Summary], [M_ImgURL], [M_URL], [IsDeleted]) VALUES (N'58238963-BB86-45F9-A8F7-42514381E00B', N'123', N'0002', N'123', N'123', N'30001', N'123', N'123', N'123', N'123', N'123', N'123', N'123', NULL, N'123', NULL)
INSERT [dbo].[T_MemberType] ([pk_id], [M_TypeID], [M_TypeValue], [IsDeleted]) VALUES (N'0EC11004-07FF-47DF-8C88-5C0AA343563C', N'66666', N'二级会员', 0)
INSERT [dbo].[T_MemberType] ([pk_id], [M_TypeID], [M_TypeValue], [IsDeleted]) VALUES (N'19A35000-F5DE-42A1-90AF-97A9D2743501', N'30001', N'一级会员', 0)
INSERT [dbo].[T_MemberType] ([pk_id], [M_TypeID], [M_TypeValue], [IsDeleted]) VALUES (N'9D4D3630-6552-4483-AEE0-4002293EF7F9', N'30003', N'12313', 0)
INSERT [dbo].[T_MemberType] ([pk_id], [M_TypeID], [M_TypeValue], [IsDeleted]) VALUES (N'E1C711D0-63BD-4849-8438-586A0B24C262', N'MEMBER_201701141931134963', N'12356', 0)
INSERT [dbo].[T_PMType] ([pk_id], [PM_TypeID], [PM_TypeValue], [IsDeleted]) VALUES (N'0C726F9B-CE88-45A3-89A6-4688AB74E050', N'1001', N'社会保障', 0)
INSERT [dbo].[T_PMType] ([pk_id], [PM_TypeID], [PM_TypeValue], [IsDeleted]) VALUES (N'0F0FB851-CD91-4453-86DA-E083798A9EB8', N'1002', N'1332', 0)
INSERT [dbo].[T_PublishManage] ([pk_id], [U_LoginName], [PM_Title], [PM_TypeID], [PM_ADImgListID], [PM_PublishTime], [PM_Views], [PM_Text], [PM_Preview], [IsDeleted]) VALUES (N'0F0B32C8-3535-4F25-8753-03ED58886BEF', N'123', N'一诉衷肠，一生倾心', N'1001', N'123', N'123', 123, N'风吹开了记忆的锁，想起一段旧时光，曾错失的你我，空留下遗憾，桃花灼灼，寂寞未央，越想忘记越深刻，痛过、醉过，心碎到无奈。对你的难舍，让流年溢满苦涩的味道；以为放下了却在梦醒后，想起你的音容泪滑落。
　　
　　——题记
　　
　　又见花开满城，是你又来过吗？说不清为什么，为何被孤独和悲伤牵扯。解不开的因果，三千华发生，一念执着，一生倾心。
　　
　　披上那件霓衣，舞一曲倾城，你拨弄的琴音扰乱了心扉，一段过往，一个故事，执笔间，光阴流转。执著的都随风，要经历多少风雨，才能看到彩虹。
　　
　　剪不断纠葛，繁华的灯亮起来，一个人走在拥挤的长街，你是否会想起相遇的那一天，只那一眼，便诉了衷肠，步步沦陷，此后，岁月荏苒，一生倾心，走不出情网。
　　
　　只因那年一遇见，命运从此便不同。想要圆满的结局，偏偏天不随人愿。如果不是离别太匆匆。怎会拼命想再见。情之一字，本就无解，不巧我们都沦陷。所有的情节，只能在梦中浮现，像万语千言不停催我赌上明天。一别经年，路途辗转，对你的呼唤，你再也听不见。
　　
　　落红飞花，月缺月圆，无所谓年月，原来，痴情的人早已遗忘了时间，任凭沧海变桑田，初心不改。送君千里，一步一摇一回眸中，得此一生。执笔记录飞快，山一程，水一程，梦一生，念一生，不过是流年的碎片。
　　
　　手上磨出了老茧，一再写意，只剩心伤。相思一片千万缕，唯有一颗真心难描画，明月夜，就让当空的皓月寄去思念，守候着绝美月光，倾洒一身寂寞。
　　
　　凡尘过往，终不过是一场繁华，谁深情的回眸，谁又在世间等待着蒹葭。明月照亮天涯路，灯火阑珊处，已无人守候。沉默亦是最好的良药，时光已翩然而去，拂去衣上风霜，不过是寻常。
　　
　　站在风中，一声叹息划破夜的沉静，你说，记忆终会散会，依如逝水。我却始终认为最珍贵的记忆，将是永恒。就像有的人，在一起十年依然记忆浅薄，有的人即使是相识一天，也可以记住一生。莫怪世人天生薄凉，只是身不由已罢了。
　　
　　多少情深，化作多情的雨，伴着眼泪一路走来，留下无数憧憬，如果生活只剩诗和远方，我愿种下十里桃林，酿一坛桃花酒，醉卧十里花香，抹去所有记忆，换一个人的天涯。
　　
　　你说，情深不寿，慧极生悲。昨日一别，世上再无深情，独我带着旧时光，一路跌跌撞撞，写下无数文字，最后都变成了你来时的模样。花已葬，梦已醒，拿起放下本难当，红尘梦中空徘徊，曲终人散，只有伤心人才懂，你若还在，便是晴天。
　　
　　我曾经以为不去计较，就可以换一个相依。但是人终要醒，最真的自己总要来。过往历历在目，曾经受过多少伤，吃过多少苦，又有谁能够明白？下一个路口，下一个转角，相遇和离别，都变得无足轻重。
　　
　　或许我一直在等那么一个人能够让我放下所有的忧伤，重拾笑颜。你来与不来，都在我心中的一个角落，我若离开，后会无期，你的存在让我相信过这世界的美好，即使此后一路荒凉。
　　
　　说起彼此的故事，仿佛还在昨天，原来，你的世界，曾是我路过的幸福，此后与寂寞有染，在尘世历经坎坷。花开若相知过，花落后分离又有什么可惜，清风明月，伴我独行，你离别时的赠语，写得那样凄美，如今落满尘埃。
　　
　　你说，你会一直记住那个人，直到生命的尽头。我站在茫茫夜色中，看到你眼中满是决绝，漫漫人生路，我只是一个平凡的女子，却想得到世间倾世的爱，也就注定会以悲剧收场吧。一个人走向远方，听着那首熟悉的歌。幸好你来过，曾留下一路芬芳，一诉衷肠，一生倾心。
　　
　　文/昕月蓝殇.落笔于2017.2.16.QQ:1743038490', 1, 0)
INSERT [dbo].[T_PublishManage] ([pk_id], [U_LoginName], [PM_Title], [PM_TypeID], [PM_ADImgListID], [PM_PublishTime], [PM_Views], [PM_Text], [PM_Preview], [IsDeleted]) VALUES (N'74A7D80B-0B9E-4201-98F0-C8CFF608D78E', N'123', N'三生缘起，桃花初见', N'1001', N'1231', N'123', 123, N'一季桃花，浅浅香，素素开。亘古的陌上，遥望一处芳菲桃林，盈盈花间，那一回眸的浅浅笑靥，醉了多少世人相看的心目。十里桃花，开满爱的浪漫寄语，三生三世，芬芳美丽着如初的情怀。风尘里行走，历经许多年的烟云变幻，我们依然相信爱情，依然相信是一种花开，鉴证了一份漫长而笃定的爱恋。
　　
　　三生三世，十里桃花，初见，惊艳，便已感动得自己眼底盈泪。三生情、三世缘，宿命的羁绊，命运的交错，翩翩飞落的花瓣以及桃花树下的黯然背影，都化作一笔桃花债的冗长写意。看尽十里桃花芳菲，品一段荡气回肠的爱恋。终思量：谁欠了谁，一世相约的盛开。
　　
　　很多时候，缘分与爱，只是一个生动的词、一句入心的话，或是一朵绽放的花，一处有故事的景。三生三世十里桃花，开开落落间，翩然逸美了时光。三生三世，她和他，注定背负一段缠绵而苦痛的情缘，终能信守一个一如初见的生生世世的承诺，相守永生的圆满。
　　
　　那一世的交集，不过是她做的一场梦，一个带着无尽苦楚和微微桃花色的劫。如若，可以重新来选择，她是否，依然会端起那一碗忘情水，决然饮下，选择忘记一段真情苦虐的尘缘。三生三世，早有命定的姻缘，赋予一种爱情传奇色彩的幻美。朦胧中，她眼中带泪，映着云水清澈的月华，却恋上一个悠长而迷离的梦。
　　
　　倘若，花开花谢的故事，真的能够变成不老的传奇，我愿陪你，在途经的轮回里开花；让此间花事，在光阴的褶皱里绚烂明艳。一种情动，胜过人间花开无数，千年的寂寞，只为一人守候。倘若，今生等不到，还可以等来世。韶华未逝时，金风玉露的晨光里，她说：我后悔，没有在最美好的年华遇见他！
　　
　　十里桃花，岁岁牵一念，落梦花絮，歌尽三生的痴恋。花飞花舞，缘聚缘散，那一眼深情的相许，几度轮回，等到沧海变桑田，等你桃林再出现。看桃花惊艳，与风儿痴缠，桃香沾叶的清露，凝泪剔透的夜华，甘愿沉沦于三生的尘劫。他说：我想要的，自始至终不过一个你罢了！
　　
　　青丘女君白浅，天族太子夜华，也许故事就是故事，也无例外地追寻一种完满。如若在现实，也许会有不同的抉择，不同的结局。那个白浅喜欢了许久的墨渊，那个把她当小女孩来宠溺和疼爱的男子，也许自己已然爱上，却浑然不知。云端之上，依旧孤绝成自我的姿态。
　　
　　浅浅，素素，一朵素淡清艳的花开，一个素衣长裙的女子。她以为情淡如烟，不求三生，只要一世寻常的爱恋。诛仙台一跃，是一场死心绝念的离别。未曾想，却宿命早已为她打下一个三生难解的情结。待转世重生时，桃花过往缤纷落；恍然，千年一梦长。
　　
　　桃之夭夭，灼灼其华，花开是缘，花落是劫。一个宁愿醉卧十里桃林忘尽前尘，一个情深不渝三生三世枯等成灰。她执念，为了再遇见他，就算忘却前尘，又何妨？！尘世总有牵挂，相守一生的代价，轮回里寻他，终重逢桃花树下。一场三生三世的劫难与情念纠葛，美得让人心碎、心疼。
　　
　　白浅，夜华，三生三世，圆满的轮回。许你，最美的年华里相见，许爱，最好的时光中相守。桃花盛世之期，桃花树下美丽邂逅，从此，便是永生的不离散。世间万种花开，只愿，你是我命中的那朵桃花，独为我一人绽放灿烂的花色。
　　
　　我们的风尘故事，即便只有百年人生，愿意寂寞等待，愿意平淡相守，更愿意相信轮回；相信三生三世爱的传说，相信爱的真实存在。愿用三生三世的时间，来见证一种情意的真。
　　
　　陌上桃花开，有风拂过，树上的烟霞醉成一片红色的海浪，优柔起伏。忽而，自那树上飘下几瓣桃花。他抬首，微微一笑，仿佛初见的模样；天地间，再没有了其他的色彩，只剩一个人与另一个人的深情相看、温柔对语。那一句：“浅浅，过来。”使人簌然泪下，生出极致的心疼与感动。这一句最动心、最温柔的轻唤，胜过世间万千情话；顷刻间，桃花缤纷漫天，心愫绽放妖娆。一切的恩怨纠葛，戛然而止，尘埃般落定。
　　
　　这世间，总会有一个人，把你的名字，叫的温柔婉转、荡气回肠。十里桃花芳菲处，他伸手，轻声道：“浅浅，过来。”……
　　
　　（QQ:664524148_PS：谢绝平台原创）', 0, 0)
INSERT [dbo].[T_PublishManage] ([pk_id], [U_LoginName], [PM_Title], [PM_TypeID], [PM_ADImgListID], [PM_PublishTime], [PM_Views], [PM_Text], [PM_Preview], [IsDeleted]) VALUES (N'859424AB-3065-486D-B052-7D6EA3BB85C8', N'vdfvd', N'微笑向暖，年华未央', N'1001', N'0', N'234', 132, N'<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;天色渐暗，可我依旧对着冰冷的湖面流连忘返，不知道什么原因，我竟喜欢上了这样的安静，也许是这样的安静，能给我带来片刻的清醒。走过的路长了，遇见的人多了，经历的事自然就杂了，慢慢的，发现自己有点不真实了。突然间觉得，人生最曼妙的风景，莫过于内心深处的那份从容于淡定。
　　
　　人生于世，倘若能够拥有一付达观的心境，便能超然脱俗不为世事所累，面对一切，可以引吭高歌，可以长歌当哭，可以豪饮一醉，也可以平静如水。可奈何我仅是个凡人，终究难以拥有那样豁达和潇洒。也许一个人的一生，不在于成败，而是在于风雨中的那份坚强和执著，不管结局如何，最起码我明白自己需要什么。
　　
　　人生在世，总有不尽人意，所以偶尔有些波澜也在所难免，偶尔有些坎坷也别太在意。可很多时候，我们的烦恼，却是源自于对得与失的计较，对爱与恨的抉择，对进或退的纠结。久而久之，这样的烦恼却成为了我们生活中，最残酷的现实，和最大的阻碍。倘若我们能够学会放下，学会看开，便不会有如此之多的烦恼。只有坦然，才能让人变的从容，才能把心推向阳光，才能让心微笑向暖。
　　
　　也许心再阳光，也难免忧伤，路再宽广，也难免彷徨。但那又怎样！人生除了悲伤，便是快乐，前路除了平坦，便是坎坷。人生一世，一半欢喜，一半忧伤，无论你是喜还是忧，时间都是一分一秒的走，它不会因为你的难过而快走一分，也不会因为你的快乐而慢走一秒。
　　
　　谁都会经过悲伤的岁月，谁都会经过迷茫的路程，重要的是，一切都会过去。无论你正在经历怎样样的困难，都终会有结束的一天，只是这个结束过程有些残酷有些痛苦，但你千万不能因为，它给予你的残忍和痛苦就变得秃废，因为生活不会同情悲伤，你越是柔弱它就越是强硬，只有你足够坚强，它才会为你退让。
　　
　　想要征服生活，需要的不是逃避，而是勇于担当，与其默数伤口，不如化悲愤为力量，拼搏一场。也许再火热的心，也终究会有冰冷的时候，再宽广的路，也会有让你迷茫的时分，但无论如何，只要还能活着，就应该微笑向暖。不管前路跌宕起伏，不管明天路往何处，只要我们有一颗坚定而又无畏的心，便不害怕任何悲伤，便不惧怕任何困难。
　　
　　其实人生的困难，是遇到的困难时，我们学会去面对和解决它的过程，而不是困难的本身。正如你丢了一大笔钱，而你失去这笔钱，你未来的日子会很困难，可现在对于你来说，最大的困难，却不是你丢了钱后会怎样，而是你根本难以面对和接受你已经丢钱的事实。
　　
　　可是许多事情，只有经历过的人，才能云淡风轻，因为经历多了，自然就麻木了，释怀了。很多时候，我们难过的，无非就是不舍，而我们惧怕的，也无非是从未经历过。但是，今天你所难过的，所惧怕的，总有一天，你都会坦然自若的说一句：不过如此。而你也终将明白，那些正在经历的困难，叫做迷茫，而那些历过的困难，叫做成长。
　　
　　静默在岁月缝隙里，存寄一缕微光，于心的最深处，永远微笑向暖，只为这大好时光，只为这年华未央。
　　
　　文/孤若祭末
　　
　　QQ:406646500
　　
　　温馨提示：未经允许，禁止转载。
 &nbsp; &nbsp; &nbsp;<img src="../../../upload/ueditor/image/20170219/6362311571085981741477740.jpg" title="Banner.jpg" alt="Banner.jpg"/> &nbsp; &nbsp; &nbsp;</p>', 0, 0)
INSERT [dbo].[T_ReviewResult] ([pk_id], [M_ReviewResultID], [M_ReviewResultValue], [IsDeleted]) VALUES (N'1CC66838-9680-4539-BE4B-43935C3F2221', N'0003', N'审核未通过', 0)
INSERT [dbo].[T_ReviewResult] ([pk_id], [M_ReviewResultID], [M_ReviewResultValue], [IsDeleted]) VALUES (N'207FC595-5385-44BD-9359-20805882F50E', N'0001', N'待审核', 0)
INSERT [dbo].[T_ReviewResult] ([pk_id], [M_ReviewResultID], [M_ReviewResultValue], [IsDeleted]) VALUES (N'8949D434-A427-4A1D-95E4-D67EC827F909', N'0002', N'审核通过', 0)
INSERT [dbo].[T_ReviewResult] ([pk_id], [M_ReviewResultID], [M_ReviewResultValue], [IsDeleted]) VALUES (N'8AE804BC-9A3A-4012-988C-AADC96B13F8A', N'0004', N'12', 0)
INSERT [dbo].[T_ReviewResult] ([pk_id], [M_ReviewResultID], [M_ReviewResultValue], [IsDeleted]) VALUES (N'DA972C06-A7F1-414D-9F69-566E1B50520A', N'0009', N'黑名单', 0)
SET IDENTITY_INSERT [dbo].[T_SysModule] ON 

INSERT [dbo].[T_SysModule] ([pk_id], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsMenu], [IsDeleted], [M_Controller]) VALUES (0, N'根目录', NULL, NULL, -1, NULL, 1, 1, 0, NULL)
INSERT [dbo].[T_SysModule] ([pk_id], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsMenu], [IsDeleted], [M_Controller]) VALUES (1, N'基本功能', NULL, N'/Images/icons/32X32/ico_type.png', 0, 1, 1, 1, 0, NULL)
INSERT [dbo].[T_SysModule] ([pk_id], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsMenu], [IsDeleted], [M_Controller]) VALUES (2, N'系统管理', NULL, N'/Images/icons/32X32/ico_setting.png', 0, 2, 1, 1, 0, NULL)
INSERT [dbo].[T_SysModule] ([pk_id], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsMenu], [IsDeleted], [M_Controller]) VALUES (3, N'后台管理', N'/Manager/System/ModuleView', N'/Images/icons/32X32/ico_home.png', 2, 3, 1, 0, 0, N'SystemController.cs')
INSERT [dbo].[T_SysModule] ([pk_id], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsMenu], [IsDeleted], [M_Controller]) VALUES (4, N'系统配置', N'/Manager/Config/WebSiteConfig', N'/Images/icons/32X32/ico_system.png', 2, 4, 0, 0, 0, N'SystemController.cs')
INSERT [dbo].[T_SysModule] ([pk_id], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsMenu], [IsDeleted], [M_Controller]) VALUES (5, N'用户管理', N'/Manager/User/UsersView', N'/Images/icons/32X32/ico_user.png', 1, 5, 1, 0, 0, N'UserController.cs')
INSERT [dbo].[T_SysModule] ([pk_id], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsMenu], [IsDeleted], [M_Controller]) VALUES (6, N'会员管理', N'/Manager/Member/MemberView', N'/Images/icons/32X32/ico_member.png', 1, 6, 1, 0, 0, N'MemberController.cs')
INSERT [dbo].[T_SysModule] ([pk_id], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsMenu], [IsDeleted], [M_Controller]) VALUES (7, N'类型管理', N'/Manager/TypeManager/TypeManagerView', N'/Images/icons/32X32/ico_list.png', 2, 7, 1, 0, 0, N'TypeManagerController.cs')
INSERT [dbo].[T_SysModule] ([pk_id], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsMenu], [IsDeleted], [M_Controller]) VALUES (8, N'发布管理', N'/Manager/PublishManager/PublishManagerView', N'/Images/icons/32X32/ico_publish.png', 1, 8, 1, 0, 0, N'PublishManagerController.cs')
INSERT [dbo].[T_SysModule] ([pk_id], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsMenu], [IsDeleted], [M_Controller]) VALUES (9, N'友情链接', N'/Manager/FriendLink/FriendLinkView', N'/Images/icons/32X32/ico_link.png', 1, 9, 1, 0, 0, N'FriendLinkController.cs')
INSERT [dbo].[T_SysModule] ([pk_id], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsMenu], [IsDeleted], [M_Controller]) VALUES (10, N'下载管理', N'/Manager/DownloadManager/DownloadManagerView', N'/Images/icons/32X32/ico_download.png', 1, 0, 1, 0, 0, N'DownloadManagerController.cs')
INSERT [dbo].[T_SysModule] ([pk_id], [M_Name], [M_LinkUrl], [M_Icon], [M_ParentNo], [M_Sort], [M_IsVisible], [M_IsMenu], [IsDeleted], [M_Controller]) VALUES (11, N'导出', N'/Manager/ExportToExcel/ToExcelView', N'/Images/icons/32X32/ico_output.png', 2, 0, 1, 0, 0, N'ExportToExcelController.cs')
SET IDENTITY_INSERT [dbo].[T_SysModule] OFF
INSERT [dbo].[T_User] ([pk_id], [U_LoginName], [U_LoginTypeID], [U_Password], [U_UserName], [U_Phone], [U_MaiBox], [IsDeleted]) VALUES (N'0A6039BF-6527-4C72-9E09-F63EAF080F7F', N'123', N'0002', N'202CB962AC59075B964B07152D234B70', N'123', N'123', N'123', 0)
INSERT [dbo].[T_User] ([pk_id], [U_LoginName], [U_LoginTypeID], [U_Password], [U_UserName], [U_Phone], [U_MaiBox], [IsDeleted]) VALUES (N'1B6AE27E-C37B-4C57-99F0-B476436CDFD4', N'admin', N'0001', N'202CB962AC59075B964B07152D234B70', N'徐志坚', N'15196606812', N'ccc.surpass@qq.com', 0)
INSERT [dbo].[T_User] ([pk_id], [U_LoginName], [U_LoginTypeID], [U_Password], [U_UserName], [U_Phone], [U_MaiBox], [IsDeleted]) VALUES (N'38F5600E-008F-4269-919A-0A756CF68E6A', N'fdvx', N'0001', N'76D80224611FC919A5D54F0FF9FBA446', N'qwe', N'qwe', N'qwe', 0)
INSERT [dbo].[T_User] ([pk_id], [U_LoginName], [U_LoginTypeID], [U_Password], [U_UserName], [U_Phone], [U_MaiBox], [IsDeleted]) VALUES (N'48BEE8BC-DA4E-415A-AF9F-A86BB53A6470', N'删除测试', N'0001', N'FAE0B27C451C728867A567E8C1BB4E53', N'666', N'666', N'666', 1)
INSERT [dbo].[T_User] ([pk_id], [U_LoginName], [U_LoginTypeID], [U_Password], [U_UserName], [U_Phone], [U_MaiBox], [IsDeleted]) VALUES (N'7393FD83-6688-4FEC-9FCD-9349519931EF', N'234', N'0001', N'202CB962AC59075B964B07152D234B70', N'admin', N'213', N'123', 0)
INSERT [dbo].[T_User] ([pk_id], [U_LoginName], [U_LoginTypeID], [U_Password], [U_UserName], [U_Phone], [U_MaiBox], [IsDeleted]) VALUES (N'7AEB48A0-DD88-4F49-AB9A-6058422FFE42', N'qwe', N'0001', N'202CB962AC59075B964B07152D234B70', N'adma', N'123', N'123', 0)
INSERT [dbo].[T_User] ([pk_id], [U_LoginName], [U_LoginTypeID], [U_Password], [U_UserName], [U_Phone], [U_MaiBox], [IsDeleted]) VALUES (N'98B13AFF-5BCC-48CC-AD47-8C9996669D1C', N'dsfg', N'0001', N'7D70663568CAC5AF684503681E3A4D41', N'sdfs', N'sdfg', N'dsfg', 0)
INSERT [dbo].[T_UserType] ([pk_id], [U_LoginTypeID], [U_LoginTypeValue], [IsDeleted]) VALUES (N'0813851F-549D-430B-B2B0-6F0934DB7E7E', N'0001', N'管理员', 0)
INSERT [dbo].[T_UserType] ([pk_id], [U_LoginTypeID], [U_LoginTypeValue], [IsDeleted]) VALUES (N'3C52C3F2-B354-4498-8D65-4A17D0198271', N'0002', N'普通用户', 0)
INSERT [dbo].[T_UserType] ([pk_id], [U_LoginTypeID], [U_LoginTypeValue], [IsDeleted]) VALUES (N'4A6F009E-C281-4737-8075-676D3449D896', N'0003', N'游客', 0)
INSERT [dbo].[T_UserType] ([pk_id], [U_LoginTypeID], [U_LoginTypeValue], [IsDeleted]) VALUES (N'C58AD28D-A31A-4BE6-9DAA-584445A4F507', N'USER_201701141819016216', N'2333', 0)
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
ALTER TABLE [dbo].[T_Member] ADD  CONSTRAINT [DF_T_Members_M_ImgUrl]  DEFAULT (N'暂无') FOR [M_ImgURL]
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
ALTER TABLE [dbo].[T_PublishManage] ADD  CONSTRAINT [DF_T_PublishManage_PM_ADImgListlD]  DEFAULT (N'暂无') FOR [PM_ADImgListID]
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

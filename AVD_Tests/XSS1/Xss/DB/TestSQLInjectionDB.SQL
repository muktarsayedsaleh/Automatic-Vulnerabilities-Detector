USE [TestSQLInjectionDB]
GO
/****** Object:  Table [dbo].[table1]    Script Date: 10/14/2010 16:14:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[table1](
	[recID] [smallint] IDENTITY(1,1) NOT NULL,
	[recName] [nvarchar](500) NULL,
 CONSTRAINT [PK_table1] PRIMARY KEY CLUSTERED 
(
	[recID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[table1] ON
INSERT [dbo].[table1] ([recID], [recName]) VALUES (1, N'record 1')
INSERT [dbo].[table1] ([recID], [recName]) VALUES (2, N'record 2')
INSERT [dbo].[table1] ([recID], [recName]) VALUES (3, N'record 3')
INSERT [dbo].[table1] ([recID], [recName]) VALUES (4, N'record 4')
INSERT [dbo].[table1] ([recID], [recName]) VALUES (5, N'record 5')
INSERT [dbo].[table1] ([recID], [recName]) VALUES (6, N'record 6')
INSERT [dbo].[table1] ([recID], [recName]) VALUES (7, N'record 7')
INSERT [dbo].[table1] ([recID], [recName]) VALUES (8, N'record 8')
SET IDENTITY_INSERT [dbo].[table1] OFF

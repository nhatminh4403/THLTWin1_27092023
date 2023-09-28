USE [master]
GO
CREATE DATABASE [QuanLySinhVien]
GO
USE [QuanLySinhVien]
GO
CREATE TABLE [dbo].[Faculty](
	[FacultyID] [int] NOT NULL,
	[FacultyName] [nvarchar](200) NOT NULL,
	[TotalProfessor] [int] NULL,
 CONSTRAINT [PK_Faculty] PRIMARY KEY CLUSTERED 
(
	[FacultyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 16/10/2020 3:30:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [nvarchar](20) NOT NULL,
	[FullName] [nvarchar](200) NOT NULL,
	[AverageScore] [float] NOT NULL,
	[FacultyID] [int] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Faculty] ([FacultyID], [FacultyName], [TotalProfessor]) VALUES (1, N'Công nghệ thông tin', NULL)
INSERT [dbo].[Faculty] ([FacultyID], [FacultyName], [TotalProfessor]) VALUES (2, N'Ngôn ngữ Anh', NULL)
INSERT [dbo].[Faculty] ([FacultyID], [FacultyName], [TotalProfessor]) VALUES (6, N'Quản trị kinh doanh', NULL)
INSERT [dbo].[Student] ([StudentID], [FullName], [AverageScore], [FacultyID]) VALUES (N'1611061916', N'Nguyễn Trần Hoàng Lan', 4.5, 1)
INSERT [dbo].[Student] ([StudentID], [FullName], [AverageScore], [FacultyID]) VALUES (N'1711060596', N'Đảm Minh Đức', 10, 1)
INSERT [dbo].[Student] ([StudentID], [FullName], [AverageScore], [FacultyID]) VALUES (N'1711061004', N'Nguyễn Quốc An', 10, 2)
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Faculty] FOREIGN KEY([FacultyID])
REFERENCES [dbo].[Faculty] ([FacultyID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Faculty]
GO
USE [master]
GO
ALTER DATABASE [QuanLySinhVien] SET  READ_WRITE 
GO
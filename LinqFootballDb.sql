USE [LinqFootball]
GO
/****** Object:  Table [dbo].[E02017]    Script Date: 27.02.2025 09:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[E02017](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[HomeTeamName] [nvarchar](max) NOT NULL,
	[AwayTeamName] [nvarchar](max) NOT NULL,
	[HG] [int] NOT NULL,
	[AG] [int] NOT NULL,
	[City] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_E02017] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[E02017] ON 
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (1, CAST(N'2017-08-11T00:00:00.0000000' AS DateTime2), N'Arsenal', N'Leicester', 4, 3, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (2, CAST(N'2017-08-12T00:00:00.0000000' AS DateTime2), N'Brighton', N'Man City', 0, 2, N'Brighton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (3, CAST(N'2017-08-12T00:00:00.0000000' AS DateTime2), N'Chelsea', N'Burnley', 2, 3, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (4, CAST(N'2017-08-12T00:00:00.0000000' AS DateTime2), N'Crystal Palace', N'Huddersfield', 0, 3, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (5, CAST(N'2017-08-12T00:00:00.0000000' AS DateTime2), N'Everton', N'Stoke', 1, 0, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (6, CAST(N'2017-08-12T00:00:00.0000000' AS DateTime2), N'Southampton', N'Swansea', 0, 0, N'Southampton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (7, CAST(N'2017-08-12T00:00:00.0000000' AS DateTime2), N'Watford', N'Liverpool', 3, 3, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (8, CAST(N'2017-08-12T00:00:00.0000000' AS DateTime2), N'West Brom', N'Bournemouth', 1, 0, N'West Brom')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (9, CAST(N'2017-08-13T00:00:00.0000000' AS DateTime2), N'Man United', N'West Ham', 4, 0, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (10, CAST(N'2017-08-13T00:00:00.0000000' AS DateTime2), N'Newcastle', N'Tottenham', 0, 2, N'Newcastle')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (11, CAST(N'2017-08-19T00:00:00.0000000' AS DateTime2), N'Bournemouth', N'Watford', 0, 2, N'Bournemouth')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (12, CAST(N'2017-08-19T00:00:00.0000000' AS DateTime2), N'Burnley', N'West Brom', 0, 1, N'Burnley')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (13, CAST(N'2017-08-19T00:00:00.0000000' AS DateTime2), N'Leicester', N'Brighton', 2, 0, N'Leicester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (14, CAST(N'2017-08-19T00:00:00.0000000' AS DateTime2), N'Liverpool', N'Crystal Palace', 1, 0, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (15, CAST(N'2017-08-19T00:00:00.0000000' AS DateTime2), N'Southampton', N'West Ham', 3, 2, N'Southampton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (16, CAST(N'2017-08-19T00:00:00.0000000' AS DateTime2), N'Stoke', N'Arsenal', 1, 0, N'Stoke')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (17, CAST(N'2017-08-19T00:00:00.0000000' AS DateTime2), N'Swansea', N'Man United', 0, 4, N'Swansea')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (18, CAST(N'2017-08-20T00:00:00.0000000' AS DateTime2), N'Huddersfield', N'Newcastle', 1, 0, N'Huddersfield')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (19, CAST(N'2017-08-20T00:00:00.0000000' AS DateTime2), N'Tottenham', N'Chelsea', 1, 2, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (20, CAST(N'2017-08-21T00:00:00.0000000' AS DateTime2), N'Man City', N'Everton', 1, 1, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (21, CAST(N'2017-08-26T00:00:00.0000000' AS DateTime2), N'Bournemouth', N'Man City', 1, 2, N'Bournemouth')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (22, CAST(N'2017-08-26T00:00:00.0000000' AS DateTime2), N'Crystal Palace', N'Swansea', 0, 2, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (23, CAST(N'2017-08-26T00:00:00.0000000' AS DateTime2), N'Huddersfield', N'Southampton', 0, 0, N'Huddersfield')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (24, CAST(N'2017-08-26T00:00:00.0000000' AS DateTime2), N'Man United', N'Leicester', 2, 0, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (25, CAST(N'2017-08-26T00:00:00.0000000' AS DateTime2), N'Newcastle', N'West Ham', 3, 0, N'Newcastle')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (26, CAST(N'2017-08-26T00:00:00.0000000' AS DateTime2), N'Watford', N'Brighton', 0, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (27, CAST(N'2017-08-27T00:00:00.0000000' AS DateTime2), N'Chelsea', N'Everton', 2, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (28, CAST(N'2017-08-27T00:00:00.0000000' AS DateTime2), N'Liverpool', N'Arsenal', 4, 0, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (29, CAST(N'2017-08-27T00:00:00.0000000' AS DateTime2), N'Tottenham', N'Burnley', 1, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (30, CAST(N'2017-08-27T00:00:00.0000000' AS DateTime2), N'West Brom', N'Stoke', 1, 1, N'West Brom')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (31, CAST(N'2017-09-09T00:00:00.0000000' AS DateTime2), N'Arsenal', N'Bournemouth', 3, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (32, CAST(N'2017-09-09T00:00:00.0000000' AS DateTime2), N'Brighton', N'West Brom', 3, 1, N'Brighton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (33, CAST(N'2017-09-09T00:00:00.0000000' AS DateTime2), N'Everton', N'Tottenham', 0, 3, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (34, CAST(N'2017-09-09T00:00:00.0000000' AS DateTime2), N'Leicester', N'Chelsea', 1, 2, N'Leicester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (35, CAST(N'2017-09-09T00:00:00.0000000' AS DateTime2), N'Man City', N'Liverpool', 5, 0, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (36, CAST(N'2017-09-09T00:00:00.0000000' AS DateTime2), N'Southampton', N'Watford', 0, 2, N'Southampton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (37, CAST(N'2017-09-09T00:00:00.0000000' AS DateTime2), N'Stoke', N'Man United', 2, 2, N'Stoke')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (38, CAST(N'2017-09-10T00:00:00.0000000' AS DateTime2), N'Burnley', N'Crystal Palace', 1, 0, N'Burnley')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (39, CAST(N'2017-09-10T00:00:00.0000000' AS DateTime2), N'Swansea', N'Newcastle', 0, 1, N'Swansea')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (40, CAST(N'2017-09-11T00:00:00.0000000' AS DateTime2), N'West Ham', N'Huddersfield', 2, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (41, CAST(N'2017-09-15T00:00:00.0000000' AS DateTime2), N'Bournemouth', N'Brighton', 2, 1, N'Bournemouth')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (42, CAST(N'2017-09-16T00:00:00.0000000' AS DateTime2), N'Crystal Palace', N'Southampton', 0, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (43, CAST(N'2017-09-16T00:00:00.0000000' AS DateTime2), N'Huddersfield', N'Leicester', 1, 1, N'Huddersfield')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (44, CAST(N'2017-09-16T00:00:00.0000000' AS DateTime2), N'Liverpool', N'Burnley', 1, 1, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (45, CAST(N'2017-09-16T00:00:00.0000000' AS DateTime2), N'Newcastle', N'Stoke', 2, 1, N'Newcastle')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (46, CAST(N'2017-09-16T00:00:00.0000000' AS DateTime2), N'Tottenham', N'Swansea', 0, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (47, CAST(N'2017-09-16T00:00:00.0000000' AS DateTime2), N'Watford', N'Man City', 0, 6, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (48, CAST(N'2017-09-16T00:00:00.0000000' AS DateTime2), N'West Brom', N'West Ham', 0, 0, N'West Brom')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (49, CAST(N'2017-09-17T00:00:00.0000000' AS DateTime2), N'Chelsea', N'Arsenal', 0, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (50, CAST(N'2017-09-17T00:00:00.0000000' AS DateTime2), N'Man United', N'Everton', 4, 0, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (51, CAST(N'2017-09-23T00:00:00.0000000' AS DateTime2), N'Burnley', N'Huddersfield', 0, 0, N'Burnley')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (52, CAST(N'2017-09-23T00:00:00.0000000' AS DateTime2), N'Everton', N'Bournemouth', 2, 1, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (53, CAST(N'2017-09-23T00:00:00.0000000' AS DateTime2), N'Leicester', N'Liverpool', 2, 3, N'Leicester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (54, CAST(N'2017-09-23T00:00:00.0000000' AS DateTime2), N'Man City', N'Crystal Palace', 5, 0, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (55, CAST(N'2017-09-23T00:00:00.0000000' AS DateTime2), N'Southampton', N'Man United', 0, 1, N'Southampton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (56, CAST(N'2017-09-23T00:00:00.0000000' AS DateTime2), N'Stoke', N'Chelsea', 0, 4, N'Stoke')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (57, CAST(N'2017-09-23T00:00:00.0000000' AS DateTime2), N'Swansea', N'Watford', 1, 2, N'Swansea')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (58, CAST(N'2017-09-23T00:00:00.0000000' AS DateTime2), N'West Ham', N'Tottenham', 2, 3, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (59, CAST(N'2017-09-24T00:00:00.0000000' AS DateTime2), N'Brighton', N'Newcastle', 1, 0, N'Brighton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (60, CAST(N'2017-09-25T00:00:00.0000000' AS DateTime2), N'Arsenal', N'West Brom', 2, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (61, CAST(N'2017-09-30T00:00:00.0000000' AS DateTime2), N'Bournemouth', N'Leicester', 0, 0, N'Bournemouth')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (62, CAST(N'2017-09-30T00:00:00.0000000' AS DateTime2), N'Chelsea', N'Man City', 0, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (63, CAST(N'2017-09-30T00:00:00.0000000' AS DateTime2), N'Huddersfield', N'Tottenham', 0, 4, N'Huddersfield')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (64, CAST(N'2017-09-30T00:00:00.0000000' AS DateTime2), N'Man United', N'Crystal Palace', 4, 0, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (65, CAST(N'2017-09-30T00:00:00.0000000' AS DateTime2), N'Stoke', N'Southampton', 2, 1, N'Stoke')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (66, CAST(N'2017-09-30T00:00:00.0000000' AS DateTime2), N'West Brom', N'Watford', 2, 2, N'West Brom')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (67, CAST(N'2017-09-30T00:00:00.0000000' AS DateTime2), N'West Ham', N'Swansea', 1, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (68, CAST(N'2017-10-01T00:00:00.0000000' AS DateTime2), N'Arsenal', N'Brighton', 2, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (69, CAST(N'2017-10-01T00:00:00.0000000' AS DateTime2), N'Everton', N'Burnley', 0, 1, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (70, CAST(N'2017-10-01T00:00:00.0000000' AS DateTime2), N'Newcastle', N'Liverpool', 1, 1, N'Newcastle')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (71, CAST(N'2017-10-14T00:00:00.0000000' AS DateTime2), N'Burnley', N'West Ham', 1, 1, N'Burnley')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (72, CAST(N'2017-10-14T00:00:00.0000000' AS DateTime2), N'Crystal Palace', N'Chelsea', 2, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (73, CAST(N'2017-10-14T00:00:00.0000000' AS DateTime2), N'Liverpool', N'Man United', 0, 0, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (74, CAST(N'2017-10-14T00:00:00.0000000' AS DateTime2), N'Man City', N'Stoke', 7, 2, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (75, CAST(N'2017-10-14T00:00:00.0000000' AS DateTime2), N'Swansea', N'Huddersfield', 2, 0, N'Swansea')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (76, CAST(N'2017-10-14T00:00:00.0000000' AS DateTime2), N'Tottenham', N'Bournemouth', 1, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (77, CAST(N'2017-10-14T00:00:00.0000000' AS DateTime2), N'Watford', N'Arsenal', 2, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (78, CAST(N'2017-10-15T00:00:00.0000000' AS DateTime2), N'Brighton', N'Everton', 1, 1, N'Brighton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (79, CAST(N'2017-10-15T00:00:00.0000000' AS DateTime2), N'Southampton', N'Newcastle', 2, 2, N'Southampton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (80, CAST(N'2017-10-16T00:00:00.0000000' AS DateTime2), N'Leicester', N'West Brom', 1, 1, N'Leicester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (81, CAST(N'2017-10-20T00:00:00.0000000' AS DateTime2), N'West Ham', N'Brighton', 0, 3, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (82, CAST(N'2017-10-21T00:00:00.0000000' AS DateTime2), N'Chelsea', N'Watford', 4, 2, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (83, CAST(N'2017-10-21T00:00:00.0000000' AS DateTime2), N'Huddersfield', N'Man United', 2, 1, N'Huddersfield')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (84, CAST(N'2017-10-21T00:00:00.0000000' AS DateTime2), N'Man City', N'Burnley', 3, 0, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (85, CAST(N'2017-10-21T00:00:00.0000000' AS DateTime2), N'Newcastle', N'Crystal Palace', 1, 0, N'Newcastle')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (86, CAST(N'2017-10-21T00:00:00.0000000' AS DateTime2), N'Southampton', N'West Brom', 1, 0, N'Southampton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (87, CAST(N'2017-10-21T00:00:00.0000000' AS DateTime2), N'Stoke', N'Bournemouth', 1, 2, N'Stoke')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (88, CAST(N'2017-10-21T00:00:00.0000000' AS DateTime2), N'Swansea', N'Leicester', 1, 2, N'Swansea')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (89, CAST(N'2017-10-22T00:00:00.0000000' AS DateTime2), N'Everton', N'Arsenal', 2, 5, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (90, CAST(N'2017-10-22T00:00:00.0000000' AS DateTime2), N'Tottenham', N'Liverpool', 4, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (91, CAST(N'2017-10-28T00:00:00.0000000' AS DateTime2), N'Arsenal', N'Swansea', 2, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (92, CAST(N'2017-10-28T00:00:00.0000000' AS DateTime2), N'Bournemouth', N'Chelsea', 0, 1, N'Bournemouth')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (93, CAST(N'2017-10-28T00:00:00.0000000' AS DateTime2), N'Crystal Palace', N'West Ham', 2, 2, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (94, CAST(N'2017-10-28T00:00:00.0000000' AS DateTime2), N'Liverpool', N'Huddersfield', 3, 0, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (95, CAST(N'2017-10-28T00:00:00.0000000' AS DateTime2), N'Man United', N'Tottenham', 1, 0, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (96, CAST(N'2017-10-28T00:00:00.0000000' AS DateTime2), N'Watford', N'Stoke', 0, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (97, CAST(N'2017-10-28T00:00:00.0000000' AS DateTime2), N'West Brom', N'Man City', 2, 3, N'West Brom')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (98, CAST(N'2017-10-29T00:00:00.0000000' AS DateTime2), N'Brighton', N'Southampton', 1, 1, N'Brighton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (99, CAST(N'2017-10-29T00:00:00.0000000' AS DateTime2), N'Leicester', N'Everton', 2, 0, N'Leicester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (100, CAST(N'2017-10-30T00:00:00.0000000' AS DateTime2), N'Burnley', N'Newcastle', 1, 0, N'Burnley')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (101, CAST(N'2017-11-04T00:00:00.0000000' AS DateTime2), N'Huddersfield', N'West Brom', 1, 0, N'Huddersfield')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (102, CAST(N'2017-11-04T00:00:00.0000000' AS DateTime2), N'Newcastle', N'Bournemouth', 0, 1, N'Newcastle')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (103, CAST(N'2017-11-04T00:00:00.0000000' AS DateTime2), N'Southampton', N'Burnley', 0, 1, N'Southampton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (104, CAST(N'2017-11-04T00:00:00.0000000' AS DateTime2), N'Stoke', N'Leicester', 2, 2, N'Stoke')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (105, CAST(N'2017-11-04T00:00:00.0000000' AS DateTime2), N'Swansea', N'Brighton', 0, 1, N'Swansea')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (106, CAST(N'2017-11-04T00:00:00.0000000' AS DateTime2), N'West Ham', N'Liverpool', 1, 4, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (107, CAST(N'2017-11-05T00:00:00.0000000' AS DateTime2), N'Chelsea', N'Man United', 1, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (108, CAST(N'2017-11-05T00:00:00.0000000' AS DateTime2), N'Everton', N'Watford', 3, 2, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (109, CAST(N'2017-11-05T00:00:00.0000000' AS DateTime2), N'Man City', N'Arsenal', 3, 1, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (110, CAST(N'2017-11-05T00:00:00.0000000' AS DateTime2), N'Tottenham', N'Crystal Palace', 1, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (111, CAST(N'2017-11-18T00:00:00.0000000' AS DateTime2), N'Arsenal', N'Tottenham', 2, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (112, CAST(N'2017-11-18T00:00:00.0000000' AS DateTime2), N'Bournemouth', N'Huddersfield', 4, 0, N'Bournemouth')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (113, CAST(N'2017-11-18T00:00:00.0000000' AS DateTime2), N'Burnley', N'Swansea', 2, 0, N'Burnley')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (114, CAST(N'2017-11-18T00:00:00.0000000' AS DateTime2), N'Crystal Palace', N'Everton', 2, 2, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (115, CAST(N'2017-11-18T00:00:00.0000000' AS DateTime2), N'Leicester', N'Man City', 0, 2, N'Leicester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (116, CAST(N'2017-11-18T00:00:00.0000000' AS DateTime2), N'Liverpool', N'Southampton', 3, 0, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (117, CAST(N'2017-11-18T00:00:00.0000000' AS DateTime2), N'Man United', N'Newcastle', 4, 1, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (118, CAST(N'2017-11-18T00:00:00.0000000' AS DateTime2), N'West Brom', N'Chelsea', 0, 4, N'West Brom')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (119, CAST(N'2017-11-19T00:00:00.0000000' AS DateTime2), N'Watford', N'West Ham', 2, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (120, CAST(N'2017-11-20T00:00:00.0000000' AS DateTime2), N'Brighton', N'Stoke', 2, 2, N'Brighton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (121, CAST(N'2017-11-24T00:00:00.0000000' AS DateTime2), N'West Ham', N'Leicester', 1, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (122, CAST(N'2017-11-25T00:00:00.0000000' AS DateTime2), N'Crystal Palace', N'Stoke', 2, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (123, CAST(N'2017-11-25T00:00:00.0000000' AS DateTime2), N'Liverpool', N'Chelsea', 1, 1, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (124, CAST(N'2017-11-25T00:00:00.0000000' AS DateTime2), N'Man United', N'Brighton', 1, 0, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (125, CAST(N'2017-11-25T00:00:00.0000000' AS DateTime2), N'Newcastle', N'Watford', 0, 3, N'Newcastle')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (126, CAST(N'2017-11-25T00:00:00.0000000' AS DateTime2), N'Swansea', N'Bournemouth', 0, 0, N'Swansea')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (127, CAST(N'2017-11-25T00:00:00.0000000' AS DateTime2), N'Tottenham', N'West Brom', 1, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (128, CAST(N'2017-11-26T00:00:00.0000000' AS DateTime2), N'Burnley', N'Arsenal', 0, 1, N'Burnley')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (129, CAST(N'2017-11-26T00:00:00.0000000' AS DateTime2), N'Huddersfield', N'Man City', 1, 2, N'Huddersfield')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (130, CAST(N'2017-11-26T00:00:00.0000000' AS DateTime2), N'Southampton', N'Everton', 4, 1, N'Southampton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (131, CAST(N'2017-11-28T00:00:00.0000000' AS DateTime2), N'Brighton', N'Crystal Palace', 0, 0, N'Brighton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (132, CAST(N'2017-11-28T00:00:00.0000000' AS DateTime2), N'Leicester', N'Tottenham', 2, 1, N'Leicester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (133, CAST(N'2017-11-28T00:00:00.0000000' AS DateTime2), N'Watford', N'Man United', 2, 4, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (134, CAST(N'2017-11-28T00:00:00.0000000' AS DateTime2), N'West Brom', N'Newcastle', 2, 2, N'West Brom')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (135, CAST(N'2017-11-29T00:00:00.0000000' AS DateTime2), N'Arsenal', N'Huddersfield', 5, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (136, CAST(N'2017-11-29T00:00:00.0000000' AS DateTime2), N'Bournemouth', N'Burnley', 1, 2, N'Bournemouth')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (137, CAST(N'2017-11-29T00:00:00.0000000' AS DateTime2), N'Chelsea', N'Swansea', 1, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (138, CAST(N'2017-11-29T00:00:00.0000000' AS DateTime2), N'Everton', N'West Ham', 4, 0, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (139, CAST(N'2017-11-29T00:00:00.0000000' AS DateTime2), N'Man City', N'Southampton', 2, 1, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (140, CAST(N'2017-11-29T00:00:00.0000000' AS DateTime2), N'Stoke', N'Liverpool', 0, 3, N'Stoke')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (141, CAST(N'2017-12-02T00:00:00.0000000' AS DateTime2), N'Arsenal', N'Man United', 1, 3, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (142, CAST(N'2017-12-02T00:00:00.0000000' AS DateTime2), N'Brighton', N'Liverpool', 1, 5, N'Brighton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (143, CAST(N'2017-12-02T00:00:00.0000000' AS DateTime2), N'Chelsea', N'Newcastle', 3, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (144, CAST(N'2017-12-02T00:00:00.0000000' AS DateTime2), N'Everton', N'Huddersfield', 2, 0, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (145, CAST(N'2017-12-02T00:00:00.0000000' AS DateTime2), N'Leicester', N'Burnley', 1, 0, N'Leicester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (146, CAST(N'2017-12-02T00:00:00.0000000' AS DateTime2), N'Stoke', N'Swansea', 2, 1, N'Stoke')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (147, CAST(N'2017-12-02T00:00:00.0000000' AS DateTime2), N'Watford', N'Tottenham', 1, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (148, CAST(N'2017-12-02T00:00:00.0000000' AS DateTime2), N'West Brom', N'Crystal Palace', 0, 0, N'West Brom')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (149, CAST(N'2017-12-03T00:00:00.0000000' AS DateTime2), N'Bournemouth', N'Southampton', 1, 1, N'Bournemouth')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (150, CAST(N'2017-12-03T00:00:00.0000000' AS DateTime2), N'Man City', N'West Ham', 2, 1, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (151, CAST(N'2017-12-09T00:00:00.0000000' AS DateTime2), N'Burnley', N'Watford', 1, 0, N'Burnley')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (152, CAST(N'2017-12-09T00:00:00.0000000' AS DateTime2), N'Crystal Palace', N'Bournemouth', 2, 2, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (153, CAST(N'2017-12-09T00:00:00.0000000' AS DateTime2), N'Huddersfield', N'Brighton', 2, 0, N'Huddersfield')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (154, CAST(N'2017-12-09T00:00:00.0000000' AS DateTime2), N'Newcastle', N'Leicester', 2, 3, N'Newcastle')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (155, CAST(N'2017-12-09T00:00:00.0000000' AS DateTime2), N'Swansea', N'West Brom', 1, 0, N'Swansea')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (156, CAST(N'2017-12-09T00:00:00.0000000' AS DateTime2), N'Tottenham', N'Stoke', 5, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (157, CAST(N'2017-12-09T00:00:00.0000000' AS DateTime2), N'West Ham', N'Chelsea', 1, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (158, CAST(N'2017-12-10T00:00:00.0000000' AS DateTime2), N'Liverpool', N'Everton', 1, 1, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (159, CAST(N'2017-12-10T00:00:00.0000000' AS DateTime2), N'Man United', N'Man City', 1, 2, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (160, CAST(N'2017-12-10T00:00:00.0000000' AS DateTime2), N'Southampton', N'Arsenal', 1, 1, N'Southampton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (161, CAST(N'2017-12-12T00:00:00.0000000' AS DateTime2), N'Burnley', N'Stoke', 1, 0, N'Burnley')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (162, CAST(N'2017-12-12T00:00:00.0000000' AS DateTime2), N'Crystal Palace', N'Watford', 2, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (163, CAST(N'2017-12-12T00:00:00.0000000' AS DateTime2), N'Huddersfield', N'Chelsea', 1, 3, N'Huddersfield')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (164, CAST(N'2017-12-13T00:00:00.0000000' AS DateTime2), N'Liverpool', N'West Brom', 0, 0, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (165, CAST(N'2017-12-13T00:00:00.0000000' AS DateTime2), N'Man United', N'Bournemouth', 1, 0, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (166, CAST(N'2017-12-13T00:00:00.0000000' AS DateTime2), N'Newcastle', N'Everton', 0, 1, N'Newcastle')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (167, CAST(N'2017-12-13T00:00:00.0000000' AS DateTime2), N'Southampton', N'Leicester', 1, 4, N'Southampton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (168, CAST(N'2017-12-13T00:00:00.0000000' AS DateTime2), N'Swansea', N'Man City', 0, 4, N'Swansea')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (169, CAST(N'2017-12-13T00:00:00.0000000' AS DateTime2), N'Tottenham', N'Brighton', 2, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (170, CAST(N'2017-12-13T00:00:00.0000000' AS DateTime2), N'West Ham', N'Arsenal', 0, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (171, CAST(N'2017-12-16T00:00:00.0000000' AS DateTime2), N'Arsenal', N'Newcastle', 1, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (172, CAST(N'2017-12-16T00:00:00.0000000' AS DateTime2), N'Brighton', N'Burnley', 0, 0, N'Brighton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (173, CAST(N'2017-12-16T00:00:00.0000000' AS DateTime2), N'Chelsea', N'Southampton', 1, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (174, CAST(N'2017-12-16T00:00:00.0000000' AS DateTime2), N'Leicester', N'Crystal Palace', 0, 3, N'Leicester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (175, CAST(N'2017-12-16T00:00:00.0000000' AS DateTime2), N'Man City', N'Tottenham', 4, 1, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (176, CAST(N'2017-12-16T00:00:00.0000000' AS DateTime2), N'Stoke', N'West Ham', 0, 3, N'Stoke')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (177, CAST(N'2017-12-16T00:00:00.0000000' AS DateTime2), N'Watford', N'Huddersfield', 1, 4, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (178, CAST(N'2017-12-17T00:00:00.0000000' AS DateTime2), N'Bournemouth', N'Liverpool', 0, 4, N'Bournemouth')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (179, CAST(N'2017-12-17T00:00:00.0000000' AS DateTime2), N'West Brom', N'Man United', 1, 2, N'West Brom')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (180, CAST(N'2017-12-18T00:00:00.0000000' AS DateTime2), N'Everton', N'Swansea', 3, 1, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (181, CAST(N'2017-12-22T00:00:00.0000000' AS DateTime2), N'Arsenal', N'Liverpool', 3, 3, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (182, CAST(N'2017-12-23T00:00:00.0000000' AS DateTime2), N'Brighton', N'Watford', 1, 0, N'Brighton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (183, CAST(N'2017-12-23T00:00:00.0000000' AS DateTime2), N'Burnley', N'Tottenham', 0, 3, N'Burnley')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (184, CAST(N'2017-12-23T00:00:00.0000000' AS DateTime2), N'Everton', N'Chelsea', 0, 0, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (185, CAST(N'2017-12-23T00:00:00.0000000' AS DateTime2), N'Leicester', N'Man United', 2, 2, N'Leicester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (186, CAST(N'2017-12-23T00:00:00.0000000' AS DateTime2), N'Man City', N'Bournemouth', 4, 0, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (187, CAST(N'2017-12-23T00:00:00.0000000' AS DateTime2), N'Southampton', N'Huddersfield', 1, 1, N'Southampton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (188, CAST(N'2017-12-23T00:00:00.0000000' AS DateTime2), N'Stoke', N'West Brom', 3, 1, N'Stoke')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (189, CAST(N'2017-12-23T00:00:00.0000000' AS DateTime2), N'Swansea', N'Crystal Palace', 1, 1, N'Swansea')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (190, CAST(N'2017-12-23T00:00:00.0000000' AS DateTime2), N'West Ham', N'Newcastle', 2, 3, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (191, CAST(N'2017-12-26T00:00:00.0000000' AS DateTime2), N'Bournemouth', N'West Ham', 3, 3, N'Bournemouth')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (192, CAST(N'2017-12-26T00:00:00.0000000' AS DateTime2), N'Chelsea', N'Brighton', 2, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (193, CAST(N'2017-12-26T00:00:00.0000000' AS DateTime2), N'Huddersfield', N'Stoke', 1, 1, N'Huddersfield')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (194, CAST(N'2017-12-26T00:00:00.0000000' AS DateTime2), N'Liverpool', N'Swansea', 5, 0, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (195, CAST(N'2017-12-26T00:00:00.0000000' AS DateTime2), N'Man United', N'Burnley', 2, 2, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (196, CAST(N'2017-12-26T00:00:00.0000000' AS DateTime2), N'Tottenham', N'Southampton', 5, 2, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (197, CAST(N'2017-12-26T00:00:00.0000000' AS DateTime2), N'Watford', N'Leicester', 2, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (198, CAST(N'2017-12-26T00:00:00.0000000' AS DateTime2), N'West Brom', N'Everton', 0, 0, N'West Brom')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (199, CAST(N'2017-12-27T00:00:00.0000000' AS DateTime2), N'Newcastle', N'Man City', 0, 1, N'Newcastle')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (200, CAST(N'2017-12-28T00:00:00.0000000' AS DateTime2), N'Crystal Palace', N'Arsenal', 2, 3, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (201, CAST(N'2017-12-30T00:00:00.0000000' AS DateTime2), N'Bournemouth', N'Everton', 2, 1, N'Bournemouth')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (202, CAST(N'2017-12-30T00:00:00.0000000' AS DateTime2), N'Chelsea', N'Stoke', 5, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (203, CAST(N'2017-12-30T00:00:00.0000000' AS DateTime2), N'Huddersfield', N'Burnley', 0, 0, N'Huddersfield')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (204, CAST(N'2017-12-30T00:00:00.0000000' AS DateTime2), N'Liverpool', N'Leicester', 2, 1, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (205, CAST(N'2017-12-30T00:00:00.0000000' AS DateTime2), N'Man United', N'Southampton', 0, 0, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (206, CAST(N'2017-12-30T00:00:00.0000000' AS DateTime2), N'Newcastle', N'Brighton', 0, 0, N'Newcastle')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (207, CAST(N'2017-12-30T00:00:00.0000000' AS DateTime2), N'Watford', N'Swansea', 1, 2, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (208, CAST(N'2017-12-31T00:00:00.0000000' AS DateTime2), N'Crystal Palace', N'Man City', 0, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (209, CAST(N'2017-12-31T00:00:00.0000000' AS DateTime2), N'West Brom', N'Arsenal', 1, 1, N'West Brom')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (210, CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), N'Brighton', N'Bournemouth', 2, 2, N'Brighton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (211, CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), N'Burnley', N'Liverpool', 1, 2, N'Burnley')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (212, CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), N'Everton', N'Man United', 0, 2, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (213, CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), N'Leicester', N'Huddersfield', 3, 0, N'Leicester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (214, CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), N'Stoke', N'Newcastle', 0, 1, N'Stoke')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (215, CAST(N'2018-01-02T00:00:00.0000000' AS DateTime2), N'Man City', N'Watford', 3, 1, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (216, CAST(N'2018-01-02T00:00:00.0000000' AS DateTime2), N'Southampton', N'Crystal Palace', 1, 2, N'Southampton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (217, CAST(N'2018-01-02T00:00:00.0000000' AS DateTime2), N'Swansea', N'Tottenham', 0, 2, N'Swansea')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (218, CAST(N'2018-01-02T00:00:00.0000000' AS DateTime2), N'West Ham', N'West Brom', 2, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (219, CAST(N'2018-01-03T00:00:00.0000000' AS DateTime2), N'Arsenal', N'Chelsea', 2, 2, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (220, CAST(N'2018-01-04T00:00:00.0000000' AS DateTime2), N'Tottenham', N'West Ham', 1, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (221, CAST(N'2018-01-13T00:00:00.0000000' AS DateTime2), N'Chelsea', N'Leicester', 0, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (222, CAST(N'2018-01-13T00:00:00.0000000' AS DateTime2), N'Crystal Palace', N'Burnley', 1, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (223, CAST(N'2018-01-13T00:00:00.0000000' AS DateTime2), N'Huddersfield', N'West Ham', 1, 4, N'Huddersfield')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (224, CAST(N'2018-01-13T00:00:00.0000000' AS DateTime2), N'Newcastle', N'Swansea', 1, 1, N'Newcastle')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (225, CAST(N'2018-01-13T00:00:00.0000000' AS DateTime2), N'Tottenham', N'Everton', 4, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (226, CAST(N'2018-01-13T00:00:00.0000000' AS DateTime2), N'Watford', N'Southampton', 2, 2, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (227, CAST(N'2018-01-13T00:00:00.0000000' AS DateTime2), N'West Brom', N'Brighton', 2, 0, N'West Brom')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (228, CAST(N'2018-01-14T00:00:00.0000000' AS DateTime2), N'Bournemouth', N'Arsenal', 2, 1, N'Bournemouth')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (229, CAST(N'2018-01-14T00:00:00.0000000' AS DateTime2), N'Liverpool', N'Man City', 4, 3, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (230, CAST(N'2018-01-15T00:00:00.0000000' AS DateTime2), N'Man United', N'Stoke', 3, 0, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (231, CAST(N'2018-01-20T00:00:00.0000000' AS DateTime2), N'Arsenal', N'Crystal Palace', 4, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (232, CAST(N'2018-01-20T00:00:00.0000000' AS DateTime2), N'Brighton', N'Chelsea', 0, 4, N'Brighton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (233, CAST(N'2018-01-20T00:00:00.0000000' AS DateTime2), N'Burnley', N'Man United', 0, 1, N'Burnley')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (234, CAST(N'2018-01-20T00:00:00.0000000' AS DateTime2), N'Everton', N'West Brom', 1, 1, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (235, CAST(N'2018-01-20T00:00:00.0000000' AS DateTime2), N'Leicester', N'Watford', 2, 0, N'Leicester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (236, CAST(N'2018-01-20T00:00:00.0000000' AS DateTime2), N'Man City', N'Newcastle', 3, 1, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (237, CAST(N'2018-01-20T00:00:00.0000000' AS DateTime2), N'Stoke', N'Huddersfield', 2, 0, N'Stoke')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (238, CAST(N'2018-01-20T00:00:00.0000000' AS DateTime2), N'West Ham', N'Bournemouth', 1, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (239, CAST(N'2018-01-21T00:00:00.0000000' AS DateTime2), N'Southampton', N'Tottenham', 1, 1, N'Southampton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (240, CAST(N'2018-01-22T00:00:00.0000000' AS DateTime2), N'Swansea', N'Liverpool', 1, 0, N'Swansea')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (241, CAST(N'2018-01-30T00:00:00.0000000' AS DateTime2), N'Huddersfield', N'Liverpool', 0, 3, N'Huddersfield')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (242, CAST(N'2018-01-30T00:00:00.0000000' AS DateTime2), N'Swansea', N'Arsenal', 3, 1, N'Swansea')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (243, CAST(N'2018-01-30T00:00:00.0000000' AS DateTime2), N'West Ham', N'Crystal Palace', 1, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (244, CAST(N'2018-01-31T00:00:00.0000000' AS DateTime2), N'Chelsea', N'Bournemouth', 0, 3, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (245, CAST(N'2018-01-31T00:00:00.0000000' AS DateTime2), N'Everton', N'Leicester', 2, 1, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (246, CAST(N'2018-01-31T00:00:00.0000000' AS DateTime2), N'Man City', N'West Brom', 3, 0, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (247, CAST(N'2018-01-31T00:00:00.0000000' AS DateTime2), N'Newcastle', N'Burnley', 1, 1, N'Newcastle')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (248, CAST(N'2018-01-31T00:00:00.0000000' AS DateTime2), N'Southampton', N'Brighton', 1, 1, N'Southampton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (249, CAST(N'2018-01-31T00:00:00.0000000' AS DateTime2), N'Stoke', N'Watford', 0, 0, N'Stoke')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (250, CAST(N'2018-01-31T00:00:00.0000000' AS DateTime2), N'Tottenham', N'Man United', 2, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (251, CAST(N'2018-02-03T00:00:00.0000000' AS DateTime2), N'Arsenal', N'Everton', 5, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (252, CAST(N'2018-02-03T00:00:00.0000000' AS DateTime2), N'Bournemouth', N'Stoke', 2, 1, N'Bournemouth')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (253, CAST(N'2018-02-03T00:00:00.0000000' AS DateTime2), N'Brighton', N'West Ham', 3, 1, N'Brighton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (254, CAST(N'2018-02-03T00:00:00.0000000' AS DateTime2), N'Burnley', N'Man City', 1, 1, N'Burnley')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (255, CAST(N'2018-02-03T00:00:00.0000000' AS DateTime2), N'Leicester', N'Swansea', 1, 1, N'Leicester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (256, CAST(N'2018-02-03T00:00:00.0000000' AS DateTime2), N'Man United', N'Huddersfield', 2, 0, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (257, CAST(N'2018-02-03T00:00:00.0000000' AS DateTime2), N'West Brom', N'Southampton', 2, 3, N'West Brom')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (258, CAST(N'2018-02-04T00:00:00.0000000' AS DateTime2), N'Crystal Palace', N'Newcastle', 1, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (259, CAST(N'2018-02-04T00:00:00.0000000' AS DateTime2), N'Liverpool', N'Tottenham', 2, 2, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (260, CAST(N'2018-02-05T00:00:00.0000000' AS DateTime2), N'Watford', N'Chelsea', 4, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (261, CAST(N'2018-02-10T00:00:00.0000000' AS DateTime2), N'Everton', N'Crystal Palace', 3, 1, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (262, CAST(N'2018-02-10T00:00:00.0000000' AS DateTime2), N'Man City', N'Leicester', 5, 1, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (263, CAST(N'2018-02-10T00:00:00.0000000' AS DateTime2), N'Stoke', N'Brighton', 1, 1, N'Stoke')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (264, CAST(N'2018-02-10T00:00:00.0000000' AS DateTime2), N'Swansea', N'Burnley', 1, 0, N'Swansea')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (265, CAST(N'2018-02-10T00:00:00.0000000' AS DateTime2), N'Tottenham', N'Arsenal', 1, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (266, CAST(N'2018-02-10T00:00:00.0000000' AS DateTime2), N'West Ham', N'Watford', 2, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (267, CAST(N'2018-02-11T00:00:00.0000000' AS DateTime2), N'Huddersfield', N'Bournemouth', 4, 1, N'Huddersfield')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (268, CAST(N'2018-02-11T00:00:00.0000000' AS DateTime2), N'Newcastle', N'Man United', 1, 0, N'Newcastle')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (269, CAST(N'2018-02-11T00:00:00.0000000' AS DateTime2), N'Southampton', N'Liverpool', 0, 2, N'Southampton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (270, CAST(N'2018-02-12T00:00:00.0000000' AS DateTime2), N'Chelsea', N'West Brom', 3, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (271, CAST(N'2018-02-24T00:00:00.0000000' AS DateTime2), N'Bournemouth', N'Newcastle', 2, 2, N'Bournemouth')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (272, CAST(N'2018-02-24T00:00:00.0000000' AS DateTime2), N'Brighton', N'Swansea', 4, 1, N'Brighton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (273, CAST(N'2018-02-24T00:00:00.0000000' AS DateTime2), N'Burnley', N'Southampton', 1, 1, N'Burnley')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (274, CAST(N'2018-02-24T00:00:00.0000000' AS DateTime2), N'Leicester', N'Stoke', 1, 1, N'Leicester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (275, CAST(N'2018-02-24T00:00:00.0000000' AS DateTime2), N'Liverpool', N'West Ham', 4, 1, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (276, CAST(N'2018-02-24T00:00:00.0000000' AS DateTime2), N'Watford', N'Everton', 1, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (277, CAST(N'2018-02-24T00:00:00.0000000' AS DateTime2), N'West Brom', N'Huddersfield', 1, 2, N'West Brom')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (278, CAST(N'2018-02-25T00:00:00.0000000' AS DateTime2), N'Crystal Palace', N'Tottenham', 0, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (279, CAST(N'2018-02-25T00:00:00.0000000' AS DateTime2), N'Man United', N'Chelsea', 2, 1, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (280, CAST(N'2018-03-01T00:00:00.0000000' AS DateTime2), N'Arsenal', N'Man City', 0, 3, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (281, CAST(N'2018-03-03T00:00:00.0000000' AS DateTime2), N'Burnley', N'Everton', 2, 1, N'Burnley')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (282, CAST(N'2018-03-03T00:00:00.0000000' AS DateTime2), N'Leicester', N'Bournemouth', 1, 1, N'Leicester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (283, CAST(N'2018-03-03T00:00:00.0000000' AS DateTime2), N'Liverpool', N'Newcastle', 2, 0, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (284, CAST(N'2018-03-03T00:00:00.0000000' AS DateTime2), N'Southampton', N'Stoke', 0, 0, N'Southampton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (285, CAST(N'2018-03-03T00:00:00.0000000' AS DateTime2), N'Swansea', N'West Ham', 4, 1, N'Swansea')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (286, CAST(N'2018-03-03T00:00:00.0000000' AS DateTime2), N'Tottenham', N'Huddersfield', 2, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (287, CAST(N'2018-03-03T00:00:00.0000000' AS DateTime2), N'Watford', N'West Brom', 1, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (288, CAST(N'2018-03-04T00:00:00.0000000' AS DateTime2), N'Brighton', N'Arsenal', 2, 1, N'Brighton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (289, CAST(N'2018-03-04T00:00:00.0000000' AS DateTime2), N'Man City', N'Chelsea', 1, 0, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (290, CAST(N'2018-03-05T00:00:00.0000000' AS DateTime2), N'Crystal Palace', N'Man United', 2, 3, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (291, CAST(N'2018-03-10T00:00:00.0000000' AS DateTime2), N'Chelsea', N'Crystal Palace', 2, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (292, CAST(N'2018-03-10T00:00:00.0000000' AS DateTime2), N'Everton', N'Brighton', 2, 0, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (293, CAST(N'2018-03-10T00:00:00.0000000' AS DateTime2), N'Huddersfield', N'Swansea', 0, 0, N'Huddersfield')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (294, CAST(N'2018-03-10T00:00:00.0000000' AS DateTime2), N'Man United', N'Liverpool', 2, 1, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (295, CAST(N'2018-03-10T00:00:00.0000000' AS DateTime2), N'Newcastle', N'Southampton', 3, 0, N'Newcastle')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (296, CAST(N'2018-03-10T00:00:00.0000000' AS DateTime2), N'West Brom', N'Leicester', 1, 4, N'West Brom')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (297, CAST(N'2018-03-10T00:00:00.0000000' AS DateTime2), N'West Ham', N'Burnley', 0, 3, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (298, CAST(N'2018-03-11T00:00:00.0000000' AS DateTime2), N'Arsenal', N'Watford', 3, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (299, CAST(N'2018-03-11T00:00:00.0000000' AS DateTime2), N'Bournemouth', N'Tottenham', 1, 4, N'Bournemouth')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (300, CAST(N'2018-03-12T00:00:00.0000000' AS DateTime2), N'Stoke', N'Man City', 0, 2, N'Stoke')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (301, CAST(N'2018-03-17T00:00:00.0000000' AS DateTime2), N'Bournemouth', N'West Brom', 2, 1, N'Bournemouth')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (302, CAST(N'2018-03-17T00:00:00.0000000' AS DateTime2), N'Huddersfield', N'Crystal Palace', 0, 2, N'Huddersfield')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (303, CAST(N'2018-03-17T00:00:00.0000000' AS DateTime2), N'Liverpool', N'Watford', 5, 0, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (304, CAST(N'2018-03-17T00:00:00.0000000' AS DateTime2), N'Stoke', N'Everton', 1, 2, N'Stoke')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (305, CAST(N'2018-03-31T00:00:00.0000000' AS DateTime2), N'Brighton', N'Leicester', 0, 2, N'Brighton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (306, CAST(N'2018-03-31T00:00:00.0000000' AS DateTime2), N'Crystal Palace', N'Liverpool', 1, 2, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (307, CAST(N'2018-03-31T00:00:00.0000000' AS DateTime2), N'Everton', N'Man City', 1, 3, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (308, CAST(N'2018-03-31T00:00:00.0000000' AS DateTime2), N'Man United', N'Swansea', 2, 0, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (309, CAST(N'2018-03-31T00:00:00.0000000' AS DateTime2), N'Newcastle', N'Huddersfield', 1, 0, N'Newcastle')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (310, CAST(N'2018-03-31T00:00:00.0000000' AS DateTime2), N'Watford', N'Bournemouth', 2, 2, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (311, CAST(N'2018-03-31T00:00:00.0000000' AS DateTime2), N'West Brom', N'Burnley', 1, 2, N'West Brom')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (312, CAST(N'2018-03-31T00:00:00.0000000' AS DateTime2), N'West Ham', N'Southampton', 3, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (313, CAST(N'2018-04-01T00:00:00.0000000' AS DateTime2), N'Arsenal', N'Stoke', 3, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (314, CAST(N'2018-04-01T00:00:00.0000000' AS DateTime2), N'Chelsea', N'Tottenham', 1, 3, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (315, CAST(N'2018-04-07T00:00:00.0000000' AS DateTime2), N'Bournemouth', N'Crystal Palace', 2, 2, N'Bournemouth')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (316, CAST(N'2018-04-07T00:00:00.0000000' AS DateTime2), N'Brighton', N'Huddersfield', 1, 1, N'Brighton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (317, CAST(N'2018-04-07T00:00:00.0000000' AS DateTime2), N'Everton', N'Liverpool', 0, 0, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (318, CAST(N'2018-04-07T00:00:00.0000000' AS DateTime2), N'Leicester', N'Newcastle', 1, 2, N'Leicester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (319, CAST(N'2018-04-07T00:00:00.0000000' AS DateTime2), N'Man City', N'Man United', 2, 3, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (320, CAST(N'2018-04-07T00:00:00.0000000' AS DateTime2), N'Stoke', N'Tottenham', 1, 2, N'Stoke')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (321, CAST(N'2018-04-07T00:00:00.0000000' AS DateTime2), N'Watford', N'Burnley', 1, 2, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (322, CAST(N'2018-04-07T00:00:00.0000000' AS DateTime2), N'West Brom', N'Swansea', 1, 1, N'West Brom')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (323, CAST(N'2018-04-08T00:00:00.0000000' AS DateTime2), N'Arsenal', N'Southampton', 3, 2, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (324, CAST(N'2018-04-08T00:00:00.0000000' AS DateTime2), N'Chelsea', N'West Ham', 1, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (325, CAST(N'2018-04-14T00:00:00.0000000' AS DateTime2), N'Burnley', N'Leicester', 2, 1, N'Burnley')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (326, CAST(N'2018-04-14T00:00:00.0000000' AS DateTime2), N'Crystal Palace', N'Brighton', 3, 2, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (327, CAST(N'2018-04-14T00:00:00.0000000' AS DateTime2), N'Huddersfield', N'Watford', 1, 0, N'Huddersfield')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (328, CAST(N'2018-04-14T00:00:00.0000000' AS DateTime2), N'Liverpool', N'Bournemouth', 3, 0, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (329, CAST(N'2018-04-14T00:00:00.0000000' AS DateTime2), N'Southampton', N'Chelsea', 2, 3, N'Southampton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (330, CAST(N'2018-04-14T00:00:00.0000000' AS DateTime2), N'Swansea', N'Everton', 1, 1, N'Swansea')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (331, CAST(N'2018-04-14T00:00:00.0000000' AS DateTime2), N'Tottenham', N'Man City', 1, 3, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (332, CAST(N'2018-04-15T00:00:00.0000000' AS DateTime2), N'Man United', N'West Brom', 0, 1, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (333, CAST(N'2018-04-15T00:00:00.0000000' AS DateTime2), N'Newcastle', N'Arsenal', 2, 1, N'Newcastle')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (334, CAST(N'2018-04-16T00:00:00.0000000' AS DateTime2), N'West Ham', N'Stoke', 1, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (335, CAST(N'2018-04-17T00:00:00.0000000' AS DateTime2), N'Brighton', N'Tottenham', 1, 1, N'Brighton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (336, CAST(N'2018-04-18T00:00:00.0000000' AS DateTime2), N'Bournemouth', N'Man United', 0, 2, N'Bournemouth')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (337, CAST(N'2018-04-19T00:00:00.0000000' AS DateTime2), N'Burnley', N'Chelsea', 1, 2, N'Burnley')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (338, CAST(N'2018-04-19T00:00:00.0000000' AS DateTime2), N'Leicester', N'Southampton', 0, 0, N'Leicester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (339, CAST(N'2018-04-21T00:00:00.0000000' AS DateTime2), N'Watford', N'Crystal Palace', 0, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (340, CAST(N'2018-04-21T00:00:00.0000000' AS DateTime2), N'West Brom', N'Liverpool', 2, 2, N'West Brom')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (341, CAST(N'2018-04-22T00:00:00.0000000' AS DateTime2), N'Arsenal', N'West Ham', 4, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (342, CAST(N'2018-04-22T00:00:00.0000000' AS DateTime2), N'Man City', N'Swansea', 5, 0, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (343, CAST(N'2018-04-22T00:00:00.0000000' AS DateTime2), N'Stoke', N'Burnley', 1, 1, N'Stoke')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (344, CAST(N'2018-04-23T00:00:00.0000000' AS DateTime2), N'Everton', N'Newcastle', 1, 0, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (345, CAST(N'2018-04-28T00:00:00.0000000' AS DateTime2), N'Burnley', N'Brighton', 0, 0, N'Burnley')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (346, CAST(N'2018-04-28T00:00:00.0000000' AS DateTime2), N'Crystal Palace', N'Leicester', 5, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (347, CAST(N'2018-04-28T00:00:00.0000000' AS DateTime2), N'Huddersfield', N'Everton', 0, 2, N'Huddersfield')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (348, CAST(N'2018-04-28T00:00:00.0000000' AS DateTime2), N'Liverpool', N'Stoke', 0, 0, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (349, CAST(N'2018-04-28T00:00:00.0000000' AS DateTime2), N'Newcastle', N'West Brom', 0, 1, N'Newcastle')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (350, CAST(N'2018-04-28T00:00:00.0000000' AS DateTime2), N'Southampton', N'Bournemouth', 2, 1, N'Southampton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (351, CAST(N'2018-04-28T00:00:00.0000000' AS DateTime2), N'Swansea', N'Chelsea', 0, 1, N'Swansea')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (352, CAST(N'2018-04-29T00:00:00.0000000' AS DateTime2), N'Man United', N'Arsenal', 2, 1, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (353, CAST(N'2018-04-29T00:00:00.0000000' AS DateTime2), N'West Ham', N'Man City', 1, 4, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (354, CAST(N'2018-04-30T00:00:00.0000000' AS DateTime2), N'Tottenham', N'Watford', 2, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (355, CAST(N'2018-05-04T00:00:00.0000000' AS DateTime2), N'Brighton', N'Man United', 1, 0, N'Brighton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (356, CAST(N'2018-05-05T00:00:00.0000000' AS DateTime2), N'Bournemouth', N'Swansea', 1, 0, N'Bournemouth')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (357, CAST(N'2018-05-05T00:00:00.0000000' AS DateTime2), N'Everton', N'Southampton', 1, 1, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (358, CAST(N'2018-05-05T00:00:00.0000000' AS DateTime2), N'Leicester', N'West Ham', 0, 2, N'Leicester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (359, CAST(N'2018-05-05T00:00:00.0000000' AS DateTime2), N'Stoke', N'Crystal Palace', 1, 2, N'Stoke')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (360, CAST(N'2018-05-05T00:00:00.0000000' AS DateTime2), N'Watford', N'Newcastle', 2, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (361, CAST(N'2018-05-05T00:00:00.0000000' AS DateTime2), N'West Brom', N'Tottenham', 1, 0, N'West Brom')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (362, CAST(N'2018-05-06T00:00:00.0000000' AS DateTime2), N'Arsenal', N'Burnley', 5, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (363, CAST(N'2018-05-06T00:00:00.0000000' AS DateTime2), N'Chelsea', N'Liverpool', 1, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (364, CAST(N'2018-05-06T00:00:00.0000000' AS DateTime2), N'Man City', N'Huddersfield', 0, 0, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (365, CAST(N'2018-05-08T00:00:00.0000000' AS DateTime2), N'Swansea', N'Southampton', 0, 1, N'Swansea')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (366, CAST(N'2018-05-09T00:00:00.0000000' AS DateTime2), N'Chelsea', N'Huddersfield', 1, 1, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (367, CAST(N'2018-05-09T00:00:00.0000000' AS DateTime2), N'Leicester', N'Arsenal', 3, 1, N'Leicester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (368, CAST(N'2018-05-09T00:00:00.0000000' AS DateTime2), N'Man City', N'Brighton', 3, 1, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (369, CAST(N'2018-05-09T00:00:00.0000000' AS DateTime2), N'Tottenham', N'Newcastle', 1, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (370, CAST(N'2018-05-10T00:00:00.0000000' AS DateTime2), N'West Ham', N'Man United', 0, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (371, CAST(N'2018-05-13T00:00:00.0000000' AS DateTime2), N'Burnley', N'Bournemouth', 1, 2, N'Burnley')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (372, CAST(N'2018-05-13T00:00:00.0000000' AS DateTime2), N'Crystal Palace', N'West Brom', 2, 0, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (373, CAST(N'2018-05-13T00:00:00.0000000' AS DateTime2), N'Huddersfield', N'Arsenal', 0, 1, N'Huddersfield')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (374, CAST(N'2018-05-13T00:00:00.0000000' AS DateTime2), N'Liverpool', N'Brighton', 4, 0, N'Liverpool')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (375, CAST(N'2018-05-13T00:00:00.0000000' AS DateTime2), N'Man United', N'Watford', 1, 0, N'Manchester')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (376, CAST(N'2018-05-13T00:00:00.0000000' AS DateTime2), N'Newcastle', N'Chelsea', 3, 0, N'Newcastle')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (377, CAST(N'2018-05-13T00:00:00.0000000' AS DateTime2), N'Southampton', N'Man City', 0, 1, N'Southampton')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (378, CAST(N'2018-05-13T00:00:00.0000000' AS DateTime2), N'Swansea', N'Stoke', 1, 2, N'Swansea')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (379, CAST(N'2018-05-13T00:00:00.0000000' AS DateTime2), N'Tottenham', N'Leicester', 5, 4, N'London')
GO
INSERT [dbo].[E02017] ([Id], [Date], [HomeTeamName], [AwayTeamName], [HG], [AG], [City]) VALUES (380, CAST(N'2018-05-13T00:00:00.0000000' AS DateTime2), N'West Ham', N'Everton', 3, 1, N'London')
GO
SET IDENTITY_INSERT [dbo].[E02017] OFF
GO

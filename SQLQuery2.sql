
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Batch]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Batch](
	[ID] [uniqueidentifier] NOT NULL,
	[BatchName] [varchar](20) NOT NULL,
	[BatchCode] [varchar](20) NOT NULL,
	[AssessmentDate] [datetime] NOT NULL,
	[Course] [varchar](50) NOT NULL,
	[Language] [varchar](50) NOT NULL,
	[NoOfCandidate] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Batch] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Candidate]    Script Date: 06/11/2019 7:02:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Candidate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Candidate](
	[ID] [uniqueidentifier] NOT NULL,
	[BatchID] [uniqueidentifier] NOT NULL,
	[RegistrationNo] [varchar](20) NOT NULL,
	[CandidateName] [varchar](100) NOT NULL,
	[FatherName] [varchar](60) NULL,
	[MotherName] [varchar](60) NULL,
	[DOB] [varchar](50) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[Gender] [varchar](15) NULL,
 CONSTRAINT [PK_Candidate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Login]    Script Date: 06/11/2019 7:02:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Login]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Login](
	[ID] [uniqueidentifier] NOT NULL,
	[UserID] [varchar](200) NOT NULL,
	[Password] [nvarchar](510) NULL,
	[IsLocked] [bit] NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TestSchedule]    Script Date: 06/11/2019 7:02:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TestSchedule]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TestSchedule](
	[ID] [uniqueidentifier] NOT NULL,
	[BatchID] [uniqueidentifier] NOT NULL,
	[TestName] [varchar](100) NOT NULL,
	[TimeAllowed] [int] NOT NULL,
	[Num_of_Questions] [int] NOT NULL,
	[TestStartDate] [datetime] NOT NULL,
	[TestEndDate] [datetime] NOT NULL,
	[MaxMarks] [int] NOT NULL,
	[PassMarks] [int] NOT NULL,
	[IsNegative] [bit] NOT NULL,
	[NegativePercent] [decimal](18, 2) NOT NULL,
	[IsReattempt] [bit] NOT NULL,
	[NumberOfSets] [int] NOT NULL,
	[QuestionCount] [int] NOT NULL,
	[Language] [nvarchar](100) NOT NULL,
	[ConfirmAssessmentDate] [datetime] NOT NULL,
	[Mode] [varchar](50) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDateTime] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
 CONSTRAINT [PK_TestSchedule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[Batch] ([ID], [BatchName], [BatchCode], [AssessmentDate], [Course], [Language], [NoOfCandidate], [IsDeleted], [CreatedBy], [CreatedDateTime], [UpdatedOn], [UpdatedBy]) VALUES (N'abe4b56d-60e2-4ac7-a1ac-6a6fc10f57dc', N'Batch 2', N'Code 003', CAST(N'2019-01-10T00:00:00.000' AS DateTime), N'CSE', N'English', 11, 1, 1, CAST(N'2019-06-03T23:47:06.713' AS DateTime), CAST(N'2019-06-08T19:15:26.403' AS DateTime), 1)
GO
INSERT [dbo].[Batch] ([ID], [BatchName], [BatchCode], [AssessmentDate], [Course], [Language], [NoOfCandidate], [IsDeleted], [CreatedBy], [CreatedDateTime], [UpdatedOn], [UpdatedBy]) VALUES (N'85566909-8701-4d96-9c58-7ab54bc33a25', N'Batch 1', N'Code 001', CAST(N'2019-01-10T00:00:00.000' AS DateTime), N'Computer Science', N'English', 10, 0, 1, CAST(N'2019-06-03T23:32:10.237' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Batch] ([ID], [BatchName], [BatchCode], [AssessmentDate], [Course], [Language], [NoOfCandidate], [IsDeleted], [CreatedBy], [CreatedDateTime], [UpdatedOn], [UpdatedBy]) VALUES (N'1668a86f-f8cb-417a-a2db-c035cae35415', N'Batch 2', N'Code 002', CAST(N'2019-01-10T00:00:00.000' AS DateTime), N'Computer Science', N'English', 11, 0, 1, CAST(N'2019-06-08T18:32:58.837' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Candidate] ([ID], [BatchID], [RegistrationNo], [CandidateName], [FatherName], [MotherName], [DOB], [IsDeleted], [CreatedBy], [CreatedDateTime], [UpdatedOn], [UpdatedBy], [Gender]) VALUES (N'd319aa84-f09b-41eb-88bf-f51f6f055173', N'abe4b56d-60e2-4ac7-a1ac-6a6fc10f57dc', N'1234', N'Urvashi12', N'Karam Chand', N'Neena', N'10/12/1990', 0, 1, CAST(N'2019-06-08T17:43:14.513' AS DateTime), CAST(N'2019-06-08T18:44:57.600' AS DateTime), 1, N'Male')
GO
INSERT [dbo].[Candidate] ([ID], [BatchID], [RegistrationNo], [CandidateName], [FatherName], [MotherName], [DOB], [IsDeleted], [CreatedBy], [CreatedDateTime], [UpdatedOn], [UpdatedBy], [Gender]) VALUES (N'1407f4a3-2b13-4dba-9ada-f60ee9f58b7f', N'abe4b56d-60e2-4ac7-a1ac-6a6fc10f57dc', N'1234', N'Urvashi', N'Karam Chand', N'Neena', N'10/12/1990', 0, 1, CAST(N'2019-06-08T17:44:47.743' AS DateTime), NULL, NULL, N'Male')
GO
INSERT [dbo].[Login] ([ID], [UserID], [Password], [IsLocked], [IsDeleted], [CreatedBy], [CreatedDateTime], [UpdatedOn], [UpdatedBy]) VALUES (N'42b30974-ca58-4821-8b7b-11a0bbf7fb34', N'admin', N'Welcome@1234', 0, 0, 1, CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[TestSchedule] ([ID], [BatchID], [TestName], [TimeAllowed], [Num_of_Questions], [TestStartDate], [TestEndDate], [MaxMarks], [PassMarks], [IsNegative], [NegativePercent], [IsReattempt], [NumberOfSets], [QuestionCount], [Language], [ConfirmAssessmentDate], [Mode], [IsDeleted], [CreatedBy], [CreatedDateTime], [UpdatedOn], [UpdatedBy]) VALUES (N'53613bfe-cb81-4151-aec6-3f95adaad7f3', N'85566909-8701-4d96-9c58-7ab54bc33a25', N'Test 1', 1, 1, CAST(N'2019-08-02T15:00:12.000' AS DateTime), CAST(N'2019-08-02T15:00:12.000' AS DateTime), 12, 12, 0, CAST(0.00 AS Decimal(18, 2)), 0, 2, 11, N'English12', CAST(N'2018-01-01T00:00:00.000' AS DateTime), NULL, 0, 1, CAST(N'2019-06-08T18:56:37.107' AS DateTime), CAST(N'2019-06-08T18:57:51.003' AS DateTime), 1)
GO
INSERT [dbo].[TestSchedule] ([ID], [BatchID], [TestName], [TimeAllowed], [Num_of_Questions], [TestStartDate], [TestEndDate], [MaxMarks], [PassMarks], [IsNegative], [NegativePercent], [IsReattempt], [NumberOfSets], [QuestionCount], [Language], [ConfirmAssessmentDate], [Mode], [IsDeleted], [CreatedBy], [CreatedDateTime], [UpdatedOn], [UpdatedBy]) VALUES (N'26068d1a-4a53-4bfb-86b1-5d88cb72487e', N'85566909-8701-4d96-9c58-7ab54bc33a25', N'Test 1', 1, 1, CAST(N'2019-08-02T15:00:12.000' AS DateTime), CAST(N'2019-08-02T15:00:12.000' AS DateTime), 12, 12, 0, CAST(0.00 AS Decimal(18, 2)), 0, 2, 11, N'English', CAST(N'2018-01-01T00:00:00.000' AS DateTime), NULL, 0, 1, CAST(N'2019-06-08T18:05:10.413' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[TestSchedule] ([ID], [BatchID], [TestName], [TimeAllowed], [Num_of_Questions], [TestStartDate], [TestEndDate], [MaxMarks], [PassMarks], [IsNegative], [NegativePercent], [IsReattempt], [NumberOfSets], [QuestionCount], [Language], [ConfirmAssessmentDate], [Mode], [IsDeleted], [CreatedBy], [CreatedDateTime], [UpdatedOn], [UpdatedBy]) VALUES (N'b193f3ef-dff6-497e-af4f-e8234808e70b', N'85566909-8701-4d96-9c58-7ab54bc33a25', N'Test 1', 1, 1, CAST(N'2019-08-02T15:00:12.000' AS DateTime), CAST(N'2019-08-02T15:00:12.000' AS DateTime), 12, 12, 0, CAST(0.00 AS Decimal(18, 2)), 0, 2, 11, N'English1', CAST(N'2018-01-01T00:00:00.000' AS DateTime), NULL, 0, 1, CAST(N'2019-06-08T18:56:29.650' AS DateTime), NULL, NULL)
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_TestSchedule_IsNegative]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TestSchedule] ADD  CONSTRAINT [DF_TestSchedule_IsNegative]  DEFAULT ((0)) FOR [IsNegative]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Candidate_Batch]') AND parent_object_id = OBJECT_ID(N'[dbo].[Candidate]'))
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_Candidate_Batch] FOREIGN KEY([BatchID])
REFERENCES [dbo].[Batch] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Candidate_Batch]') AND parent_object_id = OBJECT_ID(N'[dbo].[Candidate]'))
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_Candidate_Batch]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TestSchedule_TestSchedule]') AND parent_object_id = OBJECT_ID(N'[dbo].[TestSchedule]'))
ALTER TABLE [dbo].[TestSchedule]  WITH CHECK ADD  CONSTRAINT [FK_TestSchedule_TestSchedule] FOREIGN KEY([BatchID])
REFERENCES [dbo].[Batch] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TestSchedule_TestSchedule]') AND parent_object_id = OBJECT_ID(N'[dbo].[TestSchedule]'))
ALTER TABLE [dbo].[TestSchedule] CHECK CONSTRAINT [FK_TestSchedule_TestSchedule]
GO
USE [master]
GO
ALTER DATABASE [ExamSystem] SET  READ_WRITE 
GO

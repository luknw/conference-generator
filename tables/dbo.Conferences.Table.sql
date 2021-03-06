USE [nawojows_a]
GO
/****** Object:  Table [dbo].[Conferences]    Script Date: sob. 03 gru 16 14:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conferences](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Venue] [nvarchar](50) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[StudentDiscount] [decimal](18, 4) NOT NULL,
	[Website] [nvarchar](50) NOT NULL,
	[IsCancelled] [bit] NOT NULL,
 CONSTRAINT [PK_Conferences] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

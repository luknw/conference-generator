USE [nawojows_a]
GO
/****** Object:  Table [dbo].[Installments]    Script Date: sob. 03 gru 16 14:48:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Installments](
	[ID] [int] NOT NULL,
	[ReservationID] [int] NOT NULL,
	[Value] [decimal](18, 4) NOT NULL,
	[PlacedOn] [timestamp] NOT NULL,
 CONSTRAINT [PK_Installments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Installments]  WITH CHECK ADD  CONSTRAINT [FK_Installments_Reservations] FOREIGN KEY([ReservationID])
REFERENCES [dbo].[Reservations] ([ID])
GO
ALTER TABLE [dbo].[Installments] CHECK CONSTRAINT [FK_Installments_Reservations]
GO

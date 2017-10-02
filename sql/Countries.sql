USE [BDWC]
GO

DROP TABLE [dbo].[Country]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Country](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[CountryName] [varchar](200) NOT NULL,
	[NumismasterID] [smallint] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Countries_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Countries_GUID]  DEFAULT (newid()) FOR [GUID]
GO

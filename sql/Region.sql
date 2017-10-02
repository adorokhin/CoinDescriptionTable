DROP TABLE [dbo].[Region]
GO

CREATE TABLE [dbo].[Region](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Country_GUID] [uniqueidentifier] NOT NULL,
	[RegionName] [varchar](200) NOT NULL,
	[NumismasterID] [smallint] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Region] ADD  CONSTRAINT [DF_Region_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO


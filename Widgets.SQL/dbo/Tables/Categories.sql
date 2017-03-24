CREATE TABLE [dbo].[Categories] (
    [Id]   INT           NOT NULL,
    [Name] NVARCHAR (50) NULL,
	[TestField1] NVARCHAR(50)  NULL,
    CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([Id] ASC)
);


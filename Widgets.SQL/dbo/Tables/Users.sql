CREATE TABLE [dbo].[Users] (
    [Id]        INT           NOT NULL,
    [Firstname] NVARCHAR (50) NULL,
    [Lastname]  NVARCHAR (50) NULL,
    [Email]     NVARCHAR (50) NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([Id] ASC)
);


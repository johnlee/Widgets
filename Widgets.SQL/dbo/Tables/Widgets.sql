CREATE TABLE [dbo].[Widgets] (
    [Id]          INT            NOT NULL,
    [Name]        NVARCHAR (50)  NULL,
    [CategoryId]  INT            NULL,
    [Price]       DECIMAL (18)   NULL,
    [Description] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Widgets] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Widgets_Categories] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Categories] ([Id])
);


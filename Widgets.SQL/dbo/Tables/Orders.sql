CREATE TABLE [dbo].[Orders] (
    [Id]       INT          NOT NULL,
    [BuyerId]  INT          NOT NULL,
    [WidgetId] INT          NOT NULL,
    [Quantity] INT          NULL,
    [Total]    DECIMAL (18) NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Orders_Users] FOREIGN KEY ([BuyerId]) REFERENCES [dbo].[Users] ([Id]),
    CONSTRAINT [FK_Orders_Widgets] FOREIGN KEY ([WidgetId]) REFERENCES [dbo].[Widgets] ([Id])
);


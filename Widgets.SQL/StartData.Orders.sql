MERGE INTO Orders AS Target 
USING (VALUES 
  (0, 0, 0, 1, 10000), 
  (1, 1, 1, 1, 1000), 
  (2, 2, 2, 1, 10)
) 
AS Source (Id, BuyerId, WidgetId, Quantity, Total) 
ON Target.Id = Source.Id
WHEN MATCHED THEN 
	UPDATE SET 
		BuyerId = Source.BuyerId,
		WidgetId = Source.WidgetId,
		Quantity = Source.Quantity,
		Total = Source.Total
WHEN NOT MATCHED BY TARGET THEN 
	INSERT (Id, BuyerId, WidgetId, Quantity, Total) 
	VALUES (Id, BuyerId, WidgetId, Quantity, Total) 
WHEN NOT MATCHED BY SOURCE THEN 
	DELETE;

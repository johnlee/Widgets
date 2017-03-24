MERGE INTO Widgets AS Target 
USING (VALUES 
  (0, 'Flux Capacitor', 0, 10000, 'Makes time travel possible'), 
  (1, 'M16', 1, 1000, 'Say Hello to my little Friend'),
  (2, 'Volleyball', 2, 10, 'Wilson!') 
) 
AS Source (Id, Name, CategoryId, Price, Description) 
ON Target.Id = Source.Id
WHEN MATCHED THEN 
	UPDATE SET 
		Name = Source.Name,
		CategoryId = Source.CategoryId,
		Price = Source.Price,
		Description = Source.Description
WHEN NOT MATCHED BY TARGET THEN 
	INSERT (Id, Name, CategoryId, Price, Description)
	VALUES (Id, Name, CategoryId, Price, Description)
WHEN NOT MATCHED BY SOURCE THEN 
	DELETE;

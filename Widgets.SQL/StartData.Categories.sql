MERGE INTO Categories AS Target 
USING (VALUES 
  (0, 'W_TYPE_1'), 
  (1, 'W_TYPE_2'), 
  (2, 'W_TYPE_3')
) 
AS Source (Id, Name) 
ON Target.Id = Source.Id
WHEN MATCHED THEN 
	UPDATE SET 
		Name = Source.Name
WHEN NOT MATCHED BY TARGET THEN 
	INSERT (Id, Name) 
	VALUES (Id, Name) 
WHEN NOT MATCHED BY SOURCE THEN 
	DELETE;

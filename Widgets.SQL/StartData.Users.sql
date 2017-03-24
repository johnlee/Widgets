MERGE INTO Users AS Target 
USING (VALUES 
  (0, 'John', 'Lee', 'johnlee@llnl.gov'), 
  (1, 'Adam', 'Apple', 'aa@food.com'), 
  (2, 'Becky', 'Banana', 'bb@food.com'),
  (3, 'Christian', 'Cranberry', 'cc@food.com')
) 
AS Source (Id, Firstname, Lastname, Email) 
ON Target.Id = Source.Id
WHEN MATCHED THEN 
	UPDATE SET 
		Firstname = Source.Firstname,
		Lastname = Source.Lastname,
		Email = Source.Email
WHEN NOT MATCHED BY TARGET THEN 
	INSERT (Id, Firstname, Lastname, Email) 
	VALUES (Id, Firstname, Lastname, Email)
WHEN NOT MATCHED BY SOURCE THEN 
	DELETE;

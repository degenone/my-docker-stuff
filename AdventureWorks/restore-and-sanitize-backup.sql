RESTORE DATABASE [AdventureWorks] FROM DISK = '/tmp/AdventureWorksLT2017.bak'
WITH FILE = 1,
MOVE 'AdventureWorksLT2012_Data' TO '/var/opt/mssql/data/AdventureWorks.mdf',
MOVE 'AdventureWorksLT2012_Log' TO '/var/opt/mssql/data/AdventureWorks.ldf',
NOUNLOAD, REPLACE, STATS = 5
GO
USE AdventureWorks;
GO
UPDATE SalesLT.Customer
SET EmailAddress = FirstName + '@fakeemail.com',
	LastName = 'Customer',
	Phone = FORMAT(CAST(LEFT(CAST(ABS(CAST(CAST(NEWID() as binary(10)) as int)) as varchar(max)) + '0000000000', 10) as bigint), '###-###-####'),
	PasswordHash = '',
	PasswordSalt = '';
RESTORE DATABASE [northwind] FROM DISK = '/tmp/northwind.bak'
WITH FILE = 1,
MOVE 'Northwind' TO '/var/opt/mssql/data/NORTHWND.MDF',
MOVE 'Northwind_log' TO '/var/opt/mssql/data/NORTHWND_log.ldf',
NOUNLOAD, REPLACE, STATS = 5;
GO

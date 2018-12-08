
USE master;
GO
BACKUP DATABASE [DB_NAME]
TO DISK = 'C:\Backup\TestBackup\DB_NAME_Timestamp.Bak'
   WITH FORMAT,
      MEDIANAME = 'SQLServerBackups',
      NAME = 'Full Backup of DB_NAME';
GO


ALTER DATABASE [DB_NAME]
SET SINGLE_USER
WITH ROLLBACK IMMEDIATE;
GO

DROP DATABASE [DB_NAME];
GO


USE master;

RESTORE DATABASE [DB_NAME_Timestamp]
FROM disk = 'C:\Backup\TestBackup\DB_NAME_Timestamp.Bak'
WITH MOVE 'MDFLogicalName' TO 'C:\Backup\TestBackup\DB_NAME_Timestamp.mdf',
MOVE 'LDFLogicalName_log' TO 'C:\Backup\TestBackup\DB_NAME_Timestamp.ldf'; 


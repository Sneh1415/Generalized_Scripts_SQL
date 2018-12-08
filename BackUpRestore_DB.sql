
USE master;
GO
BACKUP DATABASE [DB_NAME]
TO DISK = 'C:\Backup\TestBackup\DB_NAME_04092018.Bak'
   WITH FORMAT,
      MEDIANAME = 'Z_SQLServerBackups',
      NAME = 'Full Backup of DB_NAME';
GO


/*ALTER DATABASE [Swastha_Dev_07012018]
SET SINGLE_USER
WITH ROLLBACK IMMEDIATE;
GO

DROP DATABASE [Swastha_Dev_07012018];
GO
*/

USE master;

RESTORE DATABASE [Sarvodaya_S19_01092018]
FROM disk = 'C:\Backup\TestBackup\Sarvodaya_S19_01092018.Bak'
WITH MOVE 'Swastha' TO 'C:\Backup\TestBackup\Sarvodaya_S19_01092018.mdf',
MOVE 'Swastha_log' TO 'C:\Backup\TestBackup\Sarvodaya_S19_01092018.ldf'; 

USE master;

RESTORE DATABASE Sarvodaya_13082018
FROM disk = 'C:\Backup\TestBackup\Sarvodaya_13082018.Bak'
WITH MOVE 'Swastha' TO 'C:\Backup\TestBackup\Sarvodaya_13082018.mdf',
MOVE 'Swastha_log' TO 'C:\Backup\TestBackup\Sarvodaya_13082018.ldf'; 


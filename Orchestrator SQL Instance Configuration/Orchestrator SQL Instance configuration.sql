-- Author - Leon Laude
-- leon.laude@gmail.com


-- Instance Configuration


EXEC sys.sp_configure N'show advanced options', N'1'  RECONFIGURE WITH OVERRIDE
GO
EXEC sys.sp_configure N'max server memory (MB)', N'230000'
GO
RECONFIGURE WITH OVERRIDE
GO
EXEC sys.sp_configure N'fill factor (%)', N'75'
GO
EXEC sys.sp_configure N'cost threshold for parallelism', N'10'
GO
EXEC sys.sp_configure N'max degree of parallelism', N'1'
GO
RECONFIGURE WITH OVERRIDE
GO


-- Adjust model configuration. All newely created databases will inherit these settings.

USE [master]
GO
ALTER DATABASE [model] SET RECOVERY SIMPLE WITH NO_WAIT
GO
ALTER DATABASE [model] MODIFY FILE ( NAME = N'modeldev', SIZE = 262144KB , FILEGROWTH = 1048576KB )
GO
ALTER DATABASE [model] MODIFY FILE ( NAME = N'modellog', SIZE = 262144KB , FILEGROWTH = 1048576KB )
GO

-- Tempdb Configuration

USE [master]
GO
ALTER DATABASE [tempdb] MODIFY FILE ( NAME = N'tempdev', SIZE = 262144KB , FILEGROWTH = 262144KB )
GO
ALTER DATABASE [tempdb] ADD FILE ( NAME = N'tempdev2', FILENAME = N'H:\TempDB\tempdev2.ndf' , SIZE = 262144KB , FILEGROWTH = 262144KB )
GO
ALTER DATABASE [tempdb] ADD FILE ( NAME = N'tempdev3', FILENAME = N'H:\TempDB\tempdev3.ndf' , SIZE = 262144KB , FILEGROWTH = 262144KB )
GO
ALTER DATABASE [tempdb] ADD FILE ( NAME = N'tempdev4', FILENAME = N'H:\TempDB\tempdev4.ndf' , SIZE = 262144KB , FILEGROWTH = 262144KB )
GO
ALTER DATABASE [tempdb] ADD FILE ( NAME = N'tempdev5', FILENAME = N'H:\TempDB\tempdev5.ndf' , SIZE = 262144KB , FILEGROWTH = 262144KB )
GO
ALTER DATABASE [tempdb] ADD FILE ( NAME = N'tempdev6', FILENAME = N'H:\TempDB\tempdev6.ndf' , SIZE = 262144KB , FILEGROWTH = 262144KB )
GO
ALTER DATABASE [tempdb] ADD FILE ( NAME = N'tempdev7', FILENAME = N'H:\TempDB\tempdev7.ndf' , SIZE = 262144KB , FILEGROWTH = 262144KB )
GO
ALTER DATABASE [tempdb] ADD FILE ( NAME = N'tempdev8', FILENAME = N'H:\TempDB\tempdev8.ndf' , SIZE = 262144KB , FILEGROWTH = 262144KB )
GO
ALTER DATABASE [tempdb] MODIFY FILE ( NAME = N'templog', SIZE = 262144KB , FILEGROWTH = 262144KB )
GO





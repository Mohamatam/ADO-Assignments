use newdb
create table BusInformation (

BusID int Primary Key,

BoardingPoint nvarchar(50),

TravelDate datetime,

Amount decimal(10,2),

Rating int

)

Alter table BusInformation
add DroppingPoint nvarchar(50)

create procedure Insert_BusInfo (
	@BusID int,
	@BoardingPoint nvarchar(50), 
	@TravelDate datetime, 
	@Amount decimal(10,2), 
	@Rating int,
	@DroppingPoint nvarchar(50)
	)
as 
Begin 
  Insert into BusInformation values (@BusID, @BoardingPoint, @TravelDate, @Amount, @Rating, @DroppingPoint )
End

-- Executing Procedure
exec Insert_BusInfo
1,	'BGL',	'20170618',	400.65,	2, 'HYD'

exec Insert_BusInfo
2,	'HYD',	'20171005',	600.00,	3, 'CHN'

exec Insert_BusInfo
3,	'CHN',	'20160725',	445.95,	3, 'PUN'

exec Insert_BusInfo
4,	'PUN',	'20171210',	543.00,	4, 'MUM'

exec Insert_BusInfo
5,	'MUM',	'20170128',	500.50,	4, 'PUN'

exec Insert_BusInfo
6,	'PUN',	'20160327',	333.55,	3, 'MUM'

exec Insert_BusInfo
7,	'MUM',	'20161106',	510.00,	4, 'BGL'

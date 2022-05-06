use work

create table footballleague
(
MatchID int primary key,
TeamnName1 nvarchar(50),
TeamName2 nvarchar(50),
status nvarchar(50),
WinnigTeam nvarchar(50),
points int
)
 
create Procedure spInsertRecord
(
@MatchID int ,
@TeamnName1 nvarchar(50),
@TeamName2 nvarchar(50),
@status nvarchar(50),
@WinnigTeam nvarchar(50),
@points int
)


as begin
Insert into FootballLeague values (@MatchId,@TeamnName1,@TeamName2,@Status,@WinnigTeam,@Points )
End



EXEC spInsertRecord
	@MatchId=1001, 
	@TeamnName1= 'Italy',	
	@TeamName2= 'France',	
	@Status = 'Win',	
	@WinnigTeam = 'France',
	@Points =  4



EXEC spInsertRecord
	@MatchId=1002, 
	@TeamnName1= 'Brazil',	
	@TeamName2= 'Portugal',	
	@Status = 'Draw',	
	@WinnigTeam = 'null',
	@Points =  2

EXEC spInsertRecord 
	@MatchId=1003, 
	@TeamnName1= 'England',	
	@TeamName2= 'Japan',	
	@Status = 'Win',	
	@WinnigTeam = 'England',
	@Points =  4

EXEC spInsertRecord 
	@MatchId=1004, 
	@TeamnName1= 'USA',	
	@TeamName2= 'Russia',	
	@Status = 'Win',	
	@WinnigTeam = 'Russia',
	@Points =  4

EXEC spInsertRecord
	@MatchId=1005, 
	@TeamnName1= 'Portugal',	
	@TeamName2= 'Italy',	
	@Status = 'Draw',	
	@WinnigTeam = null,
	@Points =  2


EXEC spInsertRecord
	@MatchId=1006, 
	@TeamnName1= 'Brazil',	
	@TeamName2= 'France',	
	@Status = 'Win',	
	@WinnigTeam = 'Brazil',
	@Points =  4


EXEC spInsertRecord
	@MatchId=1007, 
	@TeamnName1= 'England',	
	@TeamName2= 'Russia',	
	@Status = 'Win',	
	@WinnigTeam = 'Russia',
	@Points =  4
	

EXEC spInsertRecord
	@MatchId=1008, 
	@TeamnName1= 'Japan',	
	@TeamName2= 'USA',	
	@Status = 'Draw',	
	@WinnigTeam = 'null',
	@Points =  2

	select * from  footballleague
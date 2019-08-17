CREATE PROCEDURE CountryInsert(@CName varchar(50),@CCode varchar(4),@IsE bit)
	
AS
	
	Insert into CountryMaster (ukCountryName,ukCountryCode,IsCountryEnabled) values
	(@CName,@CCode,@IsE)

RETURN 0

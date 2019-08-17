CREATE PROCEDURE StateInsert(@SName varchar(50),@SZip varchar(4),@IsE bit)
	
AS
	
	Insert into StateMaster (ukStateName,ukStateZipCode,IsStateEnabled) values
	(@SName,@SZip,@IsE)

RETURN 0


Create table CountryMaster
(
	pkCountryId int primary key identity, 
	ukCountryCode varchar(4) not null unique,
	ukCountryName varchar(50) not null unique,
	IsCountryEnabled bit default 1
)


Create table StateMaster
(
	pkStateId int primary key identity, 
	ukStateZipCode varchar(10) not null unique,
	ukStateName varchar(50) not null unique,
	IsStateEnabled bit default 1,
	refCountryId int not null references CountryMaster(pkCountryId)
)


Create table CityMaster
(
	pkCityId int primary key identity, 
	ukCityName varchar(50) not null unique,
	IsCityEnabled bit default 1,
	refStateId int not null references StateMaster(pkStateId)
)
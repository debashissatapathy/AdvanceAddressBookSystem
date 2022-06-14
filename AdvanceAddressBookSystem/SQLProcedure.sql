/*Insert stored procedures*/
create procedure SpAddressBook_Insert
(
	@First_Name varchar(200),
	@Last_Name varchar(200),
	@Address varchar(200),
	@City varchar(200),
	@State varchar(200),
	@Zip varchar(100),
	@Phone_Number varchar(200),
	@Email varchar(200),
	@Contact_Type int
)
as
begin
insert into AddressBook values(@First_Name,@Last_Name,@Address,@City,@State,@Zip,@Phone_Number,@Email,@Contact_Type);
SET NOCOUNT ON;
SELECT First_Name,Last_Name,Address,City,State,Zip,Phone_Number,Email,Contact_Type from AddressBook
END
GO

/*Update store procedure*/
Create procedure SpAddressBook_Update
(
	@First_Name varchar(200),
	@Last_Name varchar(200),
	@Address varchar(200),
	@City varchar(200),
	@State varchar(200),
	@Zip varchar(100),
	@Phone_Number varchar(200),
	@Email varchar(200),
	@Contact_Type int
)
as
begin
update  AddressBook set First_Name=@First_Name,Last_Name=@Last_Name,Address=@Address,City=@City,State=@State,Zip=@Zip,
Phone_Number=@Phone_Number,Email=@Email,Contact_Type=@Contact_type where First_Name=@First_Name;
SET NOCOUNT ON;
SELECT First_Name,Last_Name,Address,City,State,Zip,Phone_Number,Email,Contact_Type from AddressBook
END
GO

create procedure SpAddressBook_Delete
(
	@First_Name varchar(200)
)
as
begin
delete from AddressBook where First_Name=@First_Name;
End
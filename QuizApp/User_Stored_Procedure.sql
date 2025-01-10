----User Table Insert----

CREATE PROCEDURE User_Insert_Data
	@UserName  NVARCHAR(50),
    @Password  NVARCHAR(50),
    @Email  NVARCHAR(50),
    @Mobile NVARCHAR(50),
    @IsActive BIT,
    @Created DATETIME,
	@Modified DATETIME
AS
BEGIN
    INSERT INTO [User] (UserName,Password,Email,Mobile,IsActive,Created,Modified)
	VALUES (@UserName,@Password, @Email, @Mobile, @IsActive, @Created, @Modified);
END

----User Table Update--------

CREATE PROCEDURE User_Upadte_Data
	@UserID INT,
	@UserName  NVARCHAR(50),
    @Password  NVARCHAR(50),
    @Email  NVARCHAR(50),
    @Mobile NVARCHAR(50),
    @IsActive BIT,
    @Created DATETIME,
	@Modified DATETIME
AS
BEGIN
    UPDATE [User]
    SET  [dbo].[User].UserName = @UserName, 
         [dbo].[User].[Password] = @Password, 
         [dbo].[User].Email = @Password, 
         [dbo].[User].Mobile = @Email, 
         [dbo].[User].[IsActive] = @IsActive,
		 [dbo].[User].[Created] = @Created
    WHERE [dbo].[User].[UserID] = @UserID;
END

-------User Delete Data-------

CREATE PROCEDURE User_Delete_Data
    @UserID INT
AS
BEGIN
    DELETE FROM [dbo].[User]
    WHERE [dbo].[User].[UserID] = @UserID;
END

--------User All Data-----------

Alter PROCEDURE User_All_Data
AS
BEGIN
    SELECT [User].UserID, 
           [User].UserName, 
           [User].Password, 
		   [User].Email, 
           [User].Mobile, 
           [User].IsActive,
		   [User].Created
    FROM [User]
    ORDER BY [User].UserName
END

---------------------User By ID---------

CREATE PROCEDURE User_Search_By_ID
    @UserID INT
AS
BEGIN
    SELECT [User].[UserID], 
		   [User].UserName, 
           [User].Password, 
		   [User].Email, 
           [User].Mobile, 
           [User].IsActive,
		   [User].Created
    FROM [User]
    WHERE [User].[UserID] = @UserID
    ORDER BY [User].[UserID];
END


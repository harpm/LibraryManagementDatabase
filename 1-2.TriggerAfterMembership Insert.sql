USE [Library]

GO

-- ساخت تریگر اینسرت برای بروز رسانی خودکار تعداد اعضا در کتابخانه --

CREATE TRIGGER [dbo].NewMemberShip
ON [dbo].Membership
AFTER INSERT 
AS
	DECLARE @CURRENTNUMBER INT
	DECLARE @LIBID INT


	SELECT @LIBID = M.LibraryId FROM inserted AS M
	INNER JOIN [dbo].[Library] AS L
	ON M.LibraryId = L.LibraryId

	SELECT @CURRENTNUMBER = NumberOfMembers FROM [dbo].[Library]
		WHERE LibraryId = @LIBID

	UPDATE [dbo].[Library]
		SET NumberOfMembers = @CURRENTNUMBER + 1
	WHERE LibraryId = @LIBID

GO


USE [Library]

GO

-- ساخت تریگر حذف برای بروزرسانی خودکار تعداد اعضا در کتابخانه --

CREATE TRIGGER [dbo].RemoveMemberShip
ON [dbo].Membership
AFTER DELETE 
AS
	DECLARE @CURRENTNUMBER INT
	DECLARE @LIBID INT


	SELECT @LIBID = M.LibraryId FROM deleted AS M
	INNER JOIN [dbo].[Library] AS L
	ON M.LibraryId = L.LibraryId

	SELECT @CURRENTNUMBER = NumberOfMembers FROM [dbo].[Library]
		WHERE LibraryId = @LIBID

	UPDATE [dbo].[Library]
		SET NumberOfMembers = @CURRENTNUMBER - 1
	WHERE LibraryId = @LIBID

GO


USE [Library]

GO

SELECT Me.FirstName + ' ' + Me.LastName AS N'نام کامل'
	  , (SELECT TOP(1) L.[Name] AS N'نام کتابخانه' FROM [dbo].[Library] AS L WHERE L.LibraryId = M.LibraryId)
	  ,M.RegDate AS N'شروع اعتبار از'
	  ,M.ExpDate AS N'پایان اعتبار تا'
	FROM [dbo].Membership AS M
	INNER JOIN [dbo].Member AS Me
	ON M.MemberId = Me.MemberId
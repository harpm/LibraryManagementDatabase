USE [Library]

GO

SELECT Me.FirstName + ' ' + Me.LastName AS N'نام کامل'
	  ,L.[Name] AS N'نام کتابخانه'
	  ,M.RegDate AS N'شروع اعتبار از'
	  ,M.ExpDate AS N'پایان اعتبار تا'
	FROM [dbo].Membership AS M
	INNER JOIN [dbo].Member AS Me
	ON M.MemberId = Me.MemberId
	INNER JOIN [dbo].[Library] AS L
	ON M.LibraryId = L.LibraryId
USE [Library]

GO

SELECT B.[Name] AS N'نام کتاب'
	  ,L.[Name] AS N'کتابخانه'
	  ,L.[Address] AS N'آدرس'
	  ,E.Number AS N'تعداد کتاب در این کتابخانه'
	FROM [dbo].Exist AS E
	INNER JOIN [dbo].Book AS B
	ON E.BookId = B.BookId
	INNER JOIN [dbo].[Library] AS L
	ON E.LibraryId = L.LibraryId
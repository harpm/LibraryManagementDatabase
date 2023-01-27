CREATE VIEW [dbo].[LibraryCompeleteView]
AS
	SELECT M.FirstName + N' ' + M.LastName AS N'نام عضو'
			  ,(SELECT TOP(1) K.[Name] FROM [dbo].Book AS K WHERE K.BookId = B.BookId) AS N'کتاب'
		  ,(SELECT TOP(1) K.Writer FROM [dbo].Book AS K WHERE K.BookId = B.BookId) AS N'نویسنده'
		  ,(SELECT TOP(1) K.Translator FROM [dbo].Book AS K WHERE K.BookId = B.BookId) AS N'مترجم'
		  ,(SELECT TOP(1) K.Publisher FROM [dbo].Book AS K WHERE K.BookId = B.BookId) AS N'ناشر'
		  ,(SELECT TOP(1) L.[Name] FROM [dbo].[Library] AS L WHERE L.LibraryId = B.LibraryId) AS N'کتابخانه'
		  ,(SELECT TOP(1) L.[Address] FROM [dbo].[Library] AS L WHERE L.LibraryId = B.LibraryId) AS N'آدرس کتابخانه'
		  ,(SELECT TOP(1) L.NumberOfMembers FROM [dbo].[Library] AS L WHERE L.LibraryId = B.LibraryId) AS N'تعداد اعضای کتابخانه'
		  ,(SELECT TOP(1) L.RegDate FROM [dbo].Membership AS L WHERE L.MemberId = B.MemberId) AS N'تاریخ ثبت نام'
		  ,(SELECT TOP(1) L.ExpDate FROM [dbo].Membership AS L WHERE L.MemberId = B.MemberId) AS N'تاریخ پایان اعتبار'
		FROM [dbo].Borrow AS B
		INNER JOIN [dbo].Member AS M
		ON B.MemberId = M.MemberId
GO
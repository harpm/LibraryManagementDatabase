USE [Library]

GO

-- Libraries

INSERT INTO [dbo].[Library] ([Name], NumberOfMembers, [Address])
VALUES (N'شهید دستغیب', 0, N'بلوار امام')

GO

INSERT INTO [dbo].[Library] ([Name], NumberOfMembers, [Address])
VALUES (N'شهرداری', 0, N'میدان شهرداری')

GO

INSERT INTO [dbo].[Library] ([Name], NumberOfMembers, [Address])
VALUES (N'دانشگاه', 0, N'خیابان دانشگاه')

GO

INSERT INTO [dbo].[Library] ([Name], NumberOfMembers, [Address])
VALUES (N'مرکزی', 0, N'بلوار استانداری')

GO

-- Books

INSERT INTO [dbo].Book ([Name], Writer, ISBN, Publisher, Translator)
VALUES (N'استاد عشق', N'دکتر حسابی', N'', N'انتشارات گوزن', N'')

GO

INSERT INTO [dbo].Book ([Name], Writer, ISBN, Publisher, Translator)
VALUES (N'اشوزدنگهه 1', N'آرمان آرین', N'', N'انتشارات بنفش', N'')

GO

INSERT INTO [dbo].Book ([Name], Writer, ISBN, Publisher, Translator)
VALUES (N'اشوزدنگهه 2', N'آرمان آرین', N'', N'انتشارات بنفش', N'')

GO

INSERT INTO [dbo].Book ([Name], Writer, ISBN, Publisher, Translator)
VALUES (N'اشوزدنگهه 3', N'آرمان آرین', N'', N'انتشارات بنفش', N'')

GO

INSERT INTO [dbo].Book ([Name], Writer, ISBN, Publisher, Translator)
VALUES (N'اشوزدنگهه 4 (دستنوشته های اشوزدنگهه)', N'آرمان آرین', N'', N'انتشارات بنفش', N'')

GO

INSERT INTO [dbo].Book ([Name], Writer, ISBN, Publisher, Translator)
VALUES (N'پارسیان و من 1', N'آرمان آرین', N'', N'انتشارات مشعل', N'')

GO

INSERT INTO [dbo].Book ([Name], Writer, ISBN, Publisher, Translator)
VALUES (N'پارسیان و من 2', N'آرمان آرین', N'', N'انتشارات مشعل', N'')

GO

INSERT INTO [dbo].Book ([Name], Writer, ISBN, Publisher, Translator)
VALUES (N'پارسیان و من 3', N'آرمان آرین', N'', N'انتشارات مشعل', N'')

GO

INSERT INTO [dbo].Book ([Name], Writer, ISBN, Publisher, Translator)
VALUES (N'مسخ', N'فرانتس کافکا', N'', N'انتشارات مشعل', N'صادق هدایت')

GO

-- Members

INSERT INTO [dbo].Member (FirstName, LastName, TelephoneNumber)
VALUES ('Arsalan', 'Tavakoli', '09995443005');

GO

INSERT INTO [dbo].Member (FirstName, LastName, TelephoneNumber)
VALUES ('Shahram', 'Mohammadi', '09695743016');

GO

INSERT INTO [dbo].Member (FirstName, LastName, TelephoneNumber)
VALUES ('Parmiss', 'Zare', '09499664557');

GO


INSERT INTO [dbo].Member (FirstName, LastName, TelephoneNumber)
VALUES ('Samin', 'Sameti', '09341644659');

GO


INSERT INTO [dbo].Member (FirstName, LastName, TelephoneNumber)
VALUES ('Jamshid', 'Mokhtari', '09341612850');

GO

-- Memberships

DECLARE @LIBRARYID TABLE(LibraryId INT);
DECLARE @MEMBERS TABLE(MemberId INT);

DECLARE @LID INT
DECLARE @MID INT

INSERT INTO @LIBRARYID SELECT LibraryId FROM [dbo].[Library]
INSERT INTO @MEMBERS SELECT MemberId FROM [dbo].Member

SELECT TOP(1) @LID = LibraryId From @LIBRARYID ORDER BY NEWID()
DELETE @LIBRARYID WHERE LibraryId = @LID
SELECT TOP(1) @MID = MemberId From @MEMBERS ORDER BY NEWID()

INSERT INTO [dbo].Membership (LibraryId, MemberId, RegDate, ExpDate)
VALUES (@LID, @MID, GETDATE(), DATEADD(MONTH, 12, GETDATE()))

SELECT TOP(1) @MID = MemberId From @MEMBERS ORDER BY NEWID()

INSERT INTO [dbo].Membership (LibraryId, MemberId, RegDate, ExpDate)
VALUES (@LID, @MID, GETDATE(), DATEADD(MONTH, 12, GETDATE()))

SELECT TOP(1) @MID = MemberId From @MEMBERS ORDER BY NEWID()

INSERT INTO [dbo].Membership (LibraryId, MemberId, RegDate, ExpDate)
VALUES (@LID, @MID, GETDATE(), DATEADD(MONTH, 12, GETDATE()))


SELECT TOP(1) @LID = LibraryId From @LIBRARYID ORDER BY NEWID()
DELETE @LIBRARYID WHERE LibraryId = @LID
SELECT TOP(1) @MID = MemberId From @MEMBERS ORDER BY NEWID()

INSERT INTO [dbo].Membership (LibraryId, MemberId, RegDate, ExpDate)
VALUES (@LID, @MID, GETDATE(), DATEADD(MONTH, 12, GETDATE()))

SELECT TOP(1) @MID = MemberId From @MEMBERS ORDER BY NEWID()

INSERT INTO [dbo].Membership (LibraryId, MemberId, RegDate, ExpDate)
VALUES (@LID, @MID, GETDATE(), DATEADD(MONTH, 12, GETDATE()))

SELECT TOP(1) @MID = MemberId From @MEMBERS ORDER BY NEWID()

INSERT INTO [dbo].Membership (LibraryId, MemberId, RegDate, ExpDate)
VALUES (@LID, @MID, GETDATE(), DATEADD(MONTH, 12, GETDATE()))


SELECT TOP(1) @LID = LibraryId From @LIBRARYID ORDER BY NEWID()
DELETE @LIBRARYID WHERE LibraryId = @LID
SELECT TOP(1) @MID = MemberId From @MEMBERS ORDER BY NEWID()

INSERT INTO [dbo].Membership (LibraryId, MemberId, RegDate, ExpDate)
VALUES (@LID, @MID, GETDATE(), DATEADD(MONTH, 12, GETDATE()))

SELECT TOP(1) @MID = MemberId From @MEMBERS ORDER BY NEWID()

INSERT INTO [dbo].Membership (LibraryId, MemberId, RegDate, ExpDate)
VALUES (@LID, @MID, GETDATE(), DATEADD(MONTH, 12, GETDATE()))

SELECT TOP(1) @MID = MemberId From @MEMBERS ORDER BY NEWID()

INSERT INTO [dbo].Membership (LibraryId, MemberId, RegDate, ExpDate)
VALUES (@LID, @MID, GETDATE(), DATEADD(MONTH, 12, GETDATE()))

GO

DECLARE @LIBRARY TABLE(LibraryId INT);
DECLARE @BOOK TABLE(BookId INT);

DECLARE @LID INT
DECLARE @BID INT

INSERT INTO @LIBRARY SELECT LibraryId FROM [dbo].[Library]
INSERT INTO @BOOK SELECT BookId FROM [dbo].Book

SELECT TOP(1) @LID = LibraryId From @LIBRARY ORDER BY NEWID()
DELETE @LIBRARY WHERE LibraryId = @LID
SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()

INSERT INTO [dbo].Exist (BookId, LibraryId, Number)
VALUES(@BID, @LID, 20)

SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()

INSERT INTO [dbo].Exist (BookId, LibraryId, Number)
VALUES(@BID, @LID, 25)

SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()

INSERT INTO [dbo].Exist (BookId, LibraryId, Number)
VALUES(@BID, @LID, 20)

SELECT TOP(1) @LID = LibraryId From @LIBRARY ORDER BY NEWID()
DELETE @LIBRARY WHERE LibraryId = @LID
SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()

INSERT INTO [dbo].Exist (BookId, LibraryId, Number)
VALUES(@BID, @LID, 10)

SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()

INSERT INTO [dbo].Exist (BookId, LibraryId, Number)
VALUES(@BID, @LID, 15)

SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()

INSERT INTO [dbo].Exist (BookId, LibraryId, Number)
VALUES(@BID, @LID, 15)

SELECT TOP(1) @LID = LibraryId From @LIBRARY ORDER BY NEWID()
DELETE @LIBRARY WHERE LibraryId = @LID
SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()

INSERT INTO [dbo].Exist (BookId, LibraryId, Number)
VALUES(@BID, @LID, 30)

SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()

INSERT INTO [dbo].Exist (BookId, LibraryId, Number)
VALUES(@BID, @LID, 20)

SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()

INSERT INTO [dbo].Exist (BookId, LibraryId, Number)
VALUES(@BID, @LID, 20)

SELECT TOP(1) @LID = LibraryId From @LIBRARY ORDER BY NEWID()
DELETE @LIBRARY WHERE LibraryId = @LID
SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()

INSERT INTO [dbo].Exist (BookId, LibraryId, Number)
VALUES(@BID, @LID, 20)

SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()

INSERT INTO [dbo].Exist (BookId, LibraryId, Number)
VALUES(@BID, @LID, 25)

SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()

INSERT INTO [dbo].Exist (BookId, LibraryId, Number)
VALUES(@BID, @LID, 20)

SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()

GO

DECLARE @LIBRARY TABLE(LibraryId INT);
DECLARE @BOOK TABLE(BookId INT);
DECLARE @MEMBER TABLE(MemberId INT);

DECLARE @LID INT
DECLARE @BID INT
DECLARE @MID INT

INSERT INTO @LIBRARY SELECT LibraryId FROM [dbo].[Library]

SELECT TOP(1) @LID = LibraryId From @LIBRARY ORDER BY NEWID()
DELETE @LIBRARY WHERE LibraryId = @LID

INSERT INTO @BOOK SELECT B.BookId FROM [dbo].Book AS B
	INNER JOIN [dbo].Exist AS E
	ON E.BookId = B.BookId
SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()

INSERT INTO @MEMBER SELECT M.MemberId FROM [dbo].[Library] AS L
	INNER JOIN [dbo].Membership AS M
	ON M.LibraryId = L.LibraryId
	WHERE L.LibraryId = @LID
SELECT TOP(1) @MID = MemberId From @MEMBER ORDER BY NEWID()

INSERT INTO [dbo].Borrow(LibraryId, BookId, MemberId)
VALUES (@LID, @BID, @MID)

SELECT TOP(1) @MID = MemberId From @MEMBER ORDER BY NEWID()

INSERT INTO [dbo].Borrow(LibraryId, BookId, MemberId)
VALUES (@LID, @BID, @MID)

SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()
SELECT TOP(1) @MID = MemberId From @MEMBER ORDER BY NEWID()

INSERT INTO [dbo].Borrow(LibraryId, BookId, MemberId)
VALUES (@LID, @BID, @MID)

SELECT TOP(1) @MID = MemberId From @MEMBER ORDER BY NEWID()

INSERT INTO [dbo].Borrow(LibraryId, BookId, MemberId)
VALUES (@LID, @BID, @MID)

SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()
SELECT TOP(1) @MID = MemberId From @MEMBER ORDER BY NEWID()

INSERT INTO [dbo].Borrow(LibraryId, BookId, MemberId)
VALUES (@LID, @BID, @MID)

SELECT TOP(1) @LID = LibraryId From @LIBRARY ORDER BY NEWID()
DELETE @LIBRARY WHERE LibraryId = @LID

INSERT INTO @BOOK SELECT B.BookId FROM [dbo].Book AS B
	INNER JOIN [dbo].Exist AS E
	ON E.BookId = B.BookId
SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()

INSERT INTO @MEMBER SELECT M.MemberId FROM [dbo].[Library] AS L
	INNER JOIN [dbo].Membership AS M
	ON M.LibraryId = L.LibraryId
	WHERE L.LibraryId = @LID
SELECT TOP(1) @MID = MemberId From @MEMBER ORDER BY NEWID()

INSERT INTO [dbo].Borrow(LibraryId, BookId, MemberId)
VALUES (@LID, @BID, @MID)

SELECT TOP(1) @MID = MemberId From @MEMBER ORDER BY NEWID()

INSERT INTO [dbo].Borrow(LibraryId, BookId, MemberId)
VALUES (@LID, @BID, @MID)

SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()
SELECT TOP(1) @MID = MemberId From @MEMBER ORDER BY NEWID()

INSERT INTO [dbo].Borrow(LibraryId, BookId, MemberId)
VALUES (@LID, @BID, @MID)

SELECT TOP(1) @MID = MemberId From @MEMBER ORDER BY NEWID()

INSERT INTO [dbo].Borrow(LibraryId, BookId, MemberId)
VALUES (@LID, @BID, @MID)

SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()
SELECT TOP(1) @MID = MemberId From @MEMBER ORDER BY NEWID()

INSERT INTO [dbo].Borrow(LibraryId, BookId, MemberId)
VALUES (@LID, @BID, @MID)

SELECT TOP(1) @MID = MemberId From @MEMBER ORDER BY NEWID()

INSERT INTO [dbo].Borrow(LibraryId, BookId, MemberId)
VALUES (@LID, @BID, @MID)

SELECT TOP(1) @LID = LibraryId From @LIBRARY ORDER BY NEWID()
DELETE @LIBRARY WHERE LibraryId = @LID

INSERT INTO @BOOK SELECT B.BookId FROM [dbo].Book AS B
	INNER JOIN [dbo].Exist AS E
	ON E.BookId = B.BookId
SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()

INSERT INTO @MEMBER SELECT M.MemberId FROM [dbo].[Library] AS L
	INNER JOIN [dbo].Membership AS M
	ON M.LibraryId = L.LibraryId
	WHERE L.LibraryId = @LID
SELECT TOP(1) @MID = MemberId From @MEMBER ORDER BY NEWID()

INSERT INTO [dbo].Borrow(LibraryId, BookId, MemberId)
VALUES (@LID, @BID, @MID)

SELECT TOP(1) @MID = MemberId From @MEMBER ORDER BY NEWID()

INSERT INTO [dbo].Borrow(LibraryId, BookId, MemberId)
VALUES (@LID, @BID, @MID)

SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()
SELECT TOP(1) @MID = MemberId From @MEMBER ORDER BY NEWID()

INSERT INTO [dbo].Borrow(LibraryId, BookId, MemberId)
VALUES (@LID, @BID, @MID)

SELECT TOP(1) @LID = LibraryId From @LIBRARY ORDER BY NEWID()
DELETE @LIBRARY WHERE LibraryId = @LID

INSERT INTO @BOOK SELECT B.BookId FROM [dbo].Book AS B
	INNER JOIN [dbo].Exist AS E
	ON E.BookId = B.BookId
SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()

INSERT INTO @MEMBER SELECT M.MemberId FROM [dbo].[Library] AS L
	INNER JOIN [dbo].Membership AS M
	ON M.LibraryId = L.LibraryId
	WHERE L.LibraryId = @LID
SELECT TOP(1) @MID = MemberId From @MEMBER ORDER BY NEWID()

INSERT INTO [dbo].Borrow(LibraryId, BookId, MemberId)
VALUES (@LID, @BID, @MID)

SELECT TOP(1) @MID = MemberId From @MEMBER ORDER BY NEWID()

INSERT INTO [dbo].Borrow(LibraryId, BookId, MemberId)
VALUES (@LID, @BID, @MID)

SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()
SELECT TOP(1) @MID = MemberId From @MEMBER ORDER BY NEWID()

INSERT INTO [dbo].Borrow(LibraryId, BookId, MemberId)
VALUES (@LID, @BID, @MID)

SELECT TOP(1) @MID = MemberId From @MEMBER ORDER BY NEWID()

INSERT INTO [dbo].Borrow(LibraryId, BookId, MemberId)
VALUES (@LID, @BID, @MID)

SELECT TOP(1) @BID = BookId From @BOOK ORDER BY NEWID()
SELECT TOP(1) @MID = MemberId From @MEMBER ORDER BY NEWID()

INSERT INTO [dbo].Borrow(LibraryId, BookId, MemberId)
VALUES (@LID, @BID, @MID)

GO
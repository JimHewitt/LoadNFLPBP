-- Change path to where file is stored
BULK INSERT [PBPRaw] 
	FROM 'C:\temp\play_by_play_2025.csv'
WITH
(
	FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
	ERRORFILE = 'C:\temp\ErrorRows.csv',
    ROWTERMINATOR = '0x0a'--'\r\n'
);



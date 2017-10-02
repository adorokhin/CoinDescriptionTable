--select char(0xC6)

	DECLARE @country varchar(200) = 'Alaska \\ Sitka',
			@id VARCHAR(20) = '1543',
			@CountryName	VARCHAR(200),
			@RegionName		VARCHAR(200),
			@i				INTEGER = 0;

	SET @i = CHARINDEX('\\', @country);
	IF(@i > 0)
	BEGIN
			SET @CountryName = LTRIM(RTRIM(SUBSTRING(@country, 0, @i)));
			SET @RegionName = LTRIM(RTRIM(SUBSTRING(@country, @i+2, LEN(@country)-(@i+1))));
	END

	PRINT '@Country = [' + isnull(@Country, 'null') + ']';
	PRINT '@ID = [' + isnull(@ID, 'null') + ']';
	PRINT '@CountryName = [' + isnull(@CountryName, 'null') + ']';
	PRINT '@RegionName = [' + isnull(@RegionName, 'null') + ']';


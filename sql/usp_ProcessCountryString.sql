select char(0xC6)

CREATE PROCEDURE usp_ProcessCountryString (@country VARCHAR(200), @id VARCHAR(20) )
AS
BEGIN
	DECLARE @CountryName	VARCHAR(200),
			@RegionName		VARCHAR(200),
			@i				INTEGER = 0;
	
	BEGIN TRY
	BEGIN TRAN

	SET @i = CHARINDEX('\\', @country);
	IF(@i > 0)
	BEGIN
			SET @CountryName = LTRIM(RTRIM(SUBSTRING(@country, 0, @i)));
			SET @RegionName = LTRIM(RTRIM(SUBSTRING(@country, @i+2, LEN(@country)-(@i+2))));

			INSERT INTO [dbo].[Region]
				([RegionName],[NumismasterID],[CreatedDate],[ModifiedDate])
			VALUES
				(@RegionName,
				(SELECT CountryName FROM Country WHERE CountryName = CountryName),
				GETDATE(),
				NULL)
	END
	ELSE
	BEGIN
		INSERT INTO [dbo].[Country]
           ([CountryName], [NumismasterID],	[CreatedDate],[ModifiedDate])
		VALUES(
			LTRIM(RTRIM(@country)),
			@ID,
			GETDATE(),
            NULL);
	END
	COMMIT
	END TRY
	BEGIN CATCH
		PRINT @country + ' ' + @id;
		ROLLBACK
	END CATCH
END
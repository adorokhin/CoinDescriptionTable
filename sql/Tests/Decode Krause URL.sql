http://secure.numismaster.com/ta/Coins.admin?rnd=JPEHWTFL&@impl=coins.ui.ucatalog.flat.coin.UiControl_FindResults&@prms=536561726368547970653d31&@windowId=QLMAV&Origin=3&AdvanceSearch=0&PRefine=&Country=German%20States%20%5C%20Aachen&Denom=%20&CountryId=470&DenomId=-1&KM=&Comp=&Date=

select char(0x4b) 
+ char(0x72) 
+ char(0x61) 
+ char(0x75) 
+ char(0x73) 
+ char(0x65) 
+ char(0x43) 
+ char(0x6f) 
+ char(0x69) 
+ char(0x6e) 
+ char(0x49) 
+ char(0x64) 
+ char(0x3d) 
+ char(0x31) 
+ char(0x35) 
+ char(0x32) 
+ char(0x36) 
+ char(0x37) 
+ char(0x26) 
+ char(0x53) 
+ char(0x65) 
+ char(0x61) 
+ char(0x72) 
+ char(0x63) 
+ char(0x68) 
+ char(0x49) 
+ char(0x64) 
+ char(0x3d) 
+ char(0x34) 
+ char(0x37) 
+ char(0x32) 
+ char(0x36) 
+ char(0x37) 
+ char(0x35) 
+ char(0x32)

declare @prms varchar(200) = '536561726368547970653d31'

declare @s varchar(200) = @prms, --'4b7261757365436f696e49643d34363736392653656172636849643d34373236383739',
		@q nvarchar(200) = N'',
		@c nchar(1),
		@i int=1,
		@s2c varchar(2);
while(@i < len(@s))
begin
	set @s2c = substring(@s, @i, 2)
	set @q = @q + TRY_CONVERT(varchar(max),CONVERT(varbinary(MAX), '0x'+@s2c, 1));
	set @i+=2;
end
print @q;

print TRY_CONVERT(varbinary(MAX), '0x4b', 2)
print TRY_CONVERT(varchar(max),CONVERT(varbinary(MAX), '0x4b', 1));


DECLARE @Hexdata varchar(200) = '0x4b'

IF TRY_CONVERT(varbinary(MAX), @Hexdata, 2) IS NOT NULL
    SELECT TRY_CONVERT(varchar(max),CONVERT(varbinary(MAX), @Hexdata, 2));
ELSE IF TRY_CONVERT(varbinary(MAX), @Hexdata, 1) IS NOT NULL
    SELECT TRY_CONVERT(varchar(max),CONVERT(varbinary(MAX), @Hexdata, 1));
ELSE
    SELECT 'No chance';

SET @Hexdata = '68656c6c6f';

IF TRY_CONVERT(varbinary(MAX), @Hexdata, 2) IS NOT NULL
    SELECT TRY_CONVERT(varchar(max),CONVERT(varbinary(MAX), @Hexdata, 2));
ELSE IF TRY_CONVERT(varbinary(MAX), @Hexdata, 1) IS NOT NULL
    SELECT TRY_CONVERT(varchar(max),CONVERT(varbinary(MAX), @Hexdata, 1));
ELSE
    SELECT 'No chance';


4b7261757365436f696e49643d34363736392653656172636849643d34373236383739
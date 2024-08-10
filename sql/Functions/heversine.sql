CREATE FUNCTION haversine (@LATITUDE_1 decimal(20,3), @LONGITUDE_1 decimal(20,3), @LATITUDE_2 decimal(20,3), @LONGITUDE_2 decimal(20,3))
	RETURNS decimal(20,10) AS
	BEGIN

		 IF (@LATITUDE_1 IS NULL OR @LONGITUDE_1 IS NULL OR @LATITUDE_2 IS NULL OR @LONGITUDE_2 IS NULL)
		BEGIN
			RETURN NULL;
		END
		
		DECLARE @a decimal(20,10);
		DECLARE @c decimal(20,10);
		DECLARE @distance decimal(20,10);
		DECLARE @raio int = 6371;
		DECLARE @phi1 decimal(20,10) = radians(@LATITUDE_1);
		DECLARE @phi2 decimal(20,10) = radians(@LATITUDE_2);
		DECLARE @delta_phi decimal(20,10) = radians(@LATITUDE_2 - @LATITUDE_1);
		DECLARE @delta_lamda decimal(20,10) = radians(@LONGITUDE_2 - @LONGITUDE_1)

		SET @a = power(sin(@delta_phi / 2), 2) + cos(@phi1) * cos(@phi2) * power(sin(@delta_lamda / 2), 2);
		SET @c = 2 * atn2(sqrt(@a), sqrt(1 - @a));
		SET @distance = @raio * @c;

		RETURN @distance;
	END

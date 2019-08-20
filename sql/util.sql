
CREATE OR REPLACE FUNCTION f_get_values (VARCHAR, VARCHAR)
  returns VARCHAR
STABLE
AS $$
  SELECT CASE WHEN STRPOS($2,'1')<1 AND LEN(REPLACE($2,',',''))=8 THEN '1'
			  WHEN STRPOS($2,'2')<1 AND LEN(REPLACE($2,',',''))=8 THEN '2'
			  WHEN STRPOS($2,'3')<1 AND LEN(REPLACE($2,',',''))=8 THEN '3'
			  WHEN STRPOS($2,'4')<1 AND LEN(REPLACE($2,',',''))=8 THEN '4'
			  WHEN STRPOS($2,'5')<1 AND LEN(REPLACE($2,',',''))=8 THEN '5'
			  WHEN STRPOS($2,'6')<1 AND LEN(REPLACE($2,',',''))=8 THEN '6'
			  WHEN STRPOS($2,'7')<1 AND LEN(REPLACE($2,',',''))=8 THEN '7'
			  WHEN STRPOS($2,'8')<1 AND LEN(REPLACE($2,',',''))=8 THEN '8'
			  WHEN STRPOS($2,'9')<1 AND LEN(REPLACE($2,',',''))=8 THEN '9'			  
			  ELSE $1
		END
$$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION f_check_values (VARCHAR, VARCHAR)
  returns VARCHAR
STABLE
AS $$
  SELECT CASE WHEN STRPOS($2,$1)<1 AND LEN(REPLACE($2,',',''))>0 THEN $1		  
			  ELSE ''
		END
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION f_missing_values (VARCHAR, VARCHAR)
  returns VARCHAR
STABLE
AS $$
  SELECT CASE WHEN LEN($1)=0 THEN 
			  f_check_values('1',$2)||
			  f_check_values('2',$2)||
			  f_check_values('3',$2)||
			  f_check_values('4',$2)||
			  f_check_values('5',$2)||
			  f_check_values('6',$2)||
			  f_check_values('7',$2)||
			  f_check_values('8',$2)||
			  f_check_values('9',$2)
			ELSE $1
		END
$$ LANGUAGE SQL;
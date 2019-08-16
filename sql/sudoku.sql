
CREATE FUNCTION f_get_values (VARCHAR, VARCHAR)
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

---------------------------------------------
DROP TABLE IF EXISTS ssb.game_peers CASCADE;

CREATE TABLE  ssb.game_peers
AS SELECT 
	DISTINCT A.id,
	B.* 
FROM ssb.games A, ssb.peers B;

-----------------------INTERATION 1----------------------
DROP TABLE IF EXISTS ssb.game_interation_1 CASCADE;

CREATE TABLE  ssb.game_interation_1
AS SELECT 
	A.*,
	NVL(B.max_counter,0) AS max_counter  
FROM ssb.games A  LEFT JOIN 
(
	SELECT 
		id, 
		MAX(counter) AS max_counter
	FROM  ssb.games 
	GROUP BY id
)B ON (A.id=B.id);

-----------------------------------
DROP TABLE IF EXISTS ssb.t_games_1  CASCADE;

CREATE TABLE ssb.t_games_1 
AS  SELECT 
	F.id,
	F.cell,
	F.values,
	CASE WHEN LEN(F.values_0)=0 AND LEN(F.values)!=0 THEN F.max_counter+1
		ELSE F.counter 
	END AS counter,
	F.peer_list
FROM
(
	SELECT 
		D.id,
		D.cell,
		E.counter,
		E.values AS values_0, 
		f_get_values( E.values,D.peer_list) AS values,
		E.max_counter,
		D.peer_list
	FROM
	(
		SELECT 
			C.id,
			C.cell,
			listagg(DISTINCT (C.peer_values),',') 
			within GROUP (ORDER BY C.peer_values) AS peer_list
		FROM
		(
			SELECT 
				A.*,
				B.values AS peer_values 
			FROM ssb.game_peers A LEFT JOIN ssb.game_interation_1 B ON 
			(
				A.peer_cell=B.cell AND A.id=B.id
			) 
		)C GROUP BY C.id,C.cell
		ORDER BY C.id,C.cell
	)D INNER JOIN ssb.game_interation_1 E ON (
		D.cell=E.cell AND 
		D.id=E.id
	)
)F;

--------------------INTERATION 2-----------------------------------

DROP TABLE IF EXISTS ssb.game_interation_2 CASCADE;

CREATE TABLE  ssb.game_interation_2
AS SELECT 
	A.*,
	NVL(B.max_counter,0) AS max_counter  
FROM ssb.t_games_1 A  LEFT JOIN 
(
	SELECT 
		id, 
		MAX(counter) AS max_counter
	FROM  ssb.t_games_1 
	GROUP BY id
)B ON (A.id=B.id);

-----------------------------------
DROP TABLE IF EXISTS ssb.t_games_2  CASCADE;

CREATE TABLE ssb.t_games_2 
AS  SELECT 
	F.id,
	F.cell,
	F.values,
	CASE WHEN LEN(F.values_0)=0 AND LEN(F.values)!=0 THEN F.max_counter+1
		ELSE F.counter 
	END AS counter,
	F.peer_list
FROM
(
	SELECT 
		D.id,
		D.cell,
		E.counter,
		E.values AS values_0, 
		f_get_values( E.values,D.peer_list) AS values,
		E.max_counter,
		D.peer_list
	FROM
	(
		SELECT 
			C.id,
			C.cell,
			listagg(DISTINCT (C.peer_values),',') 
			within GROUP (ORDER BY C.peer_values) AS peer_list
		FROM
		(
			SELECT 
				A.*,
				B.values AS peer_values 
			FROM ssb.game_peers A LEFT JOIN ssb.game_interation_2 B ON 
			(
				A.peer_cell=B.cell AND A.id=B.id
			) 
		)C GROUP BY C.id,C.cell
		ORDER BY C.id,C.cell
	)D INNER JOIN ssb.game_interation_2 E ON (
		D.cell=E.cell AND 
		D.id=E.id
	)
)F;

--------------------INTERATION 3-----------------------------------

DROP TABLE IF EXISTS ssb.game_interation_3 CASCADE;

CREATE TABLE  ssb.game_interation_3
AS SELECT 
	A.*,
	NVL(B.max_counter,0) AS max_counter  
FROM ssb.t_games_2 A  LEFT JOIN 
(
	SELECT 
		id, 
		MAX(counter) AS max_counter
	FROM  ssb.t_games_2 
	GROUP BY id
)B ON (A.id=B.id);

-----------------------------------
DROP TABLE IF EXISTS ssb.t_games_3  CASCADE;

CREATE TABLE ssb.t_games_3 
AS  SELECT 
	F.id,
	F.cell,
	F.values,
	CASE WHEN LEN(F.values_0)=0 AND LEN(F.values)!=0 THEN F.max_counter+1
		ELSE F.counter 
	END AS counter,
	F.peer_list
FROM
(
	SELECT 
		D.id,
		D.cell,
		E.counter,
		E.values AS values_0, 
		f_get_values( E.values,D.peer_list) AS values,
		E.max_counter,
		D.peer_list
	FROM
	(
		SELECT 
			C.id,
			C.cell,
			listagg(DISTINCT (C.peer_values),',') 
			within GROUP (ORDER BY C.peer_values) AS peer_list
		FROM
		(
			SELECT 
				A.*,
				B.values AS peer_values 
			FROM ssb.game_peers A LEFT JOIN ssb.game_interation_3 B ON 
			(
				A.peer_cell=B.cell AND A.id=B.id
			) 
		)C GROUP BY C.id,C.cell
		ORDER BY C.id,C.cell
	)D INNER JOIN ssb.game_interation_3 E ON (
		D.cell=E.cell AND 
		D.id=E.id
	)
)F;

--------------------INTERATION 4-----------------------------------

DROP TABLE IF EXISTS ssb.game_interation_4 CASCADE;

CREATE TABLE  ssb.game_interation_4
AS SELECT 
	A.*,
	NVL(B.max_counter,0) AS max_counter  
FROM ssb.t_games_3 A  LEFT JOIN 
(
	SELECT 
		id, 
		MAX(counter) AS max_counter
	FROM  ssb.t_games_3 
	GROUP BY id
)B ON (A.id=B.id);

-----------------------------------
DROP TABLE IF EXISTS ssb.t_games_4  CASCADE;

CREATE TABLE ssb.t_games_4 
AS  SELECT 
	F.id,
	F.cell,
	F.values,
	CASE WHEN LEN(F.values_0)=0 AND LEN(F.values)!=0 THEN F.max_counter+1
		ELSE F.counter 
	END AS counter,
	F.peer_list
FROM
(
	SELECT 
		D.id,
		D.cell,
		E.counter,
		E.values AS values_0, 
		f_get_values( E.values,D.peer_list) AS values,
		E.max_counter,
		D.peer_list
	FROM
	(
		SELECT 
			C.id,
			C.cell,
			listagg(DISTINCT (C.peer_values),',') 
			within GROUP (ORDER BY C.peer_values) AS peer_list
		FROM
		(
			SELECT 
				A.*,
				B.values AS peer_values 
			FROM ssb.game_peers A LEFT JOIN ssb.game_interation_4 B ON 
			(
				A.peer_cell=B.cell AND A.id=B.id
			) 
		)C GROUP BY C.id,C.cell
		ORDER BY C.id,C.cell
	)D INNER JOIN ssb.game_interation_4 E ON (
		D.cell=E.cell AND 
		D.id=E.id
	)
)F;
--------------------INTERATION 5-----------------------------------

DROP TABLE IF EXISTS ssb.game_interation_5 CASCADE;

CREATE TABLE  ssb.game_interation_5
AS SELECT 
	A.*,
	NVL(B.max_counter,0) AS max_counter  
FROM ssb.t_games_4 A  LEFT JOIN 
(
	SELECT 
		id, 
		MAX(counter) AS max_counter
	FROM  ssb.t_games_4 
	GROUP BY id
)B ON (A.id=B.id);

-----------------------------------
DROP TABLE IF EXISTS ssb.t_games_5  CASCADE;

CREATE TABLE ssb.t_games_5 
AS  SELECT 
	F.id,
	F.cell,
	F.values,
	CASE WHEN LEN(F.values_0)=0 AND LEN(F.values)!=0 THEN F.max_counter+1
		ELSE F.counter 
	END AS counter,
	F.peer_list
FROM
(
	SELECT 
		D.id,
		D.cell,
		E.counter,
		E.values AS values_0, 
		f_get_values( E.values,D.peer_list) AS values,
		E.max_counter,
		D.peer_list
	FROM
	(
		SELECT 
			C.id,
			C.cell,
			listagg(DISTINCT (C.peer_values),',') 
			within GROUP (ORDER BY C.peer_values) AS peer_list
		FROM
		(
			SELECT 
				A.*,
				B.values AS peer_values 
			FROM ssb.game_peers A LEFT JOIN ssb.game_interation_5 B ON 
			(
				A.peer_cell=B.cell AND A.id=B.id
			) 
		)C GROUP BY C.id,C.cell
		ORDER BY C.id,C.cell
	)D INNER JOIN ssb.game_interation_5 E ON (
		D.cell=E.cell AND 
		D.id=E.id
	)
)F;

--------------------INTERATION 6-----------------------------------

DROP TABLE IF EXISTS ssb.game_interation_6 CASCADE;

CREATE TABLE  ssb.game_interation_6
AS SELECT 
	A.*,
	NVL(B.max_counter,0) AS max_counter  
FROM ssb.t_games_5 A  LEFT JOIN 
(
	SELECT 
		id, 
		MAX(counter) AS max_counter
	FROM  ssb.t_games_5 
	GROUP BY id
)B ON (A.id=B.id);

-----------------------------------
DROP TABLE IF EXISTS ssb.t_games_6  CASCADE;

CREATE TABLE ssb.t_games_6 
AS  SELECT 
	F.id,
	F.cell,
	F.values,
	CASE WHEN LEN(F.values_0)=0 AND LEN(F.values)!=0 THEN F.max_counter+1
		ELSE F.counter 
	END AS counter,
	F.peer_list
FROM
(
	SELECT 
		D.id,
		D.cell,
		E.counter,
		E.values AS values_0, 
		f_get_values( E.values,D.peer_list) AS values,
		E.max_counter,
		D.peer_list
	FROM
	(
		SELECT 
			C.id,
			C.cell,
			listagg(DISTINCT (C.peer_values),',') 
			within GROUP (ORDER BY C.peer_values) AS peer_list
		FROM
		(
			SELECT 
				A.*,
				B.values AS peer_values 
			FROM ssb.game_peers A LEFT JOIN ssb.game_interation_6 B ON 
			(
				A.peer_cell=B.cell AND A.id=B.id
			) 
		)C GROUP BY C.id,C.cell
		ORDER BY C.id,C.cell
	)D INNER JOIN ssb.game_interation_6 E ON (
		D.cell=E.cell AND 
		D.id=E.id
	)
)F;
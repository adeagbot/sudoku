
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

DROP TABLE IF EXISTS ssb.t_games_0  CASCADE;
DROP TABLE IF EXISTS ssb.t_games_1  CASCADE;
DROP TABLE IF EXISTS ssb.t_games_2  CASCADE;
DROP TABLE IF EXISTS ssb.t_games_3  CASCADE;
DROP TABLE IF EXISTS ssb.t_games_4  CASCADE;
DROP TABLE IF EXISTS ssb.t_games_5  CASCADE;
DROP TABLE IF EXISTS ssb.t_games_6  CASCADE;
DROP TABLE IF EXISTS ssb.t_games_7  CASCADE;
DROP TABLE IF EXISTS ssb.t_games_8  CASCADE;
DROP TABLE IF EXISTS ssb.t_games_9  CASCADE;


DROP TABLE IF EXISTS ssb.game_peers CASCADE;

CREATE TABLE  ssb.game_peers
AS SELECT 
	DISTINCT A.id,
	B.* 
FROM ssb.games A, ssb.peers B;

---------------------------------------------
DROP TABLE IF EXISTS ssb.game_interation CASCADE;

CREATE TABLE  ssb.game_interation
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


SELECT 
	F.id,
	F.cell,
	F.values_0,
	F.values,
	CASE WHEN LEN(F.values_0)=0 AND LEN(F.values)!=0 THEN F.max_counter+1
		ELSE F.counter 
	END AS counter,
	F.max_counter,
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
			FROM ssb.game_peers A LEFT JOIN ssb.game_interation B ON 
			(
				A.peer_cell=B.cell AND A.id=B.id
			) 
		)C GROUP BY C.id,C.cell
		ORDER BY C.id,C.cell
	)D INNER JOIN ssb.game_interation E ON (
		D.cell=E.cell AND 
		D.id=E.id
	)
)F;

CREATE TABLE ssb.t_games_0 AS 
SELECT 
D.cell,
E.values AS values_0, 
f_get_values( E.values,D.peer_list) AS values,
D.peer_list
FROM
(
SELECT 
C.cell,
listagg(distinct (C.peer_values),',') 
within group (order by C.peer_values) AS peer_list
FROM 
(
SELECT 
A.*,
B.values AS peer_values 
FROM ssb.peers A 
LEFT JOIN ssb.games B ON (A.values=B.cell) 
)C
group by C.cell
ORDER BY C.cell
)D INNER JOIN ssb.games E ON (D.cell=E.cell)
;

CREATE TABLE ssb.t_games_1 AS 
SELECT 
D.cell,
E.values_0,
E.values AS values_1, 
f_get_values( E.values,D.peer_list) AS values,
D.peer_list
FROM
(
SELECT 
C.cell,
listagg(distinct (C.peer_values),',') 
within group (order by C.peer_values) AS peer_list
FROM 
(
SELECT 
A.*,B.values AS peer_values 
FROM ssb.peers A 
LEFT JOIN ssb.t_games_0 B ON (A.values=B.cell) 
)C
group by C.cell
ORDER BY C.cell
)D INNER JOIN ssb.t_games_0 E ON (D.cell=E.cell)
;

CREATE TABLE ssb.t_games_2 AS 
SELECT 
D.cell,
E.values_0,
E.values_1,
E.values AS values_2, 
f_get_values( E.values,D.peer_list) AS values,
D.peer_list
FROM
(
SELECT 
C.cell,
listagg(distinct (C.peer_values),',') 
within group (order by C.peer_values) AS peer_list
FROM 
(
SELECT 
A.*,B.values AS peer_values 
FROM ssb.peers A 
LEFT JOIN ssb.t_games_1 B ON (A.values=B.cell) 
)C
group by C.cell
ORDER BY C.cell
)D INNER JOIN ssb.t_games_1 E ON (D.cell=E.cell)
;

CREATE TABLE ssb.t_games_3 AS 
SELECT 
D.cell,
E.values_0,
E.values_1,
E.values_2,
E.values AS values_3, 
f_get_values( E.values,D.peer_list) AS values,
D.peer_list
FROM
(
SELECT 
C.cell,
listagg(distinct (C.peer_values),',') 
within group (order by C.peer_values) AS peer_list
FROM 
(
SELECT 
A.*,B.values AS peer_values 
FROM ssb.peers A 
LEFT JOIN ssb.t_games_2 B ON (A.values=B.cell) 
)C
group by C.cell
ORDER BY C.cell
)D INNER JOIN ssb.t_games_2 E ON (D.cell=E.cell)
;

CREATE TABLE ssb.t_games_4 AS 
SELECT 
D.cell,
E.values_0,
E.values_1,
E.values_2,
E.values_3,
E.values AS values_4, 
f_get_values( E.values,D.peer_list) AS values,
D.peer_list
FROM
(
SELECT 
C.cell,
listagg(distinct (C.peer_values),',') 
within group (order by C.peer_values) AS peer_list
FROM 
(
SELECT 
A.*,B.values AS peer_values 
FROM ssb.peers A 
LEFT JOIN ssb.t_games_3 B ON (A.values=B.cell) 
)C
group by C.cell
ORDER BY C.cell
)D INNER JOIN ssb.t_games_3 E ON (D.cell=E.cell)
;


CREATE TABLE ssb.t_games_5 AS 
SELECT 
D.cell,
E.values_0,
E.values_1,
E.values_2,
E.values_3,
E.values_4,
E.values AS values_5, 
f_get_values( E.values,D.peer_list) AS values,
D.peer_list
FROM
(
SELECT 
C.cell,
listagg(distinct (C.peer_values),',') 
within group (order by C.peer_values) AS peer_list
FROM 
(
SELECT 
A.*,B.values AS peer_values 
FROM ssb.peers A 
LEFT JOIN ssb.t_games_4 B ON (A.values=B.cell) 
)C
group by C.cell
ORDER BY C.cell
)D INNER JOIN ssb.t_games_4 E ON (D.cell=E.cell)
;

CREATE TABLE ssb.t_games_6 AS 
SELECT 
D.cell,
E.values_0,
E.values_1,
E.values_2,
E.values_3,
E.values_4,
E.values_5,
E.values AS values_6, 
f_get_values( E.values,D.peer_list) AS values,
D.peer_list
FROM
(
SELECT 
C.cell,
listagg(distinct (C.peer_values),',') 
within group (order by C.peer_values) AS peer_list
FROM 
(
SELECT 
A.*,B.values AS peer_values 
FROM ssb.peers A 
LEFT JOIN ssb.t_games_5 B ON (A.values=B.cell) 
)C
group by C.cell
ORDER BY C.cell
)D INNER JOIN ssb.t_games_5 E ON (D.cell=E.cell)
;
-------------------------------------------------------
CREATE TABLE ssb.t_games_7 AS 
SELECT 
D.cell,
E.values_0,
E.values_1,
E.values_2,
E.values_3,
E.values_4,
E.values_5,
E.values_6,
E.values AS values_7, 
f_get_values( E.values,D.peer_list) AS values,
D.peer_list
FROM
(
SELECT 
C.cell,
listagg(distinct (C.peer_values),',') 
within group (order by C.peer_values) AS peer_list
FROM 
(
SELECT 
A.*,B.values AS peer_values 
FROM ssb.peers A 
LEFT JOIN ssb.t_games_6 B ON (A.values=B.cell) 
)C
group by C.cell
ORDER BY C.cell
)D INNER JOIN ssb.t_games_6 E ON (D.cell=E.cell)
;

CREATE TABLE ssb.t_games_8 AS 
SELECT 
D.cell,
E.values_0,
E.values_1,
E.values_2,
E.values_3,
E.values_4,
E.values_5,
E.values_6,
E.values_7,
E.values AS values_8, 
f_get_values( E.values,D.peer_list) AS values,
D.peer_list
FROM
(
SELECT 
C.cell,
listagg(distinct (C.peer_values),',') 
within group (order by C.peer_values) AS peer_list
FROM 
(
SELECT 
A.*,B.values AS peer_values 
FROM ssb.peers A 
LEFT JOIN ssb.t_games_7 B ON (A.values=B.cell) 
)C
group by C.cell
ORDER BY C.cell
)D INNER JOIN ssb.t_games_7 E ON (D.cell=E.cell)
;

CREATE TABLE ssb.t_games_9 AS 
SELECT 
D.cell,
E.values_0,
E.values_1,
E.values_2,
E.values_3,
E.values_4,
E.values_5,
E.values_6,
E.values_7,
E.values_8,
E.values AS values_9, 
f_get_values( E.values,D.peer_list) AS values,
D.peer_list
FROM
(
SELECT 
C.cell,
listagg(distinct (C.peer_values),',') 
within group (order by C.peer_values) AS peer_list
FROM 
(
SELECT 
A.*,B.values AS peer_values 
FROM ssb.peers A 
LEFT JOIN ssb.t_games_8 B ON (A.values=B.cell) 
)C
group by C.cell
ORDER BY C.cell
)D INNER JOIN ssb.t_games_8 E ON (D.cell=E.cell)
;





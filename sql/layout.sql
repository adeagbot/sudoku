-----------------------------------
DROP TABLE IF EXISTS ssb.layout  CASCADE;

CREATE TABLE ssb.layout 
AS SELECT 
	A.id, 
	A.level,
	A.row,
	SPLIT_PART(SPLIT_PART(A.col,',',1),'-',2)   AS col_1,
	SPLIT_PART(SPLIT_PART(A.col,',',2),'-',2)	AS col_2,
	SPLIT_PART(SPLIT_PART(A.col,',',3),'-',2)	AS col_3,
	SPLIT_PART(SPLIT_PART(A.col,',',4),'-',2)	AS col_4,
	SPLIT_PART(SPLIT_PART(A.col,',',5),'-',2)	AS col_5,
	SPLIT_PART(SPLIT_PART(A.col,',',6),'-',2)	AS col_6,
	SPLIT_PART(SPLIT_PART(A.col,',',7),'-',2)	AS col_7,
	SPLIT_PART(SPLIT_PART(A.col,',',8),'-',2)	AS col_8,
	SPLIT_PART(SPLIT_PART(A.col,',',9),'-',2)	AS col_9
FROM
(
	SELECT 
		id,
		level,
		SUBSTRING(cell,1,1) AS row,
		listagg(DISTINCT (cell||'-'||f_missing_values(values,peer_list)),',') 
		within GROUP (ORDER BY cell) AS col 
	FROM ssb.t_games_6 
	GROUP BY id,level, SUBSTRING(cell,1,1)
)A;



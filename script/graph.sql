CREATE TABLE GRAPH(
   V1 INTEGER NOT NULL,
   V2 INTEGER NOT NULL,
   PRIMARY KEY(V1, V2)
);

/*

    1     4
   ／ \   / \
  ／   \ /   \
  2-－－3 --- 5
  
*/


INSERT INTO GRAPH (V1, V2) VALUES (1, 2), (2, 1), (2, 3), (3, 2), (1, 3), (3, 1), (3, 4), (4, 3), (3, 5), (5, 3), (4, 5), (5, 4);

/* 
	2 * 6 = 12
*/

select COUNT(*) from GRAPH as T1, GRAPH as T2, GRAPH as T3 where T1.V2 = T2.V1 and T2.V2 = T3.V1 and T3.V2 = T1.V1;
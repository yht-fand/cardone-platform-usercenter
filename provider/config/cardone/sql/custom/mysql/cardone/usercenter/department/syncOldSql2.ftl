INSERT INTO c1_department (
DEPARTMENT_ID,
DEPARTMENT_CODE,
NAME,
PARENT_CODE,
PARENT_TREE_CODE
)
(
SELECT
t.ID,
REPLACE(t.DEPT_CODE, 'root','') AS DEPT_CODE,
t.DEPT_NAME,
REPLACE(t.PARENT_DEPT_CODE, 'root','') AS PARENT_DEPT_CODE,
REPLACE(REPLACE(t.PARENT_CODE_LIST, 'root,',''),'root','') AS PARENT_CODE_LIST
FROM
t_department t
WHERE NOT EXISTS (
SELECT
1
FROM c1_department e
WHERE e.`DEPARTMENT_CODE` = t.`DEPT_CODE`  OR t.ID = e.DEPARTMENT_ID
) AND t.DEPT_CODE !='root'
)
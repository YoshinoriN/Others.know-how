--全テーブルのレコード数を取得する。

SELECT
  TABLE_NAME,
  TO_NUMBER(
	EXTRACTVALUE(
      XMLTYPE(
        DBMS_XMLGEN.GETXML('SELECT COUNT(*) C FROM '|| TABLE_NAME)),'/ROWSET/ROW/C')) COUNT
FROM USER_TABLES
ORDER BY TABLE_NAME
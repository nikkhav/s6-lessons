SET SESSION AUTOCOMMIT TO off;

DELETE FROM STV202510067.members WHERE age > 45;

SELECT node_name, projection_name, deleted_row_count FROM DELETE_VECTORS
	where projection_name like 'members%';

SELECT SUM(deleted_row_count) FROM DELETE_VECTORS
	where projection_name like 'members%';

ROLLBACK;
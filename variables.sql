

show variables like "%engine%";
show variables like "default_%_engine";
show variables like "%default%";
show variables like '%autocommit%';

# set variable at session level
set autocommit =0

show variables like 'sort%buffer%';
## value is remembered until server restarts
SET GLOBAL sort_buffer_size=1000000;
## value is remembered for current session only
set SESSION sort_buffer_size=1000000;


SELECT * FROM performance_schema.global_variables 
 WHERE VARIABLE_NAME IN ('log_bin','log_bin_basename','log_bin_index','log_slave_updates', 'server_id');

SELECT * FROM performance_schema.global_variables 
 WHERE VARIABLE_NAME IN ('log_bin','default_storage_engine');


show binary logs;
select variable_value as "BINARY LOGGING STATUS (log-bin) :: " ;

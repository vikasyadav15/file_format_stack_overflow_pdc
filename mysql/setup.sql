DROP TABLE HADOOP_FILE_FORMAT_LOAD_DETAILS;
CREATE TABLE HADOOP_FILE_FORMAT_LOAD_DETAILS
(
TABLENAME VARCHAR(20),
TABLECOUNT  BIGINT,
DATA_SIZE_IN_SOURCE_IN_GB DECIMAL( 10, 5 ) ,
DATA_SIZE_IN_SOURCE_IN_MB DECIMAL( 10, 5 ) ,
TEXT_FILE_SIZE_IN_GB DECIMAL( 10, 5 ) ,
TEXT_FILE_SIZE_IN_MB DECIMAL( 10, 5 ) ,
GZ_FILE_SIZE_IN_GB DECIMAL( 10, 5 ) ,
GZ_FILE_SIZE_IN_MB DECIMAL( 10, 5 ) ,
ORC_ZLIB_FILE_SIZE_IN_GB DECIMAL( 10, 5 ) ,
ORC_ZLIB_FILE_SIZE_IN_MB DECIMAL( 10, 5 ) ,
ORC_SNAPPY_FILE_SIZE_IN_GB DECIMAL( 10, 5 ) ,
ORC_SNAPPY_FILE_SIZE_IN_MB DECIMAL( 10, 5 ) ,
parquet_FILE_SIZE_IN_GB DECIMAL( 10, 5 ) ,
parquet_FILE_SIZE_IN_MB DECIMAL( 10, 5 ) ,
AVRO_FILE_SIZE_IN_GB DECIMAL( 10, 5 ) ,
AVRO_FILE_SIZE_IN_MB DECIMAL( 10, 5 ) ,
WRITE_TIME_TEXT_SECS  DECIMAL( 7, 2 ) ,
WRITE_TIME_GZ_SECS  DECIMAL( 7, 2 ) ,
WRITE_TIME_AVRO_SECS  DECIMAL( 7, 2 ) ,
WRITE_TIME_ORC_ZLIB_SECS  DECIMAL( 7, 2 ) ,
WRITE_TIME_ORC_SNAPPY_SECS  DECIMAL( 7, 2 ) ,
WRITE_TIME_PARQUET_SECS  DECIMAL( 7, 2 )
);
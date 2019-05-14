ADD JAR json-serde-1.3.8-jar-with-dependencies.jar;
DROP TABLE movies;
CREATE TABLE movies (
	id string,
	title string,
	year string,
	genre string,
	summary string,
	country string,
	actors array<struct<id:string,role:string>>,
	director struct<first_name:string,id:string,last_name:string,year_of_birth:string>
)

ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
STORED AS TEXTFILE;

LOAD DATA LOCAL INPATH 'movies.json' INTO TABLE  movies ;

select * from movies;

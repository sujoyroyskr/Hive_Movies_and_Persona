ADD JAR json-serde-1.3.8-jar-with-dependencies.jar;
select id,usmovies.id as Movie_ID ,usmovies.role as Movie_role from movies LATERAL VIEW explode(actors) exploded_table as usmovies where country='USA';

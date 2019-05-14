ADD JAR json-serde-1.3.8-jar-with-dependencies.jar;
select b.id,collect_set(a.id),collect_set(a.first_name),collect_set(a.last_name),collect_set(a.year_of_birth) from (select id,last_name,first_name,year_of_birth from artist) a JOIN (select id,actorid from movies lateral view explode(actors) exploded_table as actorid where country ='USA') b ON (a.id = b.actorid.id) group by b.id;

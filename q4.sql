ADD JAR json-serde-1.3.8-jar-with-dependencies.jar;
select director,collect_set(title) from movies where country ='USA' group by director;

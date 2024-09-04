create database netflix;
use netflix;

-- please execute below statements after loading the raw excel data file available in the depository;

-- 1.ALL DATA AT A ONCE
 select * from netflixtable;
 
 -- 2 .average imdb score each year;
 
 SELECT `year`,count(`title`),avg(`imdb_score`)
 FROM `netflixtable`
 group by year
 order by avg(`imdb_score`)desc;
 
 -- 3.MOVIES PER GENRE
 
 SELECT `GENRE` ,count(`title`)
 FROM `netflixtable`
 group by `GENRE` 
 order by count(`title`) desc;
 
 
 
 -- 4. movies per language;
 
 SELECT `LANGUAGE` ,count(`title`)
 FROM `netflixtable`
 group by `LANGUAGE`
 order by count(`title`) desc;
 
 -- 5. top movies per year
 
  SELECT year, `imdb_score`,title
 FROM netflixtable
 group by `year`, imdb_score,`title`
 having imdb_score>8
 order by imdb_score asc;
------ the end
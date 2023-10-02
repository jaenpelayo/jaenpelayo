SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950


SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'literature'

  
SELECT yr , subject
FROM nobel
WHERE yr = 1921
 AND subject = 'physics'


SELECT winner FROM nobel
WHERE subject ='Peace' AND yr>=2000;


SELECT yr , subject , winner 
FROM nobel
WHERE subject= 'literature' AND yr>=1980 AND yr<=1989


SELECT * FROM nobel
 WHERE winner  IN ('Theodore Roosevelt',
 'Woodrow Wilson' 
,'Jimmy Carter',
 'Barack Obama');


SELECT winner
FROM nobel 
WHERE winner
LIKE 'john%'


SELECT * FROM nobel
WHERE subject = 'physics' AND yr=1980
OR subject = 'chemistry' AND yr= 1984


SELECT * FROM nobel WHERE yr = 1980 AND subject NOT IN ('chemistry' , 'medicine')


SELECT * FROM  nobel 
WHERE subject ='medicine' AND yr < 1910 OR subject = 'literature' AND yr >= 2004;


SELECT * FROM nobel WHERE winner = 'PETER GRÜNBERG';


SELECT * FROM nobel WHERE winner = 'EUGENE O''NEILL';


SELECT winner, yr , subject FROM nobel WHERE winner LIKE 'sir%' ORDER BY yr DESC, winner


SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY 
 CASE WHEN subject IN ('physics','chemistry') THEN 1 ELSE 0 END, subject, winner

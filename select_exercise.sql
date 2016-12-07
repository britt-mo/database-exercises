USE codeup;

Select album as 'The name of all albums by Pink Floyd', artist from albums where artist = 'Pink Floyd';


Select release_date as 'The year Sgt. Pepper''s Lonely Hearts Club Band was released' from albums where album = 'Sgt. Pepper''s Lonely Hearts Club Band';

Select genre as "The genre for Nevermind" from albums where artist = 'Nirvana';


Select album as 'Which albums were released in the 1990s' from albums where release_date BETWEEN 1990 AND 1999;

Select album as 'Which albums had less than 20 million certified sales' from albums where sales_in_millions < 20;

Select album as 'All the albums in the rock genre' from albums where genre LIKE '%Rock%';
CREATE DATABASE mymovie_db;
use mymovie_db;
select * from movie limit 20;
alter table movie drop column Original_Language;
alter table movie drop column Poster_Url;
alter table movie drop column Overview;

SELECT COUNT(*) AS total_movies
FROM movie;

select avg(Vote_Average) as avg_rating
from movie;

select Title,max(Vote_Average) as higest_rating_movie
from movie
group by Title
limit 10;

select genre ,avg(Vote_Average) as Avg_Rating
from movie
group by genre
order by Avg_Rating desc;

select genre,avg(Popularity) as most_popular_genre
from movie
group by genre
order by most_popular_genre desc;

select release_date as year,count(*) as total_movies
from movie
group by release_date
order by year desc;

select release_date as year,avg(Vote_Average) as higest_rated_year
from movie
group by release_date
order by year desc;

select
case
when Vote_Average>=7 then 'Higest_rated'
when Vote_Average>=5 then 'Average'
else 'Low Rated'
end as rating_category,
count(*) as total_movies
from movie
group by rating_category;

select Title,AVG(Vote_Average) as Top_10_Movies
from movie
group by Title
order by Top_10_Movies desc
limit 10;


select Title,Vote_Average from movie where Vote_Average>7 and Vote_Count>1000 limit 10;

select genre,count(*) as total_movies,
avg(Vote_Average) as Best_Rating,
avg(Popularity) as Most_Popularity
from movie
group by genre
order by Best_rating desc;
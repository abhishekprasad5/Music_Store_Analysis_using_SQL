select * from album;
select * from artist;
select * from customer;
select * from employee;
select * from genre;
select * from invoice;
select * from invoice_line;
select * from media_type;
select * from playlist;
select * from playlist_track;
select * from track;


-- 1. Who is the senior most employee based on job title?
SELECT * FROM EMPLOYEE
ORDER BY LEVELS DESC
LIMIT 1;


-- 2. Which countries have the most Invoices?
SELECT BILLING_COUNTRY,COUNT(*) AS MOST_INVOICE FROM INVOICE
GROUP BY BILLING_COUNTRY
ORDER BY MOST_INVOICE DESC
LIMIT 1;


-- 3. What are top 3 values of total invoice?
SELECT * FROM INVOICE
ORDER BY TOTAL DESC
LIMIT 3;


-- 4. Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the most money. Write a query that returns one city thathas the highest sum of invoice totals. Return both the city name & sum of all invoice totals
SELECT BILLING_CITY,SUM(TOTAL) AS INVOICE_TOTAL FROM INVOICE
GROUP BY BILLING_CITY
ORDER BY INVOICE_TOTAL DESC;


-- 5. Who is the best customer? The customer who has spent the most money will be declared the best customer. Write a query that returns the person who has spent the most money
SELECT CUSTOMER.CUSTOMER_ID,CUSTOMER.FIRST_NAME,CUSTOMER.LAST_NAME, SUM(INVOICE.TOTAL) AS TOTAL FROM CUSTOMER
JOIN INVOICE
ON CUSTOMER.CUSTOMER_ID = INVOICE.CUSTOMER_ID
GROUP BY CUSTOMER.CUSTOMER_ID
ORDER BY TOTAL DESC
LIMIT 1;

-- 6. Write query to return the email, first name, last name, & Genre of all Rock Music listeners. Return your list ordered alphabetically by email starting with A
SELECT DISTINCT EMAIL,FIRST_NAME, LAST_NAME
FROM CUSTOMER
JOIN INVOICE ON CUSTOMER.CUSTOMER_ID = INVOICE.CUSTOMER_ID
JOIN INVOICE_LINE ON INVOICE.INVOICE_ID = INVOICE_LINE.INVOICE_ID
JOIN TRACK ON INVOICE_LINE.TRACK_ID = TRACK.TRACK_ID
JOIN GENRE ON TRACK.GENRE_ID = GENRE.GENRE_ID
WHERE GENRE.NAME='Rock'
ORDER BY EMAIL;


-- 7. Let's invite the artists who have written the most rock music in our dataset. Write a query that returns the Artist name and total track count of the top 10 rock bands
SELECT ARTIST.NAME,COUNT(*) AS TRACK_COUNT FROM ARTIST
JOIN ALBUM ON ARTIST.ARTIST_ID = ALBUM.ARTIST_ID
JOIN TRACK ON ALBUM.ALBUM_ID = TRACK.ALBUM_ID
JOIN GENRE ON TRACK.GENRE_ID = GENRE.GENRE_ID
WHERE GENRE.NAME='Rock'
GROUP BY ARTIST.NAME
ORDER BY TRACK_COUNT DESC
LIMIT 5;


-- 8. Return all the track names that have a song length longer than the average song length. Return the Name and Milliseconds for each track. Order by the song length with the longest songs listed first
SELECT NAME, MILLISECONDS FROM TRACK 
WHERE MILLISECONDS > 
(SELECT AVG(MILLISECONDS) AS AVG_TRACK_LENGTH FROM TRACK) 
ORDER BY MILLISECONDS DESC;
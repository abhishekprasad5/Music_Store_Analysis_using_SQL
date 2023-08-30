# Music Store Analysis using SQL

SQL project to analyze online music store data

In this project we will analyze the music playlist database. We heve been provided with the 11 dataset with includes the below tables:

	1. ALBUM
	2. ARTIST
	3. CUSTOMER
	4. EMPLOYEE
	5. GENRE
	6. INVOICE
	7. INVOICE_LINE
	8. MEDIA_TYPE
	9. PLAYLIST
	10. PLAYLIST_TRACK
	11. TRACK

With the help of the dataset we will examine the dataset with SQL and help the store understand its business growth by answering simple questions.


## Database and Tools
	Postgre SQL
	PgAdmin4

Table Realationship 

<img width="594" alt="schema_diagram" src="https://github.com/abhishekprasad5/Music_Store_Analysis_using_SQL/assets/90919278/e49233e9-d7a5-4b2a-a775-606c70c71673">


Database Name: MUSICDB

We will be doing the following tasks for analyzing the dataset.

	Task 1. Who is the senior most employee based on job title?
	Task 2. Which countries have the most Invoices?
	Task 3. What are top 3 values of total invoice?
	Task 4. Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the most money.
          Write a query that returns one city thathas the highest sum of invoice totals. Return both the city name & sum of all invoice totals.
	Task 5. Who is the best customer? The customer who has spent the most money will be declared the best customer.
          Write a query that returns the person who has spent the most money.
	Task 6. Write query to return the email, first name, last name, & Genre of all Rock Music listeners. 
          Return your list ordered alphabetically by email.
	Task 7. Let's invite the artists who have written the most rock music in our dataset.
          Write a query that returns the Artist name and total track count of the top 10 rock bands.
	Task 8. Return all the track names that have a song length longer than the average song length. 
          Return the Name and Milliseconds for each track. Order by the song length with the longest songs listed first.

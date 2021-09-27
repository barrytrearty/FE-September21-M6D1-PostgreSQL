DROP TABLE IF EXISTS public.authors;

CREATE TABLE 
	IF NOT EXISTS
		authors(
			id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
			name VARCHAR(50) NOT NULL,
			last_name VARCHAR (50) NOT NULL,
			birth_year INTEGER NOT NULL,
			country VARCHAR (50) NOT NULL
)

INSERT INTO public.authors(
name,
last_name,
birth_year,
country)
VALUES(
'Dan', 'Brown', 1964, 'USA')


INSERT INTO public.authors(name,last_name,birth_year,country)
VALUES('Agatha', 'Christie', 1890, 'UK');
INSERT INTO public.authors(name,last_name,birth_year,country)
VALUES('Paulo', 'Coelho', 1947, 'Brazil')

INSERT INTO public.authors(name,last_name,birth_year,country)
VALUES('Ken', 'Follett', 1949, 'Wales');
INSERT INTO public.authors(name,last_name,birth_year,country)
VALUES('John', 'Grisham', 1955, 'USA');
INSERT INTO public.authors(name,last_name,birth_year,country)
VALUES('Stephen', 'King', 1947, 'USA');
INSERT INTO public.authors(name,last_name,birth_year,country)
VALUES('Haruki', 'Murakami', 1949, 'Japan');
INSERT INTO public.authors(name,last_name,birth_year,country)
VALUES('James', 'Patterson', 1947, 'USA');

DROP TABLE IF EXISTS public.books;

CREATE TABLE 
	IF NOT EXISTSharu
		books(
id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
			name VARCHAR(255) NOT NULL,
            category VARCHAR (50) NOT NULL,
			cover TEXT NOT NULL,
			author_id INTEGER REFERENCES  authors(id)
			created_at TIMESTAMPTZ DEFAULT NOW(),
			updated_at TIMESTAMPTZ DEFAULT NOW()
            published_at TIMESTAMPTZ DEFAULT NOW()
)

INSERT INTO public.books (name, category, cover, author_id)
VALUES('Da Vinci Code','Mystery', 
'https://images-na.ssl-images-amazon.com/images/I/51lqPso5lYL._SX329_BO1,204,203,200_.jpg',
1)
INSERT INTO public.books (name, category, cover, author_id)
VALUES('Angels and Demons','Mystery', 
'https://upload.wikimedia.org/wikipedia/en/thumb/5/5f/AngelsAndDemons.jpg/220px-AngelsAndDemons.jpg',
1);
INSERT INTO public.books (name, category, cover, author_id)
VALUES('Origin','Mystery', 
'https://upload.wikimedia.org/wikipedia/en/thumb/6/67/Origin_%28Dan_Brown_novel_cover%29.jpg/220px-Origin_%28Dan_Brown_novel_cover%29.jpg',
1);
INSERT INTO public.books (name, category, cover, author_id)
VALUES('Murder on the Orient Express','MurderMystery', 
'https://upload.wikimedia.org/wikipedia/en/thumb/c/c0/Murder_on_the_Orient_Express_First_Edition_Cover_1934.jpg/220px-Murder_on_the_Orient_Express_First_Edition_Cover_1934.jpg',
2);
INSERT INTO public.books (name, category, cover, author_id)
VALUES('The Murder at the Vicarage','Crime', 
'https://upload.wikimedia.org/wikipedia/en/b/bf/The_Murder_at_the_Vicarage_First_Edition_Cover_1930.jpg',
2);
INSERT INTO public.books (name, category, cover, author_id)
VALUES('Death on the Nile','Murder Mystery', 
'https://upload.wikimedia.org/wikipedia/en/9/96/Death_on_the_Nile_First_Edition_Cover_1937.jpg',
2);

INSERT INTO public.books (name, category, cover, author_id)
VALUES('The Valkyries','Love', 
'https://upload.wikimedia.org/wikipedia/en/thumb/5/5e/The_Valkyries.jpg/220px-The_Valkyries.jpg',
3);
INSERT INTO public.books (name, category, cover, author_id)
VALUES('The Pilgrimage','Adventure', 
'https://upload.wikimedia.org/wikipedia/en/thumb/1/18/The_Pilgrimage_original_Book_cover.jpg/220px-The_Pilgrimage_original_Book_cover.jpg',
3);
INSERT INTO public.books (name, category, cover, author_id)
VALUES('The Alchemist','Adventure', 
'https://upload.wikimedia.org/wikipedia/en/c/c4/TheAlchemist.jpg',
3);

INSERT INTO public.books (name, category, cover, author_id)
VALUES('Eye of the Needle','Thriller', 
'https://upload.wikimedia.org/wikipedia/en/thumb/d/dd/StormIsland-EyeOfTheNeedle.jpg/220px-StormIsland-EyeOfTheNeedle.jpg',
4);
INSERT INTO public.books (name, category, cover, author_id)
VALUES('Triple','Thriller', 
'https://upload.wikimedia.org/wikipedia/en/thumb/7/78/TripleNovel.jpg/220px-TripleNovel.jpg',
4);
INSERT INTO public.books (name, category, cover, author_id)
VALUES('The Key to Rebecca','Thriller', 
'https://upload.wikimedia.org/wikipedia/en/thumb/4/44/KeyToRebecca.jpg/220px-KeyToRebecca.jpg',
4);

INSERT INTO public.books (name, category, cover, author_id)
VALUES('The Firm','Legal thriller', 
'https://upload.wikimedia.org/wikipedia/en/8/80/The_Firm_Grisham.jpg',
5);
INSERT INTO public.books (name, category, cover, author_id)
VALUES('The Pelican Brief','Legal thriller', 
'https://upload.wikimedia.org/wikipedia/en/thumb/9/95/Pelican_brief_book_cover.jpg/220px-Pelican_brief_book_cover.jpg',
5);
INSERT INTO public.books (name, category, cover, author_id)
VALUES('The Client','Legal thriller', 
'https://upload.wikimedia.org/wikipedia/en/b/b9/The_Client_novel.jpg',
5);

INSERT INTO public.books (name, category, cover, author_id)
VALUES('The Shining','Horror', 
'https://upload.wikimedia.org/wikipedia/en/thumb/4/4c/Shiningnovel.jpg/220px-Shiningnovel.jpg',
6);
INSERT INTO public.books (name, category, cover, author_id)
VALUES('The Dead Zone','Sci-Fi', 
'https://upload.wikimedia.org/wikipedia/en/thumb/5/57/DeadZone.jpg/200px-DeadZone.jpg',
6);
INSERT INTO public.books (name, category, cover, author_id)
VALUES('The Green Mile','Fantasy', 
'https://upload.wikimedia.org/wikipedia/en/thumb/f/f7/Greenmilepart1.jpg/200px-Greenmilepart1.jpg',
6);

INSERT INTO public.books (name, category, cover, author_id)
VALUES('Norwegian Wood','Romance', 
'https://upload.wikimedia.org/wikipedia/en/thumb/5/5d/NorwegianWood.jpg/250px-NorwegianWood.jpg',
7);
INSERT INTO public.books (name, category, cover, author_id)
VALUES('The Wind-Up Bird Chronicle','Thriller', 
'https://upload.wikimedia.org/wikipedia/en/thumb/9/9f/Wind-up_Bird_Chronicle.jpg/220px-Wind-up_Bird_Chronicle.jpg',
7);
INSERT INTO public.books (name, category, cover, author_id)
VALUES('1Q84','Thriller', 
'https://upload.wikimedia.org/wikipedia/en/thumb/b/b9/1Q84bookcover.jpg/220px-1Q84bookcover.jpg',
7);

INSERT INTO public.books (name, category, cover, author_id)
VALUES('Maximum Ride','Thriller', 
'https://upload.wikimedia.org/wikipedia/en/thumb/b/b7/Maximum_Ride1.jpg/220px-Maximum_Ride1.jpg',
8);
INSERT INTO public.books (name, category, cover, author_id)
VALUES('Schools Out—Forever','Sci-Fi', 
'https://upload.wikimedia.org/wikipedia/en/thumb/f/fb/Maximum_Ride2.jpg/220px-Maximum_Ride2.jpg',
8);
INSERT INTO public.books (name, category, cover, author_id)
VALUES('The Final Warning','Young Adult', 
'https://upload.wikimedia.org/wikipedia/en/thumb/9/91/Maximum_Ride4.jpg/220px-Maximum_Ride4.jpg',
8);

-- Write an update query to update  authors birth year
UPDATE 
	public.authors 
		SET 
		birth_year='1889'
	WHERE id=2;

-- Write an update query to update books cover for given book id
UPDATE 
	public.books 
		SET 
		cover='https://upload.wikimedia.org/wikipedia/en/thumb/e/e9/The_da_vinci_code_final.jpg/220px-The_da_vinci_code_final.jpg'
	WHERE id=1;


-- Select books from a category (any)
SELECT * FROM public.books WHERE category='Thriller'

-- Select books which start with a letter (any letter)
SELECT * FROM public.books WHERE name LIKE 'T%'

-- Select books which include a given word  (any word)
SELECT * FROM public.books WHERE name LIKE '%The%'

-- Select authors which are “not” older than 60 years ()
SELECT * FROM public.authors WHERE birth_year>2021-60

-- Select authors which are  older than 40 years old
SELECT * FROM public.authors WHERE birth_year<2021-40

-- Select only category,published_at from books
SELECT category, published_at FROM public.books

-- Count all books
SELECT COUNT(*) FROM public.books

-- Select authors and order them by age (calculate age in SQL, search about it 🤓) ASC
SELECT 2021 - birth_year as age FROM public.authors 

-- Select authors and order them by birth_year desc
SELECT * FROM public.authors ORDER BY birth_year DESC

-- Delete all the authors from a given country
DELETE FROM public.authors WHERE country="England"

-- Delete all the books from a given category
DELETE FROM public.books WHERE category="Love"

-- Delete all authors if their last_name starts with H
DELETE FROM public.authors WHERE name LIKE 'H%'
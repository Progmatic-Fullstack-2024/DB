-- Adatok az autors táblához
INSERT INTO autors (id, name, birth_date, nationality) VALUES
(1, 'J.K. Rowling', '1965-07-31', 'British'),
(2, 'George R.R. Martin', '1948-09-20', 'American'),
(3, 'Stephen King', '1947-09-21', 'American'),
(4, 'Agatha Christie', '1890-09-15', 'British'),
(5, 'Neil Gaiman', '1960-11-10', 'British'),
(6, 'Terry Pratchett', '1948-04-28', 'British'),
(7, 'Isaac Asimov', '1920-01-02', 'American'),
(8, 'Arthur C. Clarke', '1917-12-16', 'British');

-- Adatok a books táblához
INSERT INTO books (isbn, title, genre, published_year, pages, language) VALUES
('9780439554930', 'Harry Potter and the Philosopher''s Stone', 'Fantasy', 1997, 223, 'English'),
('9780553103540', 'A Game of Thrones', 'Fantasy', 1996, 694, 'English'),
('9780307743657', 'The Shining', 'Horror', 1977, 659, 'English'),
('9780007119318', 'Murder on the Orient Express', 'Mystery', 1934, 256, 'English'),
('9780060558123', 'Good Omens', 'Fantasy', 1990, 432, 'English'),
('9780451524935', '1984', 'Dystopian', 1949, 328, 'English'),
('9780385537858', 'The Martian', 'Science Fiction', 2011, 369, 'English'),
('9780060853983', 'American Gods', 'Fantasy', 2001, 465, 'English'),
('9780345339683', 'Foundation', 'Science Fiction', 1951, 244, 'English'),
('9780451452734', 'Rendezvous with Rama', 'Science Fiction', 1973, 288, 'English');

-- Adatok a store táblához
INSERT INTO store (id, name, address, contact) VALUES
(1, 'Book Heaven', '123 Main St, Fiction Town', '1234567890'),
(2, 'Novel Nook', '456 Story Ave, Mystery City', '0987654321'),
(3, 'Readers'' Paradise', '789 Book Blvd, Thriller City', '1122334455');

-- Adatok a store_books táblához
INSERT INTO store_books (store_id, books_id) VALUES
(1, '9780439554930'), -- Harry Potter
(1, '9780007119318'), -- Murder on the Orient Express
(1, '9780060558123'), -- Good Omens
(1, '9780451524935'), -- 1984
(2, '9780553103540'), -- A Game of Thrones
(2, '9780385537858'), -- The Martian
(2, '9780060853983'), -- American Gods
(2, '9780345339683'), -- Foundation
(3, '9780307743657'), -- The Shining
(3, '9780451452734'), -- Rendezvous with Rama
(3, '9780060558123'), -- Good Omens
(3, '9780345339683'); -- Foundation

-- Adatok az autors_books táblához (több szerző is van néhány könyvön)
INSERT INTO autors_books (autors_id, books_id) VALUES
(1, '9780439554930'), -- J.K. Rowling - Harry Potter
(2, '9780553103540'), -- George R.R. Martin - A Game of Thrones
(3, '9780307743657'), -- Stephen King - The Shining
(4, '9780007119318'), -- Agatha Christie - Murder on the Orient Express
(5, '9780060558123'), -- Neil Gaiman - Good Omens
(6, '9780060558123'), -- Terry Pratchett - Good Omens
(5, '9780060853983'), -- Neil Gaiman - American Gods
(7, '9780345339683'), -- Isaac Asimov - Foundation
(8, '9780451452734'), -- Arthur C. Clarke - Rendezvous with Rama
(7, '9780451452734'); -- Isaac Asimov - Rendezvous with Rama

select * from books;
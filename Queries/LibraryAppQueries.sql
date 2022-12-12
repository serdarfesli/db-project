select * from book_categories  ;
select * from books;
select b.name as "Book Name",isbn,year,author,c.name as "category",b.description from
                books b join book_categories c on b.book_category_id=c.id where b.name='Chordeiles minor';

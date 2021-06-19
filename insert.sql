insert into publisher(name, country) values("PHI", "India");

insert into publisher(name, country) values("Harper", "USA");

insert into publisher(name, country) values("GCP", "USA");

insert into publisher(name, country) values("Avery", "USA");

insert into publisher(name, country) values("Del Rey", "UK");

insert into publisher(name, country) values("Vintage", "UK");


insert into books(title, publisher) values ('The C Programming Language',(select id from publisher where name = 'PHI'));

insert into books(title, publisher) values ('The Go Programming Language',(select id from publisher where name = 'PHI'));

insert into books(title, publisher) values ('The UNIX Programming Environment',(select id from publisher where name = 'PHI'));

insert into books(title, publisher) values ('Cryptonomicon',(select id from publisher where name = 'Harper'));

insert into books(title, publisher) values ('Deep Work',(select id from publisher where name = 'GCP'));

insert into books(title, publisher) values ('Atomic Habits',(select id from publisher where name = 'Avery'));

insert into books(title, publisher) values ('The City and The City',(select id from publisher where name = 'Del Rey'));

insert into books(title, publisher) values ('The Great War for Civilisation',(select id from publisher where name = 'Vintage'));


insert into subjects(name) values('C');

insert into subjects(name) values('UNIX');

insert into subjects(name) values('Technology');

insert into subjects(name) values('Go');

insert into subjects(name) values('Science Fiction');

insert into subjects(name) values('Productivity');

insert into subjects(name) values('Psychology');

insert into subjects(name) values('Politics');

insert into subjects(name) values('History');


insert into books_subjects values((select id from books where title = 'The C Programming Language'),(select id from subjects where name = 'C'));
insert into books_subjects values((select id from books where title = 'The C Programming Language'),(select id from subjects where name = 'UNIX'));
insert into books_subjects values((select id from books where title = 'The C Programming Language'),(select id from subjects where name = 'Technology'));

insert into books_subjects values((select id from books where title = 'The Go Programming Language'),(select id from subjects where name = 'Go'));
insert into books_subjects values((select id from books where title = 'The Go Programming Language'),(select id from subjects where name = 'Technology'));

insert into books_subjects values((select id from books where title = 'The UNIX Programming Environment'),(select id from subjects where name = 'UNIX'));
insert into books_subjects values((select id from books where title = 'The UNIX Programming Environment'),(select id from subjects where name = 'Technology'));

insert into books_subjects values((select id from books where title = 'Cryptonomicon'),(select id from subjects where name = 'Technology'));
insert into books_subjects values((select id from books where title = 'Cryptonomicon'),(select id from subjects where name = 'Science Fiction'));

insert into books_subjects values((select id from books where title = 'Deep Work'),(select id from subjects where name = 'Technology'));
insert into books_subjects values((select id from books where title = 'Deep Work'),(select id from subjects where name = 'Productivity'));

insert into books_subjects values((select id from books where title = 'Atomic Habits'),(select id from subjects where name = 'Productivity'));
insert into books_subjects values((select id from books where title = 'Atomic Habits'),(select id from subjects where name = 'Psychology'));

insert into books_subjects values((select id from books where title = 'The City and The City'),(select id from subjects where name = 'Science Fiction'));
insert into books_subjects values((select id from books where title = 'The City and The City'),(select id from subjects where name = 'Politics'));

insert into books_subjects values((select id from books where title = 'The Great War for Civilisation'),(select id from subjects where name = 'Politics'));
insert into books_subjects values((select id from books where title = 'The Great War for Civilisation'),(select id from subjects where name = 'History'));

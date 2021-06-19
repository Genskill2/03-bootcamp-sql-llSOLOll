create table publisher(
  id integer primary key AUTOINCREMENT,
    name text,
    country text
  );

create table books(
  id integer primary key AUTOINCREMENT,
   title text,
    publisher integer, foreign key(publisher) references publisher(id)
  );

create table subjects(
  id integer primary key AUTOINCREMENT,
  name text
 );

create table books_subjects(
  book integer,
  subject integer,
  foreign key(books) references books(id),
  foreign key(subjects.id) references subjects(id)
 );

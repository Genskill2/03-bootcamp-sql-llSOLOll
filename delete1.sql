delete from books_subjects
where subject = (select bs.subject
from books_subjects bs, subjects s
where s.name = 'History' and bs.subject = s.id);

delete from subjects
where name is 'History';

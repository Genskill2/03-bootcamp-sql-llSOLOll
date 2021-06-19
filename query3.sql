select b.title
from books b, subjects s , books_subjects bs
where s.name in ('technology', 'politics') and
  b.id = bs.book  and
  s.id = bs.subject;

select title
from books b, publisher p
where p.name = 'PHI' and b.publisher = p.id;

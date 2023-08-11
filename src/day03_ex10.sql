insert into person_order (id, person_id, menu_id, order_date)
select
    (select coalesce(max(id), 0) from person_order) + row_number() over () new_id,
    p.id person_id,
    m.id menu_id,
    timestamp '2022-02-24' order_date
from person p
join menu m on m.pizza_name = 'sicilian pizza'
where p.name in ('Denis', 'Irina');


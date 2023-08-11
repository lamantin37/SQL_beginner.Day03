select m.pizza_name pizza_name, m.price price, p.name name
from menu m
left join person_order po on m.id = po.menu_id
join pizzeria p on m.pizzeria_id = p.id 
where po.menu_id is null
order by pizza_name, price;

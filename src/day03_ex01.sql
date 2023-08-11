select m.id menu_id
from menu m
left join person_order po on m.id = po.menu_id
where po.menu_id is null
order by menu_id;

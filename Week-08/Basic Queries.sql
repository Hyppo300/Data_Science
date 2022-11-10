SELECT item_name from public.menu;

SELECT public.menu.item_name from public.menu ORDER BY menu_item ASC;

SELECT * FROM public.menu ORDER BY DESC LIMIT 3;

SELECT * FROM public.customers WHERE first_name='Lerin';

SELECT * FROM public.menu WHERE itme_id>2;

SELECT * FROM public.menu WHERE item_name IN ('Brocolli Pasta','Spaghetti') AND itme_id>1:

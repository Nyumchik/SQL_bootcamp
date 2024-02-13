UPDATE menu
SET price = (CAST((SELECT price - price * 0.1 FROM menu 
WHERE pizza_name = 'greek pizza') AS INT))
WHERE pizza_name ='greek pizza'

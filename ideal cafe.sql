create database ideal_cafe;
use ideal_cafe;

create table restaurants(
id tinyint auto_increment primary key,
name varchar(10) not null,
country varchar(10) not null,
adress varchar(50) unique not null,
phone varchar(17) unique not null,
e_mail varchar(50) unique not null
);
insert into restaurants (name,country,adress,phone,e_mail) values ('Ideal Cafe','USA','2147 Pick Street','+1  970-554-8037','ideal_cafe0@gmail.com'),
																  ('Ideal Cafe','USA','3535 Lake Forest Drive','+1  914-241-9241','ideal_cafe1@gmail.com'),
																  ('Ideal Cafe','USA','4288 Diamond Street','+1  828-883-6588','ideal_cafe2@gmail.com'),
																  ('Ideal Cafe','USA','108 Pride Avenue','+1  718-293-6373','ideal_cafe3@gmail.com'),
																  ('Ideal Cafe','USA','4373 Monroe Avenue','+1  941-761-4445','ideal_cafe4@gmail.com'),
																  ('Ideal Cafe','USA','3611 Red Bud Lane','+1  860-953-7410','ideal_cafe5@gmail.com'),
																  ('Ideal Cafe','USA','2700 Findley Avenue','+1  701-839-8488','ideal_cafe6@gmail.com');

create table menu(
id tinyint auto_increment primary key,
name varchar(20) unique not null
);
insert into menu (name) values ('Main Menu'),
							   ('Drinks Menu'),
							   ('Breakfast Menu'),
							   ('Desserts Menu');

		
create table menu_category(
id tinyint auto_increment primary key,
name varchar(25) unique not null,
menu_id tinyint not null,
constraint menu_category foreign key(menu_id) references menu(id)
);
insert into menu_category (name,menu_id) values ('Appetizers',1),
										('Salads',1),
										('Soups',1),
										('Paste',1),
										('Pizza',1),
										('Sandwiches And Burgers',1),
										('Sauces',1),
										('Tea',1),
										('Cofee',2),
										('Coffee Drinks',2),
										('Cold Drinks',2),
										('Lemonade',2),
										('Fresh Juices',2),
										('Milk Shake',2),
										('Non Alcoholic Cocktails',2),
										('Alcoholic Cocktails',2),
										('Signature Cocktails',2),
										('Sangria',2),
										('Vermouth',2),
										('Vodka',2),
										('Rum',2),
										('Tequila',2),
										('Gin',2),
										('Liquors',2),
										('Cognac',2),
										('Beer',2),
										('Energy Drinks',2),
										('Anisette',2),
										('Bourbon',2),
										('Breakfast',3),
										('Desserts',4);
					drop table category_foods;				
create table category_foods(
id tinyint auto_increment primary key,
name varchar(100) not null,
about varchar(255) default null,
price tinyint not null,
weight varchar (6) not null,
menu_category_id tinyint not null,
constraint menu_category_id foreign key(menu_category_id) references menu_category(id)
);

insert into category_foods (name,about,price,weight,menu_category_id) values
('Tuna Snack','Canned tuna, poached egg, boiled potato, tartar sauce, mixed greens, sumakh, garlic dressing',7.90,'350 gr',1),
('Deep-fried dumplings',null,6.90,'150 gr',1),
('Chicken Tenders',null,8.00,'215 gr',1),
('Chicken Charlottes','Breaded minced chicken and gouda cheese, homemade potato, cheese sauce',9.90,'320 gr',1),
('Chicken and Mushrooms Profiteroles',null,6.90,'150 gr',1),
('Deep-fried dumplings','Profiteroles, gouda cheese, onion, mushrooms, chicken fillet, cream, garlic potato',9.90,'300 gr',1),
('Asian Bowl','Breaded chicken, white and red cabbage, carrot, tomato, radish, mexico mix, canned red beans, fried eggs, Asia sauce',9.90,'260 gr',1),
('Chicken "Volcano" dumplings','Potato pancakes, chicken mousse, oyster sauce, garlic, tomatoes, sesame seeds, mixed greens',6.90,'200 gr',1),
('Oriental eggplants','Eggplants, walnuts, sour cream, garlic, curry paste, coriander',6.90,'110 gr',1),
('Hummus with Foccaccia',null,6.90,'380 gr',1),
('Mashed Crunchy Potato with Spinach',null,6.90,'150 gr',1),
('Warm Potato Snack','Baby potato, omelet, sun-dried tomatoes, pickled cucumbers, fried mushrooms, red onion, green peas, dill, garlic dressing',8.50,'340 gr',1),
('Vegetarian Snack','Crunchy breaded potato patty, onion, poached egg, baked red paprika, cream cheese, green peas, "paprika" dressing',6.90,'320 gr',1),
('Tuna salad','Canned tuna, cucumber, tomato, red onion, eggs, capers, pickled cucumbers, lettuce, iceberg, lollo rosso, olive oil',10.90,'320 gr',2),
('Nicoise Salad','Canned tuna, potato pancake, poached egg, sesame seeds, tomatoes, pickled cucumber, red onion, green beans, lollo rosso, lettuce, iceberg, arugula, olive oil, vinegar',11.50,'400 gr',2),
('Asian style Meat Salad','Beef tenderloin, oyster sauce, cucumber, carrot, colored paprika, red onion, mixed greens, mint, green onion, iceberg, sesame, hot pepper, soy sauce, lemon juice, olive oil',14.90,'280 gr',2),
('Beef Tagliata','Beef tenderloin, potato pancake, tomato, balsamic glaze, piquant sauce, mixed greens',14.90,'350 gr',2),
('Potato Salad with Chicken','Chicken fillet, baby potato, tomato, red onion, pickled cucumber, green peas, garlic, mixed greens, mayonnaise',10.20,'370 gr',2),
('Chicken Salad with Bulgur and Beetroot','Marinated baked chicken fillet, tomato, cucumber, beetroot, bulgur, chickpeas, green peas, black olives, white cheese, mixed greens, olive oil, balsamic glaze',10.50,'350 gr',2),
('"Chicken salad with baby potatoes in piquant sauce"','Baked chicken fillet, tomatoes, cucumbers, garlic croutons, baby potatoes, iceberg, piquant sauce, "paprika" dressing',11.00,'500 gr',2),
('Chicken Salad with Pear and Beetroot','Marinated baked chicken fillet, pear, brown sugar, beetroot, tomato, feta cheese, peanuts, lettuce, arugula, mixed greens, olive oil',10.90,'310 gr',2),
('Vegetable salad with chicken and feta cheese','',10.50,'310 gr',2),
('Vegetable salad with chicken and feta cheese','Chicken fillet, tomato, fried peanuts, feta cheese, iceberg, arugula, lollo rosso, mixed greens, balsamic glaze',11.00,'330 gr',2),
('Chicken salad with parmesan cheese','Breaded chicken fillet, tomatoes, lettuce, iceberg, mixed greens, parmesan cheese, toasts, cream cheese, pesto sauce',10.50,'380 gr',2),
('Caesar Salad','Chicken fillet, garlic croutons, parmesan cheese, iceberg, tomato, Caesar sauce',12.80,'310 gr',2),
('Chicken Blues','Boiled chicken fillet, tomatoes, cucumbers, gouda cheese, iceberg, mayonnaise',8.00,'320 gr',2),
('Olivier salad','"Cucumber, pickled cucumber, potato, carrot, eggs, green peas, dill, mayonnaise, grilled chicken fillet, black bread with tomato and pesto sauce, mixed greens, balsamic glaze"',10.50,'350 gr',2),
('Grilled Chicken Salad','Chicken fillet, potato, tomato, mushroom, iceberg, arugula, sour cream-garlic sauce, pesto sauce',12.00,'480 gr',2),
('Asian style Salad with Fried Cheese and Edamame','Breaded white cheese, carrot, cucumber, edamame beans, boiled rice, rice vinegar, green onion, mixed greens, soya dressing',9.90,'300 gr',2),
('Greek salad','"Cucumbers, tomatoes, bell pepper, red onion, black olives, radish, feta cheese, lettuce, iceberg, vegetable sauce, olive oil"',9.50,'380 gr',2),
('Tomato soup',null,6.80,'330 gr',3),
('Mushroom soup',null,4.80,'330 gr',3),
('Lentils soup',null,4.80,'330 gr',3),
('Chicken bouillon',null,4.00,'330 gr',3),
('Noodle soup with meatballs (seasonally)','Noodles, beef, white beans',6.00,'380 gr',3),
('Okroshka (seasonally)','Yogurt, sour cream, cucumbers, greens, veal, eggs, potatoes',5.00,'330 gr',3),
('Spaghetti Bolognese','Pasta spaghetti, Bolognese sauce (minced beef, carrot, onion, garlic, tomato sauce, spices), canned peeled tomatoes, parmesan cheese',11.00,'340 gr',4),
('Ham and Mushroom Fettuccine','"Pasta fettuccine, turkey ham, eggs, mushrooms, cream"',12.80,'400 gr',4),
('Chicken and Pesto Tagliatelle','Pasta tagliatelle, chicken fillet, pesto sauce, tomato, parmesan cheese',10.90,'350 gr',4),
('Chicken Spaghetti','Pasta spaghetti, chicken fillet, cream, garlic, oyster sauce, parmesan cheese',10.90,'330 gr',4),
('Creamy Penne with Sweetcorn','Pasta penne, onion, carrot, canned sweetcorn, garlic, cream',9.00,'320 gr',4),
('Potato Dumplings with cheese sause dressing','Potato Dumplings with cheese sause dressing',7.50,'280 gr',4);

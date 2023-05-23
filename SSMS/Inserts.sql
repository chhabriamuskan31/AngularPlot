INSERT INTO customers (customername, email, username, state)
VALUES
('Shankar', 'shankar@example.com', 'shankar', 'Andhra Pradesh'),
('Radha', 'radha@example.com', 'radha', 'Arunachal Pradesh'),
('Arun', 'arun@example.com', 'arun', 'Assam'),
('Vijay', 'vijay@example.com', 'vijay', 'Bihar'),
('Ramesh', 'ramesh@example.com', 'ramesh', 'Chhattisgarh'),
('Suresh', 'suresh@example.com', 'suresh', 'Dadra and Nagar Haveli'),
('Mohan', 'mohan@example.com', 'mohan', 'Daman and Diu'),
('Krishna', 'krishna@example.com', 'krishna', 'Gujarat'),
('Ram', 'ram@example.com', 'ram', 'Haryana'),
('Laxman', 'laxman@example.com', 'laxman', 'Himachal Pradesh'),
('Bharat', 'bharat@example.com', 'bharat', 'Jammu and Kashmir'),
('Durga', 'durga@example.com', 'durga', 'Jharkhand'),
('Saraswati', 'saraswati@example.com', 'saraswati', 'Karnataka'),
('Ganga', 'ganga@example.com', 'ganga', 'Kerala'),
('Krishna', 'krishna@example.com', 'krishna', 'Lakshadweep'),
('Mahadev', 'mahadev@example.com', 'mahadev', 'Maharashtra'),
('Hanuman', 'hanuman@example.com', 'hanuman', 'Manipur'),
('Ganesha', 'ganesha@example.com', 'ganesha', 'Meghalaya'),
('Shiva', 'shiva@example.com', 'shiva', 'Mizoram'),
('Parvati', 'parvati@example.com', 'parvati', 'Nagaland'),
('Lakshmi', 'lakshmi@example.com', 'lakshmi', 'Odisha'),
('Nandi', 'nandi@example.com', 'nandi', 'Punjab'),
('Vishnu', 'vishnu@example.com', 'vishnu', 'Rajasthan'),
('Aditya', 'aditya@example.com', 'aditya', 'Sikkim'),
('Agastya', 'agastya@example.com', 'agastya', 'Tamil Nadu'),
('Arjuna', 'arjuna@example.com', 'arjuna', 'Telangana'),
('Karna', 'karna@example.com', 'karna', 'Tripura'),
('Duryodhana', 'duryodhana@example.com', 'duryodhana', 'Uttar Pradesh'),
('Bhima', 'bhima@example.com', 'bhima', 'Uttarakhand'),
('Yudhisthira', 'yudhisthira@example.com', 'yudhisthira', 'West Bengal');

INSERT INTO products (productname, productdescription)
VALUES
('T-Shirt', 'A short-sleeved top.'),
('Jeans', 'A type of pants made from denim.'),
('Shoes', 'Footwear worn on the feet.'),
('Hat', 'A covering for the head.'),
('Bag', 'A container for carrying things.'),
('Watch', 'A device for telling the time.'),
('Phone', 'A portable device for making and receiving calls.'),
('Computer', 'A machine for storing, processing, and retrieving information.'),
('TV', 'A device for displaying moving images and sound.'),
('Fridge', 'A large appliance for storing food and drinks.'),
('Washing Machine', 'A machine for washing clothes.'),
('Dishwasher', 'A machine for washing dishes.'),
('Microwave', 'A kitchen appliance for cooking food quickly.'),
('Coffee Maker', 'A kitchen appliance for making coffee.'),
('Toaster', 'A kitchen appliance for toasting bread.'),
('Blender', 'A kitchen appliance for blending food.'),
('Mixer', 'A kitchen appliance for mixing food.'),
('Vacuum Cleaner', 'A household appliance for cleaning floors.'),
('Iron', 'A household appliance for pressing clothes.'),
('Sewing Machine', 'A machine for sewing clothes.'),
('Hair Dryer', 'A hair styling appliance for drying hair.'),
('Curling Iron', 'A hair styling appliance for curling hair.'),
('Flat Iron', 'A hair styling appliance for straightening hair.'),
('Makeup Brush', 'A tool for applying makeup.'),
('Eyeshadow Palette', 'A set of eyeshadows in different colors.'),
('Lipstick', 'A cosmetic product used to color the lips.'),
('Mascara', 'A cosmetic product used to darken and lengthen the eyelashes.'),
('Foundation', 'A cosmetic product used to even out the skin tone.'),
('Concealer', 'A cosmetic product used to cover blemishes.'),
('Powder', 'A cosmetic product used to set makeup.'),
('Bronzer', 'A cosmetic product used to give the skin a sun-kissed look.'),
('Blush', 'A cosmetic product used to add color to the cheeks.'),
('Highlighter', 'A cosmetic product used to highlight certain features of the face.');

INSERT INTO orders (productid, customerid, quantity, dateadded)
VALUES
(1, 1, 1, '2023-05-18'),
(2, 2, 1, '2022-05-17'),
(3, 3, 1, '2022-05-16'),
(4, 4, 1, '2021-05-15'),
(5, 5, 1, '2020-05-14'),
(6, 6, 1, '2022-05-13'),
(7, 7, 1, '2021-05-12'),
(8, 8, 1, '2020-05-11'),
(9, 9, 1, '2022-05-10'),
(10, 10, 1, '2019-05-09'),
(11, 11, 1, '2020-05-08'),
(12, 12, 1, '2022-05-07'),
(13, 13, 1, '2021-05-06'),
(14, 14, 1, '2023-05-05'),
(15, 15, 1, '2022-05-04'),
(16, 16, 1, '2021-05-03'),
(17, 17, 1, '2029-05-02'),
(18, 18, 1, '2022-05-01'),
(19, 19, 1, '2021-04-30'),
(20, 20, 1, '2021-04-29');

alter table products
add price int

select * from products

UPDATE products
SET    price = ROUND( 1000 *RAND(convert(varbinary, newid())), 0)
WHERE  price IS NULL

INSERT INTO orders (productid, customerid, quantity, dateadded)
VALUES
(3, 3, 1, '2022-05-16')

select * from orders;
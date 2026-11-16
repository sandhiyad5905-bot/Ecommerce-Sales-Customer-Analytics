create database ecom;
use ecom;

create table customer(cusID int primary key, cusname varchar(20),gender varchar(10),city varchar(20),state varchar(20),join_date date,email varchar(30));

create  table category(catID int primary key,catname varchar(50));

create table product(pID int primary key,pname varchar(20),catID int ,price decimal(10,2),stockquantity int ,
foreign key(catID) references category(catID));

create table suppliers(supID int primary key,supname varchar(20),city varchar(20),phone bigint);

create table orderss(ordID int primary key,cusID int,orddate date,ordstatus varchar(20),paymentmethod varchar(20),
foreign key(cusID) references customer(cusID));

create table orderdetails(ord_detail_ID int primary key,ordID int,pID int,quantity int,unitprice decimal(10,2),discount decimal(5,2),
foreign key(ordID)references  orders(ordID),
foreign key(pID) references product(pID));

create table payment(payID int primary key,ordID int,paydate date,amount decimal(10,2),payment_status varchar(20),
foreign key(ordID)references orders(ordID));

create table shipment(shipID int primary key,ordID int,shipdate date,deliveydate date,ship_status varchar(20),
foreign key(ordID) references orders(ordID));

create table reviews(reviewID int primary key,cusID int,pID int,rating decimal(2,1),review_date date,comments varchar(50),
foreign key(cusID) references customer(cusID),
foreign key(pID) references product(pID));

create table returns(returnID int primary key,ord_detail_ID int,return_date date,return_quantity int,return_reason varchar(100),
refund_amount decimal(10,2),
foreign key (ord_detail_ID) references orderdetails(ord_detail_ID));

INSERT INTO customer VALUES
(1, 'Arun', 'Male', 'Chennai', 'Tamil Nadu', '2025-01-10', 'arun@gmail.com'),
(2, 'Priya', 'Female', 'Madurai', 'Tamil Nadu', '2025-01-12', 'priya@gmail.com'),
(3, 'Rahul', 'Male', 'Bangalore', 'Karnataka', '2025-01-15', 'rahul@gmail.com'),
(4, 'Divya', 'Female', 'Coimbatore', 'Tamil Nadu', '2025-01-18', 'divya@gmail.com'),
(5, 'Karthik', 'Male', 'Salem', 'Tamil Nadu', '2025-01-20', 'karthik@gmail.com'),
(6, 'Sneha', 'Female', 'Hyderabad', 'Telangana', '2025-01-22', 'sneha@gmail.com'),
(7, 'Vijay', 'Male', 'Trichy', 'Tamil Nadu', '2025-01-25', 'vijay@gmail.com'),
(8, 'Anitha', 'Female', 'Erode', 'Tamil Nadu', '2025-01-27', 'anitha@gmail.com'),
(9, 'Suresh', 'Male', 'Mysore', 'Karnataka', '2025-02-01', 'suresh@gmail.com'),
(10, 'Meena', 'Female', 'Tirunelveli', 'Tamil Nadu', '2025-02-03', 'meena@gmail.com'),
(11, 'Praveen', 'Male', 'Vellore', 'Tamil Nadu', '2025-02-05', 'praveen@gmail.com'),
(12, 'Kavya', 'Female', 'Kochi', 'Kerala', '2025-02-07', 'kavya@gmail.com'),
(13, 'Dinesh', 'Male', 'Mumbai', 'Maharashtra', '2025-02-10', 'dinesh@gmail.com'),
(14, 'Lakshmi', 'Female', 'Delhi', 'Delhi', '2025-02-12', 'lakshmi@gmail.com'),
(15, 'Manoj', 'Male', 'Pune', 'Maharashtra', '2025-02-15', 'manoj@gmail.com'),
(16, 'Nithya', 'Female', 'Thanjavur', 'Tamil Nadu', '2025-02-17', 'nithya@gmail.com'),
(17, 'Ramesh', 'Male', 'Tiruppur', 'Tamil Nadu', '2025-02-20', 'ramesh@gmail.com'),
(18, 'Pooja', 'Female', 'Vijayawada', 'Andhra Pradesh', '2025-02-22', 'pooja@gmail.com'),
(19, 'Saravanan', 'Male', 'Dindigul', 'Tamil Nadu', '2025-02-25', 'saravanan@gmail.com'),
(20, 'Deepa', 'Female', 'Kozhikode', 'Kerala', '2025-02-27', 'deepa@gmail.com'),
(21, 'Ajay', 'Male', 'Jaipur', 'Rajasthan', '2025-03-01', 'ajay@gmail.com'),
(22, 'Revathi', 'Female', 'Kanchipuram', 'Tamil Nadu', '2025-03-03', 'revathi@gmail.com'),
(23, 'Santhosh', 'Male', 'Bhopal', 'Madhya Pradesh', '2025-03-05', 'santhosh@gmail.com'),
(24, 'Aishwarya', 'Female', 'Tirupati', 'Andhra Pradesh', '2025-03-07', 'aishwarya@gmail.com'),
(25, 'Mohan', 'Male', 'Karur', 'Tamil Nadu', '2025-03-10', 'mohan@gmail.com'),
(26, 'Harini', 'Female', 'Theni', 'Tamil Nadu', '2025-03-12', 'harini@gmail.com'),
(27, 'Gokul', 'Male', 'Noida', 'Uttar Pradesh', '2025-03-15', 'gokul@gmail.com'),
(28, 'Swathi', 'Female', 'Thrissur', 'Kerala', '2025-03-17', 'swathi@gmail.com'),
(29, 'Bala', 'Male', 'Pudukkottai', 'Tamil Nadu', '2025-03-20', 'bala@gmail.com'),
(30, 'Keerthana', 'Female', 'Warangal', 'Telangana', '2025-03-22', 'keerthana@gmail.com'),
(31, 'Naveen', 'Male', 'Ahmedabad', 'Gujarat', '2025-03-25', 'naveen@gmail.com'),
(32, 'Sandhiya', 'Female', 'Cuddalore', 'Tamil Nadu', '2025-03-27', 'sandhiya@gmail.com'),
(33, 'Vignesh', 'Male', 'Nagercoil', 'Tamil Nadu', '2025-04-01', 'vignesh@gmail.com'),
(34, 'Ramya', 'Female', 'Kollam', 'Kerala', '2025-04-03', 'ramya@gmail.com'),
(35, 'Ashok', 'Male', 'Lucknow', 'Uttar Pradesh', '2025-04-05', 'ashok@gmail.com'),
(36, 'Janani', 'Female', 'Villupuram', 'Tamil Nadu', '2025-04-07', 'janani@gmail.com'),
(37, 'Surya', 'Male', 'Guntur', 'Andhra Pradesh', '2025-04-10', 'surya@gmail.com'),
(38, 'Malathi', 'Female', 'Namakkal', 'Tamil Nadu', '2025-04-12', 'malathi@gmail.com'),
(39, 'Prakash', 'Male', 'Kolkata', 'West Bengal', '2025-04-15', 'prakash@gmail.com'),
(40, 'Shalini', 'Female', 'Ooty', 'Tamil Nadu', '2025-04-17', 'shalini@gmail.com'),
(41, 'Vasanth', 'Male', 'Belgaum', 'Karnataka', '2025-04-20', 'vasanth@gmail.com'),
(42, 'Geetha', 'Female', 'Pondicherry', 'Puducherry', '2025-04-22', 'geetha@gmail.com'),
(43, 'Muthu', 'Male', 'Sivakasi', 'Tamil Nadu', '2025-04-25', 'muthu@gmail.com'),
(44, 'Abinaya', 'Female', 'Palakkad', 'Kerala', '2025-04-27', 'abinaya@gmail.com'),
(45, 'Lokesh', 'Male', 'Gurgaon', 'Haryana', '2025-05-01', 'lokesh@gmail.com'),
(46, 'Dharani', 'Female', 'Ariyalur', 'Tamil Nadu', '2025-05-03', 'dharani@gmail.com'),
(47, 'Bharath', 'Male', 'Visakhapatnam', 'Andhra Pradesh', '2025-05-05', 'bharath@gmail.com'),
(48, 'Monisha', 'Female', 'Krishnagiri', 'Tamil Nadu', '2025-05-07', 'monisha@gmail.com'),
(49, 'Ranjith', 'Male', 'Patna', 'Bihar', '2025-05-10', 'ranjith@gmail.com'),
(50, 'Yamini', 'Female', 'Tiruvallur', 'Tamil Nadu', '2025-05-12', 'yamini@gmail.com');

INSERT INTO category VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Furniture'),
(4, 'Home Appliances'),
(5, 'Books');

INSERT INTO product VALUES
(101, 'Laptop', 1, 50000.00, 10),
(102, 'Mobile', 1, 20000.00, 25),
(103, 'Headphones', 1, 1500.00, 40),
(104, 'Keyboard', 1, 800.00, 30),

(105, 'TShirt', 2, 500.00, 50),
(106, 'Jeans', 2, 1200.00, 35),
(107, 'Jacket', 2, 2500.00, 20),
(108, 'Shoes', 2, 1800.00, 25),

(109, 'Chair', 3, 2500.00, 15),
(110, 'Table', 3, 5000.00, 10),
(111, 'Sofa', 3, 15000.00, 5),
(112, 'Bookshelf', 3, 4000.00, 8),

(113, 'Refrigerator', 4, 30000.00, 8),
(114, 'WashingMachine', 4, 25000.00, 6),
(115, 'Microwave', 4, 8000.00, 12),
(116, 'Mixer', 4, 3000.00, 20),

(117, 'SQLBook', 5, 600.00, 25),
(118, 'PythonBook', 5, 750.00, 20),
(119, 'Novel', 5, 350.00, 40),
(120, 'PowerBIBook', 5, 900.00, 15);

INSERT INTO suppliers VALUES
(1, 'ABC Traders', 'Chennai', 9876543210),
(2, 'XYZ Stores', 'Madurai', 9876543211),
(3, 'Global Supply', 'Bangalore', 9876543212),
(4, 'Tech World', 'Coimbatore', 9876543213),
(5, 'Home Needs', 'Trichy', 9876543214);

INSERT INTO orderss (ordID, cusID, orddate, ordstatus, paymentmethod) VALUES
(1001, 1, '2021-01-15', 'Delivered', 'UPI'),
(1002, 2, '2022-03-22', 'Shipped', 'Credit Card'),
(1003, 3, '2023-05-10', 'Delivered', 'Debit Card'),
(1004, 4, '2024-07-18', 'Pending', 'Cash'),
(1005, 5, '2025-02-25', 'Delivered', 'Net Banking'),
(1006, 6, '2026-01-12', 'Shipped', 'UPI'),
(1007, 7, '2021-04-09', 'Cancelled', 'Credit Card'),
(1008, 8, '2022-08-14', 'Delivered', 'Debit Card'),
(1009, 9, '2023-11-20', 'Pending', 'UPI'),
(1010, 10, '2024-12-05', 'Delivered', 'Cash'),
(1011, 11, '2025-03-17', 'Shipped', 'Credit Card'),
(1012, 12, '2026-02-08', 'Delivered', 'UPI'),
(1013, 13, '2021-06-21', 'Delivered', 'Net Banking'),
(1014, 14, '2022-09-11', 'Pending', 'Cash'),
(1015, 15, '2023-02-19', 'Shipped', 'Debit Card'),
(1016, 16, '2024-04-27', 'Delivered', 'UPI'),
(1017, 17, '2025-06-13', 'Cancelled', 'Credit Card'),
(1018, 18, '2026-03-19', 'Delivered', 'Debit Card'),
(1019, 19, '2021-08-05', 'Shipped', 'Cash'),
(1020, 20, '2022-11-16', 'Delivered', 'UPI'),
(1021, 21, '2023-01-28', 'Pending', 'Net Banking'),
(1022, 22, '2024-06-09', 'Delivered', 'Credit Card'),
(1023, 23, '2025-08-22', 'Shipped', 'UPI'),
(1024, 24, '2026-04-11', 'Delivered', 'Cash'),
(1025, 25, '2021-10-14', 'Cancelled', 'Debit Card'),
(1026, 26, '2022-02-07', 'Delivered', 'UPI'),
(1027, 27, '2023-07-16', 'Shipped', 'Credit Card'),
(1028, 28, '2024-09-23', 'Delivered', 'Net Banking'),
(1029, 29, '2025-11-04', 'Pending', 'Cash'),
(1030, 30, '2026-05-16', 'Delivered', 'UPI'),
(1031, 31, '2021-12-03', 'Delivered', 'Credit Card'),
(1032, 32, '2022-04-18', 'Shipped', 'Debit Card'),
(1033, 33, '2023-09-29', 'Delivered', 'UPI'),
(1034, 34, '2024-01-13', 'Cancelled', 'Cash'),
(1035, 35, '2025-04-26', 'Delivered', 'Net Banking'),
(1036, 36, '2026-06-07', 'Pending', 'Credit Card'),
(1037, 37, '2021-03-11', 'Shipped', 'UPI'),
(1038, 38, '2022-06-25', 'Delivered', 'Cash'),
(1039, 39, '2023-12-08', 'Pending', 'Debit Card'),
(1040, 40, '2024-10-17', 'Delivered', 'UPI'),
(1041, 41, '2025-01-09', 'Shipped', 'Credit Card'),
(1042, 42, '2026-07-21', 'Delivered', 'Net Banking'),
(1043, 43, '2021-05-19', 'Delivered', 'Debit Card'),
(1044, 44, '2022-07-12', 'Cancelled', 'UPI'),
(1045, 45, '2023-03-24', 'Shipped', 'Cash'),
(1046, 46, '2024-11-06', 'Delivered', 'Credit Card'),
(1047, 47, '2025-05-14', 'Pending', 'UPI'),
(1048, 48, '2026-08-02', 'Delivered', 'Debit Card'),
(1049, 49, '2021-09-27', 'Shipped', 'Net Banking'),
(1050, 50, '2022-12-19', 'Delivered', 'UPI');


INSERT INTO orderdetails
(ord_detail_ID, ordID, pID, quantity, unitprice, discount)
VALUES
(1,1001,101,1,50000.00,5.00),
(2,1002,102,2,20000.00,10.00),
(3,1003,103,1,1500.00,0.00),
(4,1004,104,3,800.00,5.00),
(5,1005,105,2,500.00,0.00),
(6,1006,106,1,1200.00,5.00),
(7,1007,107,1,2500.00,10.00),
(8,1008,108,2,1800.00,0.00),
(9,1009,109,1,2500.00,5.00),
(10,1010,110,1,5000.00,10.00),
(11,1011,111,1,15000.00,5.00),
(12,1012,112,2,4000.00,0.00),
(13,1013,113,1,30000.00,10.00),
(14,1014,114,1,25000.00,5.00),
(15,1015,115,2,8000.00,0.00),
(16,1016,116,1,3000.00,5.00),
(17,1017,117,3,600.00,0.00),
(18,1018,118,2,750.00,5.00),
(19,1019,119,4,350.00,0.00),
(20,1020,120,1,900.00,10.00),
(21,1021,101,1,50000.00,0.00),
(22,1022,102,1,20000.00,5.00),
(23,1023,103,2,1500.00,10.00),
(24,1024,104,1,800.00,0.00),
(25,1025,105,3,500.00,5.00),
(26,1026,106,2,1200.00,0.00),
(27,1027,107,1,2500.00,5.00),
(28,1028,108,1,1800.00,10.00),
(29,1029,109,2,2500.00,0.00),
(30,1030,110,1,5000.00,5.00),
(31,1031,111,1,15000.00,10.00),
(32,1032,112,1,4000.00,5.00),
(33,1033,113,1,30000.00,0.00),
(34,1034,114,2,25000.00,10.00),
(35,1035,115,1,8000.00,5.00),
(36,1036,116,2,3000.00,0.00),
(37,1037,117,1,600.00,5.00),
(38,1038,118,3,750.00,0.00),
(39,1039,119,2,350.00,10.00),
(40,1040,120,2,900.00,5.00),
(41,1041,101,1,50000.00,10.00),
(42,1042,102,2,20000.00,0.00),
(43,1043,103,1,1500.00,5.00),
(44,1044,104,4,800.00,10.00),
(45,1045,105,1,500.00,0.00),
(46,1046,106,1,1200.00,10.00),
(47,1047,107,2,2500.00,0.00),
(48,1048,108,1,1800.00,5.00),
(49,1049,109,1,2500.00,10.00),
(50,1050,110,2,5000.00,0.00),
(51,1051,111,1,15000.00,0.00),
(52,1052,112,1,4000.00,10.00),
(53,1053,113,1,30000.00,5.00),
(54,1054,114,1,25000.00,0.00),
(55,1055,115,2,8000.00,10.00),
(56,1056,116,1,3000.00,5.00),
(57,1057,117,2,600.00,0.00),
(58,1058,118,1,750.00,10.00),
(59,1059,119,3,350.00,5.00),
(60,1060,120,1,900.00,0.00),
(61,1061,101,2,50000.00,5.00),
(62,1062,102,1,20000.00,10.00),
(63,1063,103,3,1500.00,0.00),
(64,1064,104,2,800.00,5.00),
(65,1065,105,1,500.00,10.00),
(66,1066,106,2,1200.00,5.00),
(67,1067,107,1,2500.00,0.00),
(68,1068,108,3,1800.00,5.00),
(69,1069,109,1,2500.00,0.00),
(70,1070,110,1,5000.00,10.00),
(71,1071,111,2,15000.00,5.00),
(72,1072,112,1,4000.00,0.00),
(73,1073,113,1,30000.00,10.00),
(74,1074,114,1,25000.00,5.00),
(75,1075,115,1,8000.00,0.00),
(76,1076,116,3,3000.00,10.00),
(77,1077,117,2,600.00,5.00),
(78,1078,118,1,750.00,0.00),
(79,1079,119,2,350.00,5.00),
(80,1080,120,3,900.00,10.00),
(81,1081,101,1,50000.00,0.00),
(82,1082,102,1,20000.00,5.00),
(83,1083,103,2,1500.00,0.00),
(84,1084,104,1,800.00,10.00),
(85,1085,105,4,500.00,5.00),
(86,1086,106,1,1200.00,0.00),
(87,1087,107,2,2500.00,10.00),
(88,1088,108,1,1800.00,0.00),
(89,1089,109,1,2500.00,5.00),
(90,1090,110,1,5000.00,0.00),
(91,1091,111,1,15000.00,10.00),
(92,1092,112,2,4000.00,5.00),
(93,1093,113,1,30000.00,0.00),
(94,1094,114,1,25000.00,10.00),
(95,1095,115,2,8000.00,5.00),
(96,1096,116,1,3000.00,0.00),
(97,1097,117,3,600.00,10.00),
(98,1098,118,2,750.00,5.00),
(99,1099,119,1,350.00,0.00),
(100,1100,120,2,900.00,5.00),
(101,1001,102,1,20000.00,5.00),
(102,1002,103,2,1500.00,0.00),
(103,1003,104,1,800.00,10.00),
(104,1004,105,2,500.00,5.00),
(105,1005,106,1,1200.00,0.00),
(106,1006,107,2,2500.00,10.00),
(107,1007,108,1,1800.00,5.00),
(108,1008,109,1,2500.00,0.00),
(109,1009,110,2,5000.00,5.00),
(110,1010,111,1,15000.00,0.00),
(111,1011,112,1,4000.00,10.00),
(112,1012,113,1,30000.00,5.00),
(113,1013,114,2,25000.00,0.00),
(114,1014,115,1,8000.00,10.00),
(115,1015,116,2,3000.00,5.00),
(116,1016,117,1,600.00,0.00),
(117,1017,118,2,750.00,5.00),
(118,1018,119,3,350.00,10.00),
(119,1019,120,1,900.00,0.00),
(120,1020,101,1,50000.00,5.00),
(121,1021,103,1,1500.00,10.00),
(122,1022,104,2,800.00,0.00),
(123,1023,105,1,500.00,5.00),
(124,1024,106,3,1200.00,10.00),
(125,1025,107,1,2500.00,0.00),
(126,1026,108,2,1800.00,5.00),
(127,1027,109,1,2500.00,10.00),
(128,1028,110,1,5000.00,0.00),
(129,1029,111,2,15000.00,5.00),
(130,1030,112,1,4000.00,0.00),
(131,1031,113,1,30000.00,10.00),
(132,1032,114,1,25000.00,5.00),
(133,1033,115,2,8000.00,0.00),
(134,1034,116,1,3000.00,10.00),
(135,1035,117,3,600.00,5.00),
(136,1036,118,1,750.00,0.00),
(137,1037,119,2,350.00,5.00),
(138,1038,120,1,900.00,10.00),
(139,1039,101,1,50000.00,0.00),
(140,1040,102,2,20000.00,5.00),
(141,1041,104,1,800.00,0.00),
(142,1042,105,2,500.00,10.00),
(143,1043,106,1,1200.00,5.00),
(144,1044,107,1,2500.00,0.00),
(145,1045,108,2,1800.00,10.00),
(146,1046,109,1,2500.00,5.00),
(147,1047,110,1,5000.00,0.00),
(148,1048,111,1,15000.00,5.00),
(149,1049,112,2,4000.00,10.00),
(150,1050,113,1,30000.00,0.00),
(151,1051,114,1,25000.00,5.00),
(152,1052,115,1,8000.00,10.00),
(153,1053,116,2,3000.00,0.00),
(154,1054,117,1,600.00,5.00),
(155,1055,118,2,750.00,10.00),
(156,1056,119,1,350.00,0.00),
(157,1057,120,3,900.00,5.00),
(158,1058,101,1,50000.00,10.00),
(159,1059,102,1,20000.00,0.00),
(160,1060,103,2,1500.00,5.00),
(161,1061,105,1,500.00,0.00),
(162,1062,106,2,1200.00,10.00),
(163,1063,107,1,2500.00,5.00),
(164,1064,108,1,1800.00,0.00),
(165,1065,109,2,2500.00,10.00),
(166,1066,110,1,5000.00,5.00),
(167,1067,111,1,15000.00,0.00),
(168,1068,112,2,4000.00,5.00),
(169,1069,113,1,30000.00,10.00),
(170,1070,114,1,25000.00,0.00),
(171,1071,115,2,8000.00,5.00),
(172,1072,116,1,3000.00,10.00),
(173,1073,117,2,600.00,0.00),
(174,1074,118,1,750.00,5.00),
(175,1075,119,3,350.00,10.00),
(176,1076,120,1,900.00,0.00),
(177,1077,101,1,50000.00,5.00),
(178,1078,102,2,20000.00,10.00),
(179,1079,103,1,1500.00,0.00),
(180,1080,104,3,800.00,5.00),
(181,1081,106,1,1200.00,0.00),
(182,1082,107,2,2500.00,5.00),
(183,1083,108,1,1800.00,10.00),
(184,1084,109,1,2500.00,0.00),
(185,1085,110,2,5000.00,5.00),
(186,1086,111,1,15000.00,10.00),
(187,1087,112,1,4000.00,0.00),
(188,1088,113,1,30000.00,5.00),
(189,1089,114,2,25000.00,10.00),
(190,1090,115,1,8000.00,0.00),
(191,1091,116,2,3000.00,5.00),
(192,1092,117,1,600.00,10.00),
(193,1093,118,2,750.00,0.00),
(194,1094,119,1,350.00,5.00),
(195,1095,120,3,900.00,10.00),
(196,1096,101,1,50000.00,0.00),
(197,1097,102,1,20000.00,5.00),
(198,1098,103,2,1500.00,10.00),
(199,1099,104,1,800.00,0.00),
(200,1100,105,2,500.00,5.00);

INSERT INTO payment
(payID, ordID, paydate, amount, payment_status)
VALUES
(1,1001,'2025-01-02',50000.00,'Completed'),
(2,1002,'2025-01-03',36000.00,'Completed'),
(3,1003,'2025-01-04',1500.00,'Completed'),
(4,1004,'2025-01-05',2280.00,'Completed'),
(5,1005,'2025-01-06',1000.00,'Completed'),
(6,1006,'2025-01-07',1140.00,'Completed'),
(7,1007,'2025-01-08',2250.00,'Completed'),
(8,1008,'2025-01-09',3600.00,'Pending'),
(9,1009,'2025-01-10',2375.00,'Completed'),
(10,1010,'2025-01-11',4500.00,'Completed'),
(11,1011,'2025-01-12',14250.00,'Completed'),
(12,1012,'2025-01-13',8000.00,'Completed'),
(13,1013,'2025-01-14',27000.00,'Completed'),
(14,1014,'2025-01-15',23750.00,'Pending'),
(15,1015,'2025-01-16',16000.00,'Completed'),
(16,1016,'2025-01-17',2850.00,'Completed'),
(17,1017,'2025-01-18',1800.00,'Completed'),
(18,1018,'2025-01-19',1425.00,'Completed'),
(19,1019,'2025-01-20',1400.00,'Completed'),
(20,1020,'2025-01-21',810.00,'Completed'),
(21,1021,'2025-01-22',50000.00,'Completed'),
(22,1022,'2025-01-23',19000.00,'Completed'),
(23,1023,'2025-01-24',2700.00,'Completed'),
(24,1024,'2025-01-25',800.00,'Pending'),
(25,1025,'2025-01-26',1425.00,'Completed'),
(26,1026,'2025-01-27',2400.00,'Completed'),
(27,1027,'2025-01-28',2375.00,'Completed'),
(28,1028,'2025-01-29',1620.00,'Completed'),
(29,1029,'2025-01-30',5000.00,'Completed'),
(30,1030,'2025-01-31',4750.00,'Completed'),
(31,1031,'2025-02-01',13500.00,'Completed'),
(32,1032,'2025-02-02',3800.00,'Completed'),
(33,1033,'2025-02-03',30000.00,'Pending'),
(34,1034,'2025-02-04',45000.00,'Completed'),
(35,1035,'2025-02-05',7600.00,'Completed'),
(36,1036,'2025-02-06',6000.00,'Completed'),
(37,1037,'2025-02-07',570.00,'Completed'),
(38,1038,'2025-02-08',2250.00,'Completed'),
(39,1039,'2025-02-09',630.00,'Completed'),
(40,1040,'2025-02-10',1710.00,'Completed'),
(41,1041,'2025-02-11',47500.00,'Completed'),
(42,1042,'2025-02-12',40000.00,'Completed'),
(43,1043,'2025-02-13',1425.00,'Completed'),
(44,1044,'2025-02-14',2880.00,'Pending'),
(45,1045,'2025-02-15',500.00,'Completed'),
(46,1046,'2025-02-16',1080.00,'Completed'),
(47,1047,'2025-02-17',5000.00,'Completed'),
(48,1048,'2025-02-18',1710.00,'Completed'),
(49,1049,'2025-02-19',2250.00,'Completed'),
(50,1050,'2025-02-20',10000.00,'Completed'),
(51,1051,'2025-02-21',15000.00,'Completed'),
(52,1052,'2025-02-22',3600.00,'Completed'),
(53,1053,'2025-02-23',28500.00,'Completed'),
(54,1054,'2025-02-24',25000.00,'Pending'),
(55,1055,'2025-02-25',14400.00,'Completed'),
(56,1056,'2025-02-26',2850.00,'Completed'),
(57,1057,'2025-02-27',1200.00,'Completed'),
(58,1058,'2025-02-28',675.00,'Completed'),
(59,1059,'2025-03-01',997.50,'Completed'),
(60,1060,'2025-03-02',900.00,'Completed'),
(61,1061,'2025-03-03',95000.00,'Completed'),
(62,1062,'2025-03-04',18000.00,'Completed'),
(63,1063,'2025-03-05',4500.00,'Completed'),
(64,1064,'2025-03-06',1520.00,'Completed'),
(65,1065,'2025-03-07',450.00,'Pending'),
(66,1066,'2025-03-08',2280.00,'Completed'),
(67,1067,'2025-03-09',2500.00,'Completed'),
(68,1068,'2025-03-10',5130.00,'Completed'),
(69,1069,'2025-03-11',2500.00,'Completed'),
(70,1070,'2025-03-12',4500.00,'Completed'),
(71,1071,'2025-03-13',28500.00,'Completed'),
(72,1072,'2025-03-14',4000.00,'Completed'),
(73,1073,'2025-03-15',27000.00,'Completed'),
(74,1074,'2025-03-16',23750.00,'Pending'),
(75,1075,'2025-03-17',8000.00,'Completed'),
(76,1076,'2025-03-18',8100.00,'Completed'),
(77,1077,'2025-03-19',1140.00,'Completed'),
(78,1078,'2025-03-20',750.00,'Completed'),
(79,1079,'2025-03-21',665.00,'Completed'),
(80,1080,'2025-03-22',2430.00,'Completed'),
(81,1081,'2025-03-23',50000.00,'Completed'),
(82,1082,'2025-03-24',19000.00,'Completed'),
(83,1083,'2025-03-25',3000.00,'Completed'),
(84,1084,'2025-03-26',720.00,'Completed'),
(85,1085,'2025-03-27',1900.00,'Pending'),
(86,1086,'2025-03-28',1200.00,'Completed'),
(87,1087,'2025-03-29',4500.00,'Completed'),
(88,1088,'2025-03-30',2500.00,'Completed'),
(89,1089,'2025-03-31',4750.00,'Completed'),
(90,1090,'2025-04-01',5000.00,'Completed'),
(91,1091,'2025-04-02',13500.00,'Completed'),
(92,1092,'2025-04-03',7600.00,'Completed'),
(93,1093,'2025-04-04',30000.00,'Completed'),
(94,1094,'2025-04-05',22500.00,'Pending'),
(95,1095,'2025-04-06',15200.00,'Completed'),
(96,1096,'2025-04-07',3000.00,'Completed'),
(97,1097,'2025-04-08',1800.00,'Completed'),
(98,1098,'2025-04-09',1425.00,'Completed'),
(99,1099,'2025-04-10',350.00,'Completed'),
(100,1100,'2025-04-11',1710.00,'Completed');

INSERT INTO shipment
(shipID, ordID, shipdate, deliveydate, ship_status)
VALUES
(1,1001,'2025-01-02','2025-01-05','Delivered'),
(2,1002,'2025-01-03','2025-01-06','Delivered'),
(3,1003,'2025-01-04','2025-01-08','Delivered'),
(4,1004,'2025-01-05','2025-01-09','Delivered'),
(5,1005,'2025-01-06','2025-01-10','Delivered'),
(6,1006,'2025-01-07','2025-01-11','Delivered'),
(7,1007,'2025-01-08','2025-01-12','Delivered'),
(8,1008,'2025-01-09',NULL,'In Transit'),
(9,1009,'2025-01-10','2025-01-14','Delivered'),
(10,1010,'2025-01-11','2025-01-15','Delivered'),
(11,1011,'2025-01-12','2025-01-16','Delivered'),
(12,1012,'2025-01-13','2025-01-17','Delivered'),
(13,1013,'2025-01-14','2025-01-18','Delivered'),
(14,1014,'2025-01-15',NULL,'In Transit'),
(15,1015,'2025-01-16','2025-01-20','Delivered'),
(16,1016,'2025-01-17','2025-01-21','Delivered'),
(17,1017,'2025-01-18','2025-01-22','Delivered'),
(18,1018,'2025-01-19','2025-01-23','Delivered'),
(19,1019,'2025-01-20','2025-01-24','Delivered'),
(20,1020,'2025-01-21','2025-01-25','Delivered'),
(21,1021,'2025-01-22','2025-01-26','Delivered'),
(22,1022,'2025-01-23','2025-01-27','Delivered'),
(23,1023,'2025-01-24','2025-01-28','Delivered'),
(24,1024,'2025-01-25',NULL,'Pending'),
(25,1025,'2025-01-26','2025-01-30','Delivered'),
(26,1026,'2025-01-27','2025-01-31','Delivered'),
(27,1027,'2025-01-28','2025-02-01','Delivered'),
(28,1028,'2025-01-29','2025-02-02','Delivered'),
(29,1029,'2025-01-30','2025-02-03','Delivered'),
(30,1030,'2025-01-31','2025-02-04','Delivered'),
(31,1031,'2025-02-01','2025-02-05','Delivered'),
(32,1032,'2025-02-02','2025-02-06','Delivered'),
(33,1033,'2025-02-03',NULL,'In Transit'),
(34,1034,'2025-02-04','2025-02-08','Delivered'),
(35,1035,'2025-02-05','2025-02-09','Delivered'),
(36,1036,'2025-02-06','2025-02-10','Delivered'),
(37,1037,'2025-02-07','2025-02-11','Delivered'),
(38,1038,'2025-02-08','2025-02-12','Delivered'),
(39,1039,'2025-02-09','2025-02-13','Delivered'),
(40,1040,'2025-02-10','2025-02-14','Delivered'),
(41,1041,'2025-02-11','2025-02-15','Delivered'),
(42,1042,'2025-02-12','2025-02-16','Delivered'),
(43,1043,'2025-02-13','2025-02-17','Delivered'),
(44,1044,'2025-02-14',NULL,'Pending'),
(45,1045,'2025-02-15','2025-02-19','Delivered'),
(46,1046,'2025-02-16','2025-02-20','Delivered'),
(47,1047,'2025-02-17','2025-02-21','Delivered'),
(48,1048,'2025-02-18','2025-02-22','Delivered'),
(49,1049,'2025-02-19','2025-02-23','Delivered'),
(50,1050,'2025-02-20','2025-02-24','Delivered'),
(51,1051,'2025-02-21','2025-02-25','Delivered'),
(52,1052,'2025-02-22','2025-02-26','Delivered'),
(53,1053,'2025-02-23','2025-02-27','Delivered'),
(54,1054,'2025-02-24',NULL,'In Transit'),
(55,1055,'2025-02-25','2025-03-01','Delivered'),
(56,1056,'2025-02-26','2025-03-02','Delivered'),
(57,1057,'2025-02-27','2025-03-03','Delivered'),
(58,1058,'2025-02-28','2025-03-04','Delivered'),
(59,1059,'2025-03-01','2025-03-05','Delivered'),
(60,1060,'2025-03-02','2025-03-06','Delivered'),
(61,1061,'2025-03-03','2025-03-07','Delivered'),
(62,1062,'2025-03-04','2025-03-08','Delivered'),
(63,1063,'2025-03-05','2025-03-09','Delivered'),
(64,1064,'2025-03-06',NULL,'Pending'),
(65,1065,'2025-03-07','2025-03-11','Delivered'),
(66,1066,'2025-03-08','2025-03-12','Delivered'),
(67,1067,'2025-03-09','2025-03-13','Delivered'),
(68,1068,'2025-03-10','2025-03-14','Delivered'),
(69,1069,'2025-03-11','2025-03-15','Delivered'),
(70,1070,'2025-03-12','2025-03-16','Delivered'),
(71,1071,'2025-03-13','2025-03-17','Delivered'),
(72,1072,'2025-03-14','2025-03-18','Delivered'),
(73,1073,'2025-03-15',NULL,'In Transit'),
(74,1074,'2025-03-16','2025-03-20','Delivered'),
(75,1075,'2025-03-17','2025-03-21','Delivered'),
(76,1076,'2025-03-18','2025-03-22','Delivered'),
(77,1077,'2025-03-19','2025-03-23','Delivered'),
(78,1078,'2025-03-20','2025-03-24','Delivered'),
(79,1079,'2025-03-21','2025-03-25','Delivered'),
(80,1080,'2025-03-22','2025-03-26','Delivered');

INSERT INTO reviews
(reviewID, cusID, pID, rating, review_date, comments)
VALUES
(1,1,101,4.5,'2025-01-10','Excellent laptop'),
(2,2,102,4.0,'2025-01-12','Good mobile'),
(3,3,103,5.0,'2025-01-15','Great sound quality'),
(4,4,104,3.5,'2025-01-18','Works well'),
(5,5,105,4.0,'2025-01-20','Comfortable T-shirt'),
(6,6,106,4.5,'2025-01-22','Good quality jeans'),
(7,7,107,4.0,'2025-01-25','Nice jacket'),
(8,8,108,3.5,'2025-01-28','Comfortable shoes'),
(9,9,109,5.0,'2025-02-01','Strong chair'),
(10,10,110,4.5,'2025-02-03','Beautiful table'),
(11,11,111,4.0,'2025-02-05','Comfortable sofa'),
(12,12,112,3.0,'2025-02-08','Average bookshelf'),
(13,13,113,5.0,'2025-02-10','Excellent refrigerator'),
(14,14,114,4.5,'2025-02-12','Washes clothes well'),
(15,15,115,4.0,'2025-02-15','Useful microwave'),
(16,16,116,3.5,'2025-02-17','Good mixer'),
(17,17,117,5.0,'2025-02-20','Helpful SQL book'),
(18,18,118,4.5,'2025-02-22','Easy Python guide'),
(19,19,119,4.0,'2025-02-25','Interesting novel'),
(20,20,120,5.0,'2025-02-27','Great Power BI book'),
(21,21,101,4.0,'2025-03-01','Fast performance'),
(22,22,102,3.5,'2025-03-03','Battery is average'),
(23,23,103,4.5,'2025-03-05','Clear audio'),
(24,24,104,4.0,'2025-03-08','Easy to use'),
(25,25,105,3.0,'2025-03-10','Fabric is average'),
(26,26,106,4.5,'2025-03-12','Perfect fitting'),
(27,27,107,5.0,'2025-03-15','Excellent material'),
(28,28,108,4.0,'2025-03-18','Good value'),
(29,29,109,3.5,'2025-03-20','Comfortable seating'),
(30,30,110,5.0,'2025-03-22','Excellent design');

INSERT INTO returns
(returnID, ord_detail_ID, return_date, return_quantity, return_reason, refund_amount)
VALUES
(1, 5, '2025-01-15', 1, 'Damaged product', 500.00),
(2, 12, '2025-01-20', 1, 'Wrong item delivered', 4000.00),
(3, 18, '2025-01-25', 1, 'Product not as described', 750.00),
(4, 25, '2025-02-02', 1, 'Size mismatch', 500.00),
(5, 33, '2025-02-10', 1, 'Defective product', 30000.00),
(6, 42, '2025-02-18', 1, 'Received damaged item', 20000.00),
(7, 56, '2025-02-25', 1, 'Poor quality', 3000.00),
(8, 68, '2025-03-05', 1, 'Wrong product delivered', 4000.00),
(9, 79, '2025-03-15', 1, 'Product not needed', 350.00),
(10, 95, '2025-03-25', 1, 'Damaged during shipping', 8000.00);

select * from customer;
select* from category;
select* from product;
select* from suppliers;
select*from orders;
select*from orderdetails;
select*from payment;
select*from returns;
select*from reviews;
select*from shipment;

-- 1. price greater than 10000--

select pname,price from product
where price>10000;

-- 2.all orders with status pending--

select ordID,ordstatus from orders
where ordstatus ="pending";

-- 3. product in asc of price--

select pname,price from product
order by price asc;

-- 4. top 5 most expensive product--

select pname,price from product
order by price desc
 limit 5;
 
 -- 5.particular state--
 
 select*from customer
 where state="Tamil Nadu";
 
 -- 6. different payment method--
 
 select distinct paymentmethod from orders;
 
 -- 7. stock quantity less than 50--
 
 select * from product 
 where stockquantity < 50;
 
 -- 8. total number of customer--
 
 select count(cusID) from customer;
 
 -- 9. maximum and minimum prdt prices--
 
 select max(price),min(price) from product;
 
 -- 10.total stock quantity of all prdt--
 
 select sum(stockquantity) as total from product;
 
 -- stock quantity for each prdt--
 
  select pname, sum(stockquantity) as total from product
  group by pname;
  
  -- count orders by each order status --
  
  select ordstatus,count(ordstatus)as total_orders from orders
  group by ordstatus;
  
  -- avg prdt rating from review --
  
  select avg(rating) as average_rating from reviews;
  
  -- total quantity sold for each prdt using ord details--
  
  select pID, sum(quantity) as total_quantity from orderdetails
  group by pID;
  
  -- customer who have placed order more than 1--
  
  select cusID,count(ordID) as orders from orders
  group by cusID
  having count(ordID) >1;
  
  -- total revenue--
  
  select ordID,sum(quantity*unitprice*(1-discount/100)) as total_revenue from orderdetails
  group by ordID;
  
  -- join customer and orders--
  
  select 
  c.cusID,c.cusname,o.ordID,o.orddate from orders o
  join customer as c on o.cusID=c.cusID;
  
  -- product name with category name--
  
  select
  c.catname,
  p.pname from product p
  join category as c on p.catID=c.catID;
  
  -- each orders productname,quantity,unitprice--
  
  select 
  ord.ordID,
  p.pname,
  ord.quantity,
  ord.unitprice
  from orderdetails ord
  join product as p on ord.pID=p.pID;
  
  -- cusname,orderID,payment status--
  
  select
  c.cusname,
  o.ordID,
  pay.payment_status
  from payment pay
  join orders as o on pay.ordID=o.ordID
  join customer as c on o.cusID=c.cusID;
  
  -- product and price--
  
  SELECT
    p.pID,
    p.Pname,
    p.Price
FROM Product p
LEFT JOIN OrderDetails od
    ON p.PID = od.PID;

  -- each shipment with its order id ,cus name ,shipstatus-- only pending
  
  
select c.cusname,
o.ordID,
s.ship_status
from shipment s 
join orders as o on s.ordID=o.ordID
join customer as c on o.cusID=c.cusID
group by  c.cusname,
o.ordID,
s.ship_status
having ship_status="pending";

-- display orders  between "2025-03-03" and "2025-03-21" --

select ordID,orddate from orders
where orddate between "2025-03-03" and "2025-03-21";

-- Find customer whose names start with 'S'--

select cusID,cusname from customer
where cusname like "s%";

-- Count the total number of orders.-

select count(ordID) from orders;

-- Find customers whose gender is 'Female'.--

select cusname, gender from customer 
where gender ="Female";

-- Display products in ascending order of price--

select pname ,price
from product
order by price asc; 

-- Find the maximum and minimum product prices--

select max(price) as max_price,
min(price) as min_price from product;

-- Display all unique payment methods--

select distinct payment_status from payment;

select distinct paymentmethod from orders; 

-- Find all orders with status 'Pending'--

select ordID,ordstatus from orders
where ordstatus = "pending";

-- Find the total number of orders placed by each customer( also need cusname--

select c.cusname,c.cusID,count(ordID) as total_order from orders o
join customer as c on o.cusID=c.cusID
group by cusID ;

-- Calculate the total revenue generated by each product.--

select p.pname,sum(quantity*unitprice) as total_revenue from orderdetails o
join product as p on o.pID=p.pID
group by p.pname;

select distinct c.cusID from customer c
join orders o on c.cusID=o.cusID
join orderdetails ord on o.ordID=ord.ordID
where c.cusID not in (select c.cusID from returns);


select cusID,count(*) as order_count from orders
group by cusID;

-- Use ROW_NUMBER() to rank products based on their total revenue.--

WITH ProductRevenue AS (
    SELECT 
        p.pID,
        p.pname,
        SUM(od.quantity * od.unitprice) AS total_revenue
    FROM product p
    JOIN orderdetails od
        ON p.pID = od.pID
    GROUP BY p.pID, p.pname
)
SELECT
    pID,
    pname,
    total_revenue,
    ROW_NUMBER() OVER (ORDER BY total_revenue DESC) AS revenue_rank
FROM ProductRevenue;

-- Use DENSE_RANK() to find the top 3 customers based on total spending--

with customer_spending as(select c.cusID,
sum(quantity*unitprice) as total_spend
from orderdetails ord
join orders as o on ord.ordID=o.ordID
join customer as c on o.cusID=c.cusID
group by c.cusID),

customer_rank as
 (select *, 
dense_rank() over(order by total_spend desc)as
spending_rank
    FROM Customer_spending
)
SELECT *
FROM Customer_rank
WHERE spending_rank <= 3;

-- product abouve average price--

SELECT pname, price
FROM product
WHERE price > (
    SELECT AVG(price)
    FROM product
);

-- second highest product price--

SELECT MAX(price) AS second_highest_price
FROM product
WHERE price < (
    SELECT MAX(price)
    FROM product
);

-- customer who never placed order--

SELECT cusID, cusname
FROM customer
WHERE cusID NOT IN (
    SELECT cusID
    FROM orders
    WHERE cusID IS NOT NULL
);

-- prdt above category avg price--

SELECT p.pname, p.price, p.catID
FROM product p
WHERE p.price > (
    SELECT AVG(p2.price)
    FROM product p2
    WHERE p2.catID = p.catID
);

-- Reduce stock after inserting an order detail--

DELIMITER //

CREATE TRIGGER ReduceStock
AFTER INSERT ON orderdetails
FOR EACH ROW
BEGIN
    UPDATE product
    SET stockquantity = stockquantity - NEW.quantity
    WHERE pID = NEW.pID;
END //

DELIMITER ;

-- Check stock before
SELECT stockquantity FROM product WHERE pID = 101;

-- Insert order detail
INSERT INTO orderdetails 
(ord_detail_ID, ordID, pID, quantity, unitprice, discount)
VALUES (201, 1001, 101,002, 500, 10);

-- Check stock after
SELECT stockquantity FROM product WHERE pID = 101;


-- Prevent ordering more than available stock--

DELIMITER //

CREATE TRIGGER CheckStock
BEFORE INSERT ON orderdetails
FOR EACH ROW
BEGIN
    DECLARE available_stock INT;

    SELECT stockquantity
    INTO available_stock
    FROM product
    WHERE pID = NEW.pID;

    IF NEW.quantity > available_stock THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Insufficient stock available';
    END IF;
END //

DELIMITER ;

-- Check available stock
SELECT stockquantity FROM product WHERE pID = 101;

-- Try ordering more than available stock
INSERT INTO orderdetails
(ord_detail_ID, ordID, pID, quantity, unitprice, discount)
VALUES (201, 1001, 101, 9, 500, 10);




-- Restore stock after deleting an order detail--

DELIMITER //

CREATE TRIGGER RestoreStock
AFTER DELETE ON orderdetails
FOR EACH ROW
BEGIN
    UPDATE product
    SET stockquantity = stockquantity + OLD.quantity
    WHERE pID = OLD.pID;
END //

DELIMITER ;

-- Check stock before
SELECT stockquantity FROM product WHERE pID = 101;

-- Delete inserted order detail
DELETE FROM orderdetails
WHERE ord_detail_ID = 201;

-- Check stock after
SELECT stockquantity FROM product WHERE pID = 1;

-- Get orders by customer ID--stored proced

DELIMITER //

CREATE PROCEDURE GetCustomerOrders(
    IN p_cusID INT
)
BEGIN
    SELECT
        c.cusname,
        o.ordID,
        o.orddate,
        o.ordstatus,
        o.paymentmethod
    FROM customer c
    JOIN orders o
        ON c.cusID = o.cusID
    WHERE c.cusID = p_cusID;
END //

DELIMITER ;

CALL GetCustomerOrders(1);

-- get prdt by category--

DELIMITER //

CREATE PROCEDURE GetProductsByCategory(
    IN p_catID INT
)
BEGIN
    SELECT
        p.pID,
        p.pname,
        c.catname,
        p.price,
        p.stockquantity
    FROM product p
    JOIN category c
        ON p.catID = c.catID
    WHERE p.catID = p_catID;
END //

DELIMITER ;

CALL GetProductsByCategory(1);



-- prdt with low cost--

DELIMITER //

CREATE PROCEDURE GetLowStockProducts(
    IN p_stock INT
)
BEGIN
    SELECT
        pID,
        pname,
        price,
        stockquantity
    FROM product
    WHERE stockquantity < p_stock
    ORDER BY stockquantity ASC;
END //

DELIMITER ;

CALL GetLowStockProducts(20);

-- prdt wise revenue--

DELIMITER //

CREATE PROCEDURE GetProductRevenue()
BEGIN
    SELECT
        p.pID,
        p.pname,
        SUM(
            od.quantity * od.unitprice)
	AS total_revenue
    FROM product p
    JOIN orderdetails od
        ON p.pID = od.pID
    GROUP BY p.pID, p.pname
    ORDER BY total_revenue DESC;
END //

DELIMITER ;

call GetProductRevenue();

use ecom;

SHOW DATABASES;
use ecom;
show tables
;















  
  















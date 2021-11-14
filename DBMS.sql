
Use TravelOnTheGo;

Create table PASSENGER
(Passenger_name varchar(50) ,
 Category varchar(50),
 Gender varchar(1),
 Boarding_City varchar(50),
 Destination_City varchar(50),
 Distance int,
 Bus_Type varchar(50) 
);

Create table PRICE
(
 Bus_Type varchar(50),
 Distance int ,
 Price int
 );



insert into `PASSENGER` values("Sejal","AC","F","Bengaluru","Chennai",350,"Sleeper");
insert into `PASSENGER` values("Anmol"," Non-AC ","M","Mumbai","Hyderabad",700,"Sitting");
insert into `PASSENGER` values("Pallavi","AC","F","Panaji","Bengaluru",600,"Sleeper");
insert into `PASSENGER` values("Khusboo","AC","F","Chennai","Mumbai",1500,"Sleeper");
insert into `PASSENGER` values("Udit","Non-AC","M","Trivandrum","panaji",1000,"Sleeper");
insert into `PASSENGER` values("Ankur","AC","M","Nagpur","Hyderabad",500,"Sitting");
insert into `PASSENGER` values("Hemant","Non-AC","M","panaji","Mumbai",700,"Sleeper");
insert into `PASSENGER` values("Manish","Non-AC","M","Hyderabad","Bengaluru",500,"Sitting");
insert into `PASSENGER` values("Piyush","AC","M","Pune","Nagpur",700,"Sitting");


insert into `PRICE` values("Sleeper",350,770);
insert into `PRICE` values("Sleeper",500,1100);
insert into `PRICE`values("Sleeper",600,1320);
insert into `PRICE` values("Sleeper",700,1540);
insert into `PRICE`values("Sleeper",1000,2200);
insert into `PRICE` values("Sleeper",1200,2640);
insert into `PRICE` values("Sleeper",350,434);
insert into `PRICE`values("Sitting",500,620);
insert into `PRICE`values("Sitting",500,620);
insert into `PRICE`values("Sitting",600,744);
insert into `PRICE` values("Sitting",700,868);
insert into `PRICE` values("Sitting",1000,1240);
insert into `PRICE`values("Sitting",1200,1488);
insert into `PRICE` values("Sitting",1500,1860);
 

-- 3QUES--
SELECT COUNT(GENDER) FROM `PASSENGER` WHERE DISTANCE>=600 AND GENDER='M';
SELECT COUNT(GENDER) FROM `PASSENGER` WHERE DISTANCE>=600 AND GENDER='F';
-- 4QUES--
SELECT MIN(Price) from `PRICE` WHERE Bus_Type="Sleeper";
-- 5QUES--
SELECT Passenger_Name from `PASSENGER` where Passenger_Name like 'S%';
-- 6QUES--
SELECT A.Passenger_Name,A.Boarding_City,A.Destination_City,A.Bus_Type,COUNT(B.Price ) AS TOTAL_PRICE from `PASSENGER` AS A,
`PRICE` AS B GROUP BY A.Passenger_Name;
-- 7Ques--
SELECT A.Passenger_Name,B.Price,A.DISTANCE FROM `PASSENGER`AS A ,`PRICE` AS B  WHERE  B.Bus_Type='Sitting' and A.Distance=1000;
-- 8Ques -- 
SELECT A.Passenger_Name,A.BUS_TYPE , B.PRICE FROM `PASSENGER`AS A ,`PRICE` AS B WHERE B.DISTANCE=600 AND A.Passenger_Name='Pallavi';
-- 9 Ques --
SELECT DISTINCT(DISTANCE) FROM `PASSENGER` ORDER BY DISTANCE DESC;
-- 10QUES--
SELECT A.Passenger_Name,A.BUS_TYPE , B.PRICE FROM `PASSENGER`AS A ,`PRICE` AS B;
-- 11Ques --
SELECT B.DISTANCE,A.BUS_TYPE , B.PRICE FROM `PASSENGER`AS A ,`PRICE` AS B;


 
 
 
 
 
create database Ola;
Use Ola;
#1. Retrieve all successful bookings:
create view successful_bookings as
select * from bookings
where Booking_status ='Success';
#1. Retrieve all successful bookings:
select*from successful_bookings;

#2. Find the average ride distance for each vehicle type:
create view ride_distance_for_each_vehicle as
select Vehicle_Type, Avg(Ride_Distance) from bookings
as avg_distance
GROUP BY Vehicle_Type;

select * from ride_distance_for_each_vehicle;


#3. Get the total number of cancelled rides by customers:
create view cancelled_rides_by_customers as
select count(*) from bookings
where Booking_Status ='Canceled by Customer';

select * from cancelled_rides_by_customers;
select * from bookings

#4. List the top 5 customers who booked the highest number of rides:
create view Top_5_customers as
select Customer_ID, COUNT(Booking_ID) as total_rides
from bookings
group by Customer_ID
order by total_rides DESC
LIMIT 5;

SELECT * from Top_5_customers;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
create view Rides_Canceled_by_Drivers_P_C_Issues as
select count(*) from bookings
where Canceled_Rides_by_Driver ='Personal & Car related issue' ;

select * from  Rides_Canceled_by_Drivers_P_C_Issues;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
create view Max_Min_Driver_Ratings as
select max(Driver_Ratings) as Max_Rating , min(Driver_Ratings) as Min_Rating from bookings
where Vehicle_Type ='Prime Sedan';

select * from Max_Min_Driver_Ratings ;

#7. Retrieve all rides where payment was made using UPI:
create view UPI_Payment as
select *from bookings 
where Payment_Method ='UPI';

 select * from UPI_Payment;
select * from bookings

#8. Find the average customer rating per vehicle type:
create view Avg_Customer_Rating as
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
from bookings 
group by Vehicle_Type;

select * from Avg_Customer_Rating;

#9. Calculate the total booking value of rides completed successfully:
create view Total_Successful_Ride_Value as
select SUM(Booking_Value) as Total_Successful_Ride_Value from bookings
where Booking_Status = 'Success';

select * from Total_Successful_Ride_Value ;

#10. List all incomplete rides along with the reason:
create view Incomplete_Rides_Reason as
select Booking_ID,Incomplete_Rides_Reason from bookings
where Incomplete_Rides = 'Yes';

select * from Incomplete_Rides_Reason ;





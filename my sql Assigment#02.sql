create database Students_Details;
use Students_Details;
create table Students_Details(
StudentsID int not null,
Students_Name varchar(20) not null,
primary key(StudentsID)
);
insert into students_Details values("1001","Mary"),
("1002","Jane"),
("1003","Daniel"),
("1004","Jack"),
("1005","Harold");
create table Course_Details(
CourseID int not null,
CourseName varchar(30) not null,
StudentsID int not null,
foreign key Course_Details(StudentsID) references students_details(StudentsID) 
);
insert into Course_Details values("5001","PHP","1004"),
("5002","JAVA","1001"),
("5003","ASP.NET","1001"),
("5004","RUBY","1002");

create table Teachers_Details(
TeacherID int not null,
TeacherName varchar(20),
CourseID int not null,
foreign key Teachers_Details(CourseID) references Course_Details(CourseID)
);

insert into Teachers_Details values("3001","Jill","5003"),
("3002","Greul","5002"),
("3003","Jemkins","5001"),
("3004","Polo","5004");

-- Fetch all column's details by using join.
select * from Students_Details join Course_Details on Students_Details.StudentsID = Course_Details.StudentsID
join Teachers_Details on Course_Details.CourseID = Teachers_Details.CourseID;

-- Fetch the details of students who appeared in asp.net.
select * from Students_Details join Course_Details on Students_Details.StudentsID = Course_Details.StudentsID
join Teachers_Details on Course_Details.CourseID = Teachers_Details.CourseID where Course_Details.CourseName = 'ASP.NET';
-- practice all joins which are covered in the class like, cross join, left join, right join and inner join.
-- Cross join
select * from students_details cross join Course_Details  cross join Teachers_Details;

-- left join
select * from students_details left join Course_Details on Students_Details.StudentsID = Course_Details.StudentsID left
join Teachers_Details on Course_Details.CourseID = Teachers_Details.CourseID;
 -- Right join
 select * from students_details right join Course_Details on Students_Details.StudentsID = Course_Details.StudentsID right
join Teachers_Details on Course_Details.CourseID = Teachers_Details.CourseID;

-- inner join
select * from students_details inner join Course_Details on Students_Details.StudentsID = Course_Details.StudentsID inner
join Teachers_Details on Course_Details.CourseID = Teachers_Details.CourseID; 

-- Alias name
select * from students_details sd join Course_Details cd on sd.StudentsID = cd.StudentsID join Teachers_Details td on cd.CourseID = td.CourseID;

-- likee
select * from students_details where students_details.Students_Name like 'M%';
select * from course_details where Course_details.CourseName like 'P%';
select * from teachers_details where Teachers_details.TeacherName like 'J%';


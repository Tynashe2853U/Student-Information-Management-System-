--***********Group Members*********
--Malcolm Mudehwe 577564
--Christian Anyimadu 577920
--Lethabo Thapelo Phofa 577636
--Tinashe Ndawe 577936

--****************NB***************

--Uncomment each of the commands, if you have executed a command then comment it before executing the next commamd.

CREATE DATABASE BCStudentDB;

--USE BCStudentDB;
--GO
---------------------------------------------------------------Creating tables--------------------------------------------------------------------------------
/*
CREATE TABLE Student
(
  StudentNumber INT IDENTITY(1000,1) PRIMARY KEY ,
  Firstname VARCHAR(50) NOT NULL ,
  Surname VARCHAR(50) NOT NULL ,
  ProfilePhoto VARCHAR(200) ,
  DateOfBirth DATE NOT NULL ,
  Gender VARCHAR(20) NOT NULL ,
  phone VARCHAR(20),
  Residence VARCHAR(50) 
)

CREATE TABLE Module
(
  ModuleCode INT IDENTITY(1,1) PRIMARY KEY ,
  ModuleName VARCHAR(50) NOT NULL  ,
  ModDescription VARCHAR(150) NOT NULL ,
  Links VARCHAR(MAX)  NOT NULL
)
CREATE TABLE StudentModule
(
    StudNo INT REFERENCES Student(StudentNumber) ,
    ModCode INT REFERENCES Module(ModuleCode) 
    PRIMARY KEY (StudNo, ModCode)
 
) 
-----------------------------------------------------------------------Populating Tables-------------------------------------------------------------------------------------
--*********NB**********
--Inorder to get the images displayed, save the file to downloads and change the username
--On my device it's malco, you'd then have to change that to fit the user profile on your device

INSERT INTO dbo.Student VALUES
('Lionel', 'Messi', 'C:\Users\malco\Downloads\PRG282- Project\PRG282- Project\bin\Debug\messi.jpeg', '1987-06-24', 'Male', '0624398740', 'Rosario, Argentina'),
('Christiano', 'Ronaldo', 'C:\Users\malco\Downloads\PRG282- Project\PRG282- Project\bin\Debug\ronaldo.jpeg', '1985-11-15', 'Male', '0795026879', 'Funchal, Portugal'),
('Alex', 'Morgan', 'C:\Users\malco\Downloads\PRG282- Project\PRG282- Project\bin\Debug\alex.jpeg', '1989-07-02', 'Female', '0710287437', 'Carlifonia, United States'),
('Erling', 'Haaland', 'C:\Users\malco\Downloads\PRG282- Project\PRG282- Project\bin\Debug\erling.jpeg', '2000-07-24', 'Male', '0810865420', 'Manchester, United Kingdom'),
('Sam', 'Kerr', 'C:\Users\malco\Downloads\PRG282- Project\PRG282- Project\bin\Debug\sam.jpeg', '1993-09-10', 'Female', '0712068731', 'East Fremantle, Australia');


INSERT INTO dbo.Module VALUES
('Information Systems', 'This module covers the cloud, and all of its characteristics and aspects', 'https://www.britannica.com/topic/information-system'),
('Software Testing', 'This module covers the different types of testing, and what each aspect entails', 'https://www.ibm.com/topics/software-testing#:~:text=Software%20testing%20is%20the%20process,Test%20management%20plan'),
('Mathematics', 'This module covers calculus and its various applications in the real world', 'https://www.cuemath.com/calculus/'),
('Statistics', 'This module covers discrete and continuous aspects of statistics, and how to apply them', 'https://www.britannica.com/science/statistics'),
('Programming', 'This module covers C# Windows form development, with databases and file handling', 'https://www.w3schools.com/cs/index.php'); 

INSERT INTO dbo.StudentModule VALUES
(1000, 2) 

INSERT INTO dbo.StudentModule VALUES 
(1001, 2.3) 

INSERT INTO StudentModule VALUES
(1000, 4)
*/
---------------------------------------------------------------------------Merging Tables----------------------------------------------------------------------------
/*
SELECT StudentNumber, FirstName, Surname, ModCode, ModuleName FROM
dbo.Student INNER JOIN dbo.StudentModule 
ON Student.StudentNumber = StudentModule.StudNo
INNER JOIN dbo.Module
ON Module.ModuleCode = StudentModule.ModCode
GROUP BY StudentNumber, Firstname, Surname, ModCode, ModuleName;
*/
------------------------------------------------------
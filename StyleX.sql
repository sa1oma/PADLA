create database styleX;

use styleX;

create table Workers
(
WorkerID int primary key auto_increment,
WorkerSurname varchar(100) not null,
WorkerName varchar(100) not null,
WorkerPatronymic varchar(100) not null,
WorkerLogin int not null,
WorkerPassword int not null,
WorkerStatus varchar(100) not null,
WorkerDate_of_Kick datetime(100) not null
);

create table Clients
(
ClientsID int primary key auto_increment,
ClientsSurname varchar(100) not null,
ClientsName varchar(100) not null,
ClientsPatronymic varchar(100) not null,
ClientsNumberPhone varchar(250),
ClientsLogin int not null,
ClientsPassword int not null
);

create table Price_List_Services
(
Price_List_ServicesID int primary key auto_increment,
Price_List_Services_Title varchar(100) not null,
Price_List_Services_Description varchar(100) not null,
Price_List_Services_Cost int not null
);

create table Cash_Journal
(
Cash_JournalID int primary key auto_increment,
WorkerID int not null, foreign key (WorkerID) references Workers(WorkerID),
ClientsID int not null, foreign key (ClientsID) references Clients(ClientsID),
Price_List_ServicesID int not null, foreign key (Price_List_ServicesID) references Price_List_Services(Price_List_ServicesID),
Total_amount int not null
);
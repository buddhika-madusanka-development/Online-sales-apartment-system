CREATE TABLE users
(
user_ID varchar(10) not null,
user_mail varchar(40) not null,
user_password varchar(20) not null,
user_first_name varchar(40) not null,
user_last_name varchar(40) not null,
user_account_type varchar(15) not null,
user_profile_picture text not null,
CONSTRAINT REG_USER_PK PRIMARY KEY(user_ID)
);


CREATE TABLE agent
(
user_ID varchar(10) not null,
agent_ID varchar(10) not null,
agent_phone_number varchar(15) not null,
agent_NIC varchar(15) not null,
agent_agency varchar(40) not null,
agent_experience int not null,
agent_customer_count int not null,
agent_short_description varchar(256) not null,
agent_description text not null,
CONSTRAINT AGENT_PK PRIMARY KEY(agent_ID),
CONSTRAINT AGENT_FK FOREIGN KEY(user_ID) REFERENCES users(user_ID)
);


CREATE TABLE apartment
(
apartment_ID varchar(10) not null,
apartment_type varchar(10) not null,
publisher_date date not null,
publisher_ID varchar(10) not null,
apartment_first_address_line varchar(60) not null,
apartment_second_address_line varchar(60) not null,
apartment_city varchar(20) not null,
apartment_contact_number varchar(15) not null,
apartment_cost money not null,
apartment_person_count int not null,
apartment_number_roms int not null,
CONSTRAINT APARTMENT_PK PRIMARY KEY (apartment_ID),
CONSTRAINT APARTMENT_FK FOREIGN KEY (publisher_ID) REFERENCES users(user_ID) 
);


CREATE TABLE images
(
image_ID varchar(10) not null,
apartment_ID varchar(10) not null,
image_name varchar(100) not null,
CONSTRAINT IMAGE_PK PRIMARY KEY (image_ID),
CONSTRAINT IMAGE_FK FOREIGN KEY (apartment_ID) REFERENCES apartment (apartment_ID)
);


CREATE TABLE booking
(
booking_ID varchar(10) not null,
apartment_id varchar(10) not null,
user_ID varchar(10) not null,
room_count varchar(10) not null,
day_count varchar(2) not null,
CONSTRAINT BOOKING_PK PRIMARY KEY (booking_ID),
CONSTRAINT FK_BOOKING_APARTMENT FOREIGN KEY (apartment_ID)
REFERENCES apartment (apartment_ID),
CONSTRAINT FK_BOOKING_USER FOREIGN KEY (user_ID) REFERENCES users (user_ID)
);


CREATE TABLE seller
(
user_ID varchar(10) not null,
seller_ID varchar(10) not null,
seller_phone_number varchar(15) not null,
seller_NIC varchar(15) not null,
CONSTRAINT REG_SELLER_PK PRIMARY KEY(seller_ID),
CONSTRAINT REG_SELLER_FK FOREIGN KEY(user_ID) REFERENCES users(user_ID)
);



CREATE TABLE payment
(
payment_ID varchar(10) not null,
sender_ID varchar(10) not null,
seller_ID varchar(10) not null,
payment_amount varchar(10) not null,
CONSTRAINT PAYMENT_PK PRIMARY KEY (payment_ID),
CONSTRAINT FK_PAYMENT_SELLER FOREIGN KEY (seller_ID) REFERENCES
seller(seller_ID),
CONSTRAINT FK_PAYMENT_USER FOREIGN KEY (sender_ID) REFERENCES
users(user_ID)
);



CREATE TABLE document
(
document_ID varchar(10) not null,
agent_ID varchar(10) not null,
document_name varchar(40) not null,
CONSTRAINT DOCUMENT_PK PRIMARY KEY (document_ID),
CONSTRAINT DOCUMENT_FK FOREIGN KEY (agent_ID) REFERENCES
agent(agent_ID)
);


CREATE TABLE apartment_comment
(
comment_ID varchar(10) not null,
user_ID varchar(10) not null,
apartment_ID varchar(10) not null,
comment_date date not null,
comment_content text not null,
CONSTRAINT APARTMENT_COMMENT_PK PRIMARY KEY (comment_ID),
CONSTRAINT FK_APARTMENT_COMMENT_USER FOREIGN KEY (user_ID)
REFERENCES users(user_ID),
CONSTRAINT FK_APARTMENT_COMMENT_APARTMENT FOREIGN KEY
(apartment_ID) REFERENCES apartment(apartment_ID) 
);



CREATE TABLE request(
request_id varchar(10),
request_date date not null,
agent_id varchar(10) not null,
CONSTRAINT REQUEST_PK PRIMARY KEY(request_id),
CONSTRAINT REQUEST_FK FOREIGN KEY(agent_id) REFERENCES agent(agent_id)
);








INSERT INTO users
VALUES('U0001','kavindu@gmail.com','erwfgt','Kavindu','Dilshan','Agent','kavindudilshan.jpg');
INSERT INTO users
VALUES('U0002','heshan@gmail.com','sderts','Heshan','Perera','Agent','heshanperera.jpg');
INSERT INTO users
VALUES('U0003','vidusha@gmail.com','werdt','Vidusha','Bandara','Agent','vidushabandare.jpg');
INSERT INTO users
VALUES('U0004','supuni@gmail.com','feyts','Supuni','Silva','Agent','supunisilva.jpg');
INSERT INTO users
VALUES('U0005','Romesh123@gmail.com','P@ssw6','Romesh','Perera','Agent','romeshperera.jpg');
INSERT INTO users
VALUES('U0006','Dinesh123@gmail.com','Secr3t','Dinesh','Rajapakshe','seller','DineshRajapakshe.jpg');
INSERT INTO users
VALUES('U0007','MaliniGunawar@hotmail.com','Ch@nge','Malini','Gunawardhana','seller','MaliniGunawardhana.jpg');
INSERT INTO users
VALUES('U0008','IsharaSam112@gmail.com','Str0ng#1','Ishara','Samarasinghe','seller','IsharaSamarasinghe.jpg');
INSERT INTO users
VALUES('U0009','Sanjeewa1995@gmail.com','ihg865','Sanjeewa','Jayawardhana','seller','SanjeewaJayawardhana.jpg');
INSERT INTO users
VALUES('U0010','SChamara@gmail.com','Pa$$w0rd','Chamara','Senanayake','seller','ChamaraSenanayake.jpg');
INSERT INTO users
VALUES('U0011','Deepaniperera@hotmail.com','9P@ssw0rdt','Deepani','Perera','seller','DeepaniPerera.jpg');
INSERT INTO users
VALUES('U0012','chandimaJ@hotmail.com','November@21','Chandima','Jayawardena','user','ChandimaJayawardena.jpg');
INSERT INTO users
VALUES('U0013','madushaweerasinghe95@hotmail.com','Pr1v@cY$afe','Madusha','Weerasinghe','user','MadushaWeerasinghe.jpg');
INSERT INTO users
VALUES('U0014','itzTharindu@protonmail.com','9P@$$c0d3R3ady','Tharindu','Liyanage','user','TharinduLiyanage.jpg');
INSERT INTO users
VALUES('U0015','RuwaniFernan@gmail.com','H1d3nd$33k!','Ruwini','Fernando','user','RuwiniFernando.jpg');
INSERT INTO users
VALUES('U0016','samadhiNilanka@hotmail.com','cuiteP4SS','Samadhi','Nilanka','seller','SamadhiNilanka.jpg');



INSERT INTO agent VALUES ('U0001', 'A0001', '0702265378','894534456V', 'SELLOLL', 3, 32, 'Lorem ipsum dolor, sit amet', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Saepe iusto magni dolor quod!
') ;
INSERT INTO agent VALUES ('U0002', 'A0002', '0702234278','912368326V', 'WECARE', 2, 37, 'Lorem ipsum dolor, sit amet', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Saepe iusto magni dolor quod!
') ;
INSERT INTO agent VALUES ('U0003', 'A0003', '0702123448','862334456V', 'ISELL', 1, 52, 'Lorem ipsum dolor, sit amet', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Saepe iusto magni dolor quod!
') ;
INSERT INTO agent VALUES ('U0004', 'A0004', '0713131318','855145135V', 'BESTAGENT', 5, 76, 'Lorem ipsum dolor, sit amet', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Saepe iusto magni dolor quod!
') ;
INSERT INTO agent VALUES ('U0005', 'A0005', '0713131548','836747654V', 'AGENTDETERGENT', 5, 62, 'Lorem ipsum dolor, sit amet', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Saepe iusto magni dolor quod!
') ;


INSERT INTO apartment VALUES ('AP0001', 'SELL', '2023-05-10', 'U0006', '123/4', 'beachfront villas', 'colombo', '0705645234', 3000000, 0, 4 );
INSERT INTO apartment VALUES ('AP0002', 'SELL', '2023-04-13', 'U0007', '34/2', 'second street', 'gampaha', '0713415244', 4500000, 0, 4 );
INSERT INTO apartment VALUES ('AP0003', 'SELL', '2023-02-23', 'U0008', '177/1', 'temple road', 'kaluthara', '0753543314', 12000000, 0, 6 );
INSERT INTO apartment VALUES ('AP0004', 'RENT', '2023-01-13', 'U0009', '45/3', 'flower junction', 'galle', '0772534135', 10000, 2, 1 );
INSERT INTO apartment VALUES ('AP0005', 'RENT', '2023-07-16', 'U0010', '1/12', 'paradise lane', 'kandy', '0782434556', 25000, 4, 5 );
INSERT INTO apartment VALUES ('AP0006', 'RENT', '2023-06-27', 'U0011', '123', 'court complex', 'matara', '0705662474', 30000, 3, 3 );
INSERT INTO apartment VALUES ('AP0007', 'SELL', '2023-05-23', 'U0016', '121/4', 'highlevel road', 'maharagama', '0717856234', 15000000, 0, 6 );


INSERT INTO images VALUES ('I0001', 'AP0001', 'I10001,jpg');
INSERT INTO images VALUES ('I0002', 'AP0002', 'I10002,jpg');
INSERT INTO images VALUES ('I0003', 'AP0003', 'I10003,jpg');
INSERT INTO images VALUES ('I0004', 'AP0004', 'I10004,jpg');
INSERT INTO images VALUES ('I0005', 'AP0005', 'I10005,jpg');
INSERT INTO images VALUES ('I0006', 'AP0006', 'I10006,jpg');


INSERT INTO booking VALUES ('B0001','AP0004', 'U0009', '1', '4');
INSERT INTO booking VALUES ('B0002','AP0005', 'U0010', '5', '7');
INSERT INTO booking VALUES ('B0003','AP0006', 'U0011', '3', '2');


INSERT INTO seller VALUES ('U0006', 'S0001', '0705645234', '796747634V' );
INSERT INTO seller VALUES ('U0007', 'S0002', '0713415244', '731236842V' );
INSERT INTO seller VALUES ('U0008', 'S0003', '0753543314', '861327651V' );
INSERT INTO seller VALUES ('U0016', 'S0004', '0717856234', '883424136V' );


INSERT INTO payment VALUES ('PID0001', 'U0012', 'S0001', '3000000');
INSERT INTO payment VALUES ('PID0002', 'U0013', 'S0002', '4500000');
INSERT INTO payment VALUES ('PID0003', 'U0014', 'S0003', '12000000');
INSERT INTO payment VALUES ('PID0004', 'U0015', 'S0004', '15000000');


INSERT INTO document VALUES ('DID0001', 'A0001', 'Kavind.pdf');
INSERT INTO document VALUES ('DID0002', 'A0002', 'Heshan.pdf');
INSERT INTO document VALUES ('DID0003', 'A0003', 'Vidusha.pdf');
INSERT INTO document VALUES ('DID0004', 'A0004', 'Supuni.pdf');
INSERT INTO document VALUES ('DID0005', 'A0005', 'romesh.pdf');


INSERT INTO apartment_comment VALUES ('CID0001', 'U0012', 'AP0001', '2023-06-01', 'The apartment itself is decent, but the noise from the street can be bothersome at times');
INSERT INTO apartment_comment VALUES ('CID0002', 'U0013', 'AP0002', '2023-09-21', 'The cooling system is unreliable and internet connection is sometimes spotty');
INSERT INTO apartment_comment VALUES ('CID0003', 'U0014', 'AP0003', '2024-02-01', 'The landlord is incredibly responsive and always addresses any issues promptly');
INSERT INTO apartment_comment VALUES ('CID0004', 'U0015', 'AP0007', '2024-02-23', 'The price is reasonable considering the quality and location of the apartment');


INSERT INTO request VALUES ('R0001', '2023-05-01', 'A0001' );
INSERT INTO request VALUES ('R0002', '2023-05-12', 'A0002' );
INSERT INTO request VALUES ('R0003', '2023-02-23', 'A0003' );
INSERT INTO request VALUES ('R0004', '2023-03-09', 'A0004' );
INSERT INTO request VALUES ('R0005', '2023-01-12', 'A0005' );

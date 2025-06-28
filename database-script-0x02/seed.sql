INSERT INTO users(user_id, first_name, last_name, email, password_hash, phone_number)
VALUES
(1, 'Mike','Opare''mikeopare@gmail.com', 'hashed_password1' '+233543521863'),
(2,'Felix','Fleku','felixfleku@gmail.com','hashed_password2','+23354788125'),
(3,'Godwin','Ayroe','godwingayroe@gmail.com','hashed_password3','+2330322195783'),
(4,'Asempah','Fafali','asempahfafali@gmail.com','hashed_password4','+233546678594');

INSERT INTO Property(Property_id,host_id,name,description,location,Price_per_night,created_at,updated_at)
VALUES 
(1,1,'Warm apartment','A serene and warm apartment in the city','Ghana',150.00,NOW(),NOW()),
(2,2,'Modern cite','A modern and splendid apartment','Ghana',500.00,NOW(),NOW()),
(3,3,'Calm home','Comfortable space in the suburb','Ghana',1000.00,NOW(),NOW()),
(4,4,'Executive suite','Peaceful space and interesting view','Ghana',3500.00,NOW(),NOW());

INSERT INTO Booking(booking_id,user_id,property_id,start_date,end_date,total_price,created_at)
VALUES(1,1,1,'2022-06-28','2025-07-05',2550.00,NOW()),
(2,2,2,'2023-02-27','2025-04-28',550.00,NOW()),
(3,3,3,'2021-04-26','2025-05-27',650.00,NOW()),
(4,4,4,'2020-02-25','2025-05-28',340.00,NOW());

INSERT INTO Payment(payment_id,booking_id,amount,payment_date,payment_method)
VALUES(1,1,2550.00,NOW(),'Paypal'),
(2,2,2550.00,NOW(),'Credit Card'),
(3,3,750.00,NOW(),'Stripe'),
(4,4,540.00,NOW(),'Paypal');

INSERT INTO Review(review_id,user_id,property_id,rating,comment,created_at)
VALUES(
    1,1,1,5,'A wonderful and splendid scenery',NOW()),
(2,2,2,3,'A good place to rest',NOW()),
(3,3,3,4,'Wonderful room',NOW()),
(4,4,4,2,'I will recommend this place anytime',NOW());

INSERT INTO Message(message_id,sender_id,recipient_id,message,sent_at)
VALUES(
    1,1,1,'Hey there!, Can i get to book an apartment',NOW()),
    (2,2,2,'Good day!, can i get a place to rest tonight',NW()),
    (3,3,3,'Hello!, Kindly assist me spend holidays with my family at your hotel',NOW()),
    (4,4,4,'Hi!, Are there any rooms for this weekend?',NOW());

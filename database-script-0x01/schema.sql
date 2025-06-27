CREATE TABLE users(
    user_id UUID PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Property(
    Property_id UUID PRIMARY KEY,
    host_id UUID FOREIGN KEY REFERENCES users(user_id) NOT NULL,
    name VARCHAR (100) NOT NULL
description TEXT NOT NULL)
location VARCHAR(255) NOT NULL,
Price_per_night DECIMAL NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

);

CREATE TABLE Booking(
    booking_id UUID PRIMARY KEY,
    user_id FOREIGN KEY REFERENCES users(user_id),
    property_id FOREIGN KEY REFERENCES Property(Property_id),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TYPE ENUM (credit_card, paypal, stripe);
CREATE TABLE Payment(
    payment_id UUID PRIMARY KEY,
    booking_id FOREIGN KEY REFERENCES Booking(booking_id),
    amount DECIMAL NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_method ENUM (credit_card,paypal, stripe) NOT NULL,
);

CREATE TABLE Review(
    review_id UUID PRIMARY KEY,
    user_id FOREIGN KEY REFERENCES users(user_id) NOT NULL,
    property_id FOREIGN KEY REFERENCES Property(Property_id),
    rating INT CHECK (rating >= 1 AND rating <= 5) NOT NULL,
    comment TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Message(
    message_id UUID PRIMARY KEY,
    sender_id FOREIGN KEY REFERENCES users(user_id),
    recipient_id FOREIGN KEY REFERENCES users(user_id),
    message_body TEXT NOT NULL,
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
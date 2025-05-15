
CREATE DATABASE ReservationDB;
USE ReservationDB;

CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) NOT NULL,
    Password VARCHAR(50) NOT NULL,
    IsManager BOOLEAN DEFAULT FALSE
);

CREATE TABLE Services (
    ServiceID INT PRIMARY KEY AUTO_INCREMENT,
    ServiceName VARCHAR(100) NOT NULL
);

CREATE TABLE Reservations (
    ReservationID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    ServiceID INT,
    ReservationDate DATETIME NOT NULL,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID)
);

INSERT INTO Users (Username, Password, IsManager)
VALUES ('ebrar', '1234', FALSE), ('admin', 'adminpass', TRUE);

INSERT INTO Services (ServiceName)
VALUES ('Haircut'), ('Massage'), ('Table Reservation');

INSERT INTO Reservations (UserID, ServiceID, ReservationDate)
VALUES (1, 1, '2025-05-03 14:00:00');

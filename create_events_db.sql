-- Create the "Events" database
CREATE DATABASE Events;

-- Use the "Events" database
USE Events;

-- Create the "Events" table
CREATE TABLE Events (
    eventID INT PRIMARY KEY,
    event_name VARCHAR(255),
    event_date DATE,
    event_location VARCHAR(255),
    event_description TEXT,
    clientID INT,
    FOREIGN KEY (clienteID) REFERENCES client(ClienteID)
);

-- Create the "Participants" table
CREATE TABLE Participants (
    participantID INT PRIMARY KEY,
    participant_name VARCHAR(255),
    participant_email VARCHAR(255),
    participant_phone VARCHAR(15),
    eventID INT,
    FOREIGN KEY (eventID) REFERENCES event(eventID)
);

-- Create the "Tasks" table
CREATE TABLE Tasks (
    taskID INT PRIMARY KEY,
    task_escription TEXT,
    task_StartDate DATE,
    task_EndDate DATE,
    eventID INT,
    FOREIGN KEY (eventID) REFERENCES event(eventID)
);

-- Create the "Budgets" table
CREATE TABLE Budgets (
    budgetID INT PRIMARY KEY,
    budget_description TEXT,
    budget_amount DECIMAL(10, 2),
    eventID INT,
    FOREIGN KEY (eventID) REFERENCES event(eventID)
);







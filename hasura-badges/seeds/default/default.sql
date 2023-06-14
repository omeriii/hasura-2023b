-- Insert data into backoffice_users

TRUNCATE backoffice_users RESTART IDENTITY CASCADE;
ALTER SEQUENCE backoffice_users_id_seq RESTART WITH 3;
INSERT INTO backoffice_users (id, name)
VALUES 
(1, 'Luke'), 
(2, 'Darth');



-- Insert data into badges_definitions
TRUNCATE badges_definitions RESTART IDENTITY CASCADE;
ALTER SEQUENCE badges_definitions_id_seq RESTART WITH 3;
INSERT INTO badges_definitions (id, title, description, created_by, modified_by)
VALUES 
(1, 'Laser Swordmanship', 'You can light a saber on and off real fast.', 1, 1), 
(2, 'Gunmanship', 'Unlike stormtroopers, you can hit your target', 2, 2);

-- Insert data into requirements_definitions
TRUNCATE requirements_definitions RESTART IDENTITY CASCADE;
ALTER SEQUENCE requirements_definitions_id_seq RESTART WITH 5;
INSERT INTO requirements_definitions (id, badge_id, title, description, created_by, modified_by)
VALUES 
(1, 1, 'Gain a title', 'You have gained a certificate from a laser sword accademy', 1, 1), 
(2, 1, 'Make experience', 'You participated and survived at least 3 battles', 1, 1), 
(3, 2, 'Gain a title', 'You have gained a certificate from a laser gun accademy', 1, 1), 
(4, 2, 'Make experience', 'You participated and survived at least 3 battles', 1, 1);

TRUNCATE Students RESTART IDENTITY CASCADE;
INSERT INTO Students (FirstName, LastName, Age, Gender, GradeLevel)
VALUES 
    ('John', 'Doe', 18, 'Male', 12),
    ('Jane', 'Smith', 17, 'Female', 11),
    ('Michael', 'Johnson', 16, 'Male', 10),
    ('Emily', 'Williams', 15, 'Female', 9),
    ('David', 'Brown', 17, 'Male', 11);

TRUNCATE Products RESTART IDENTITY CASCADE;
INSERT INTO Products (ProductID, Name, Price, Description)
VALUES 
    (1, 'Product 1', 10.99, 'This is product 1.'),
    (2, 'Product 2', 19.99, 'This is product 2.'),
    (3, 'Product 3', 5.99, 'This is product 3.'),
    (4, 'Product 4', 12.49, 'This is product 4.'),
    (5, 'Product 5', 8.75, 'This is product 5.');


TRUNCATE customers RESTART IDENTITY CASCADE;
INSERT INTO customers (customer_id, first_name, last_name, email, phone_number, address)
VALUES
    (1, 'John', 'Doe', 'johndoe@example.com', '1234567890', '123 Main St'),
    (2, 'Jane', 'Smith', 'janesmith@example.com', '9876543210', '456 Elm St'),
    (3, 'Alice', 'Johnson', 'alicejohnson@example.com', '5555555555', '789 Oak St'),
    (4, 'Bob', 'Williams', 'bobwilliams@example.com', '1111111111', '321 Pine St');

TRUNCATE goalscorers RESTART IDENTITY CASCADE;
INSERT INTO goalscorers (goalscorer_id, first_name, last_name, team, goals_scored)
VALUES
    (1, 'Lionel', 'Messi', 'Barcelona', 25),
    (2, 'Cristiano', 'Ronaldo', 'Juventus', 20),
    (3, 'Robert', 'Lewandowski', 'Bayern Munich', 30);

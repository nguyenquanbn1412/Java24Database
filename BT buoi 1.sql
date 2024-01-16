create table Person (
	id INT,	fullname VARCHAR(255),	country VARCHAR(50), job VARCHAR(14), birthday DATE, gender VARCHAR(50), salary INT, hobbies VARCHAR(27)
);
INSERT INTO Person (id, fullname, country, job, birthday, gender, salary, hobbies)
VALUES
(1, 'John Doe', 'USA', 'Engineer', '1990-01-01', 'Male', 70000, 'Reading,Traveling'),
(2, 'Jane Smith', 'Canada', 'Doctor', '1985-05-15', 'Female', 90000, 'Hiking,Cooking'),
(3, 'Bob Johnson', 'UK', 'Teacher', '1982-08-20', 'Male', 60000, 'Painting,Photography'),
(4, 'Alice Brown', 'Australia', 'Software Developer', '1995-03-10', 'Female', 80000, 'Gaming,Music'),
(5, 'Charlie Davis', 'Germany', 'Marketing Manager', '1988-11-25', 'Male', 75000, 'Traveling,Sports'),
(6, 'Eva White', 'France', 'Nurse', '1992-06-05', 'Female', 65000, 'Dancing,Reading'),
(7, 'David Miller', 'Spain', 'Architect', '1980-09-12', 'Male', 85000, 'Cooking,Photography'),
(8, 'Sophia Clark', 'Italy', 'Accountant', '1987-04-18', 'Female', 70000, 'Traveling,Gardening'),
(9, 'Ryan Wilson', 'Brazil', 'Journalist', '1993-02-28', 'Male', 72000, 'Reading,Sports'),
(10, 'Emma Taylor', 'Mexico', 'Graphic Designer', '1983-07-15', 'Female', 68000, 'Painting,Music');
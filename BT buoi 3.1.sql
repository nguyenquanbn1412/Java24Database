#Lấy danh sách các quốc gia duy nhất:
SELECT DISTINCT country FROM Person;

#Sắp xếp danh sách người theo tên đầy đủ (fullname) theo thứ tự tăng dần:
SELECT * FROM Person ORDER BY fullname ASC;

#Sắp xếp danh sách người theo nghề nghiệp (job) theo thứ tự giảm dần:
SELECT * FROM Person ORDER BY job DESC;

#Lấy danh sách các nghề nghiệp (job) duy nhất mà người trong bảng đang làm:
SELECT DISTINCT job FROM Person WHERE job IS NOT NULL;

#Lấy tổng số người theo từng quốc gia và sắp xếp theo số lượng người giảm dần:
SELECT country, COUNT(*) as total_people FROM Person GROUP BY country ORDER BY total_people DESC;

#Tính tổng lương (salary) của tất cả người trong bảng:
SELECT SUM(salary) as total_salary FROM Person;

#Tính tổng lương trung bình của người theo từng nghề nghiệp (job) và sắp xếp theo lương trung bình tăng dần:
SELECT job, AVG(salary) as average_salary FROM Person GROUP BY job ORDER BY average_salary ASC;

#Lấy ra người có lương (salary) lớn hơn 5000 và ngày sinh (birthday) nằm trong khoảng '1990-01-01' đến '1995-12-31':
SELECT * FROM Person WHERE salary > 5000 AND birthday BETWEEN '1990-01-01' AND '1995-12-31';

#Lấy ra người có lương (salary) lớn hơn 6000 và nghề nghiệp (job) là 'Developer' hoặc 'Engineer':
SELECT * FROM Person WHERE salary > 6000 AND job IN ('Developer', 'Engineer');

#Lấy ra danh sách các nghề nghiệp (job) duy nhất mà có ít nhất 3 người làm:
SELECT job FROM Person GROUP BY job HAVING COUNT(*) >= 3;

#Lấy ra người nam (gender = 'M') có lương (salary) cao nhất:
SELECT * FROM Person WHERE gender = 'M' ORDER BY salary DESC LIMIT 1;

#Lấy ra người nữ (gender = 'F') có lương (salary) thấp nhất:
SELECT * FROM Person WHERE gender = 'F' ORDER BY salary ASC LIMIT 1;

#Lấy danh sách người (không trùng lặp) theo thứ tự tên đầy đủ tăng dần:
SELECT DISTINCT fullname FROM Person ORDER BY fullname ASC;

#Đếm số người sinh vào các tháng khác nhau và sắp xếp theo thứ tự số lượng tăng dần:
SELECT MONTH(birthday) as birth_month, COUNT(*) as total_people FROM Person GROUP BY birth_month ORDER BY total_people ASC;

#Lấy ra danh sách các nghề nghiệp (job) duy nhất mà người trong bảng không làm trùng lặp:
SELECT DISTINCT job
FROM Person
GROUP BY job
HAVING COUNT(DISTINCT fullname) = COUNT(*);

#Lấy ra danh sách các người có nghề nghiệp (job) là 'Manager' và lương (salary) lớn hơn 70000:
SELECT * FROM Person WHERE job = 'Manager' AND salary > 70000;

#Lấy ra người có tuổi (dựa trên ngày sinh) từ 25 đến 35:
SELECT * FROM Person WHERE YEAR(CURDATE()) - YEAR(birthday) BETWEEN 25 AND 35;

#Lấy ra danh sách các quốc gia (country) và tổng số lượng người từng quốc gia:
SELECT country, COUNT(*) as total_people FROM Person GROUP BY country;

#Tính số lượng nam (gender = 'Male') và nữ (gender = 'Female') trong bảng:
SELECT gender, COUNT(*) as total_gender FROM Person GROUP BY gender;

#Lấy ra danh sách người có cùng nghề nghiệp (job) và quốc gia (country):
SELECT job, country, COUNT(*) as total_people FROM Person GROUP BY job, country;

#Lấy ra danh sách người theo thứ tự giảm dần của ngày sinh (birthday):
SELECT * FROM Person ORDER BY birthday DESC;

#Lấy ra các nghề nghiệp (job) và tổng số lượng người làm nghề đó, nhưng chỉ hiển thị những nghề nghiệp có ít nhất 3 người làm:
SELECT job, COUNT(*) as total_people FROM Person GROUP BY job HAVING total_people >= 3;
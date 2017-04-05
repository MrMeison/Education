SELECT COUNT(teacher_student.student_id), teacher.name
FROM teacher_student
LEFT JOIN teacher ON teacher.id = teacher_student.teacher_id
GROUP BY teacher_student.teacher_id
HAVING COUNT(student_id) > 5;
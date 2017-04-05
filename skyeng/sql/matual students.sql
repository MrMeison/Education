SELECT t1, 
       t2, 
       s_count 
FROM   (SELECT t1.name               AS t1, 
               t2.name               AS t2, 
               Count(ts1.student_id) AS s_count 
        FROM   teacher_student ts1 
               INNER JOIN teacher_student ts2 
                       ON ts1.student_id = ts2.student_id 
                          AND ts1.teacher_id <> ts2.teacher_id 
               LEFT JOIN teacher t1 ON t1.id = ts1.teacher_id 
               LEFT JOIN teacher t2 ON t2.id = ts2.teacher_id 
        GROUP  BY t1.name, 
                  t2.name) AS q 
ORDER  BY s_count DESC 
LIMIT  1 
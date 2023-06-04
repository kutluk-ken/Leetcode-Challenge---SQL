SELECT S.student_id,S.student_name,U.subject_name,count(SU.subject_name) as attended_exams
FROM Students S join Subjects U
LEFT JOIN Examinations SU on S.student_id = SU.student_id AND U.subject_name = SU.subject_name
group by S.student_id, U.subject_name
order by S.student_id,U.subject_name

# PRO2003_Work_Requirement_1

## Project Description
This project is based on a online readathon created to encourage reading (https://www.worldofaeldia.com).  In this fictional universe, people create characters to enroll in a magical university, chracters pick a guild house to be members, enroll to a calling (similar to a bachelor degree) and each semester study different subjects.

## Table creation and relationships
<img width="723" height="706" alt="ER Model" src="https://github.com/user-attachments/assets/e8a64658-3d35-4883-bad5-bc10e1b75e2d" />

- **Character**: has a unique ID (PK) and name, and needs to be in one Guild (FK) and Calling (FK).
- **Guild**: has a unique ID (PK) and name, and can have many members (character).
- **Calling**: has a unique ID (PK) and name, many students (character) assigned to a calling, at the same time a calling can have many subjects.
- **Subject**: has a unique ID (PK) and name, and the same subject can be in many different callings.
- **Subject_Calling**: to solve the many-to-many relationship between subject and calling this table is created. It also adds semester information, since one subject in one calling can be in the two different semesters. Primary key is therefore (calling_id,subject_id,semester_id) and all are at the same time foreign keys.
- **Semester**:has a unique ID (PK) and name, start_date, end_date and academic_year.

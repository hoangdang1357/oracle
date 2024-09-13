INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T001', 'Nguyen Van A', '123 Main St', 'Sc');
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T002', 'Tran Thi B', '456 Maple Rd', 'So');
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T003', 'Le Van C', '789 Oak Ave', 'Sc');
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T004', 'Pham Thi D', '321 Pine St', 'So');
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T005', 'Hoang Van E', '654 Birch Ln', 'Sc');

INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C001', 'Math 101', 30);
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C002', 'English 101', 25);
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C003', 'Science 101', 28);
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C004', 'History 101', 20);
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C005', 'Art 101', 22);

INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T001', 'S001', 'C001');
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T002', 'S002', 'C002');
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T003', 'S003', 'C003');
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T004', 'S004', 'C004');
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T005', 'S005', 'C005');

INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00001', 'Nguyen Van A', 'C001', TO_DATE('12-05-2012', 'DD-MM-YYYY'), 'Nam', 'Kinh', 'Le Thi X', 'Teacher', 'Nguyen Van Y', 'Farmer', '0912345678', 'Ha Noi', 'None', 'PC0000001');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00002', 'Tran Thi B', 'C002', TO_DATE('08-09-2011', 'DD-MM-YYYY'), 'Nu', 'Kinh', 'Tran Thi M', 'Doctor', 'Tran Van N', 'Engineer', '0923456789', 'Hai Phong', 'None', 'PC0000002');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00003', 'Le Van C', 'C003', TO_DATE('15-12-2010', 'DD-MM-YYYY'), 'Nam', 'Muong', 'Pham Thi K', 'Nurse', 'Le Van L', 'Driver', '0934567890', 'Da Nang', 'None', 'PC0000003');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00004', 'Pham Thi D', 'C004', TO_DATE('25-02-2012', 'DD-MM-YYYY'), 'Nu', 'Thai', 'Nguyen Thi Q', 'Farmer', 'Pham Van P', 'Mechanic', '0945678901', 'Thanh Hoa', 'None', 'PC0000004');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00005', 'Hoang Van E', 'C005', TO_DATE('30-11-2011', 'DD-MM-YYYY'), 'Nam', 'Kinh', 'Hoang Thi T', 'Housewife', 'Hoang Van U', 'Teacher', '0956789012', 'Quang Ninh', 'None', 'PC0000005');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00006', 'Nguyen Van F', 'C002', TO_DATE('15-08-2012', 'DD-MM-YYYY'), 'Nam', 'Kinh', 'Tran Thi Z', 'Teacher', 'Nguyen Van K', 'Engineer', '0967890123', 'Ha Noi', 'None', 'PC0000006');


INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B001', 'Nguyen Van K', 'Principal');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B002', 'Tran Thi H', 'Vice Principal');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B003', 'Le Van J', 'Head of Department');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B004', 'Pham Thi G', 'Head of Curriculum');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B005', 'Hoang Van F', 'Head of Administration');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B006', 'Science Department', 'Vice Head of Science');


INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B001', 'T001', 1, 2023);
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B002', 'T002', 1, 2023);
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B003', 'T003', 2, 2023);
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B004', 'T004', 2, 2023);
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B005', 'T005', 1, 2023);

INSERT INTO PUPIL_REWARDS (BoardID, PupilID, Semester, SchoolYear, AwardTitle)
VALUES ('B001', 'P00001', 1, 2023, 'Best Pupil of the Semester');
INSERT INTO PUPIL_REWARDS (BoardID, PupilID, Semester, SchoolYear, AwardTitle)
VALUES ('B002', 'P00002', 2, 2023, 'Excellent Attendance');
INSERT INTO PUPIL_REWARDS (BoardID, PupilID, Semester, SchoolYear, AwardTitle)
VALUES ('B003', 'P00003', 1, 2022, 'Best in Mathematics');
INSERT INTO PUPIL_REWARDS (BoardID, PupilID, Semester, SchoolYear, AwardTitle)
VALUES ('B004', 'P00004', 2, 2022, 'Excellent Conduct');
INSERT INTO PUPIL_REWARDS (BoardID, PupilID, Semester, SchoolYear, AwardTitle)
VALUES ('B005', 'P00005', 1, 2021, 'Top Science Student');
INSERT INTO PUPIL_REWARDS (BoardID, PupilID, Semester, SchoolYear, AwardTitle)
VALUES ('B006', 'P00006', 1, 2021, 'The Seconds Science Student');

INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R001', 'P00001', 9, 9.5, '9.25', 'Excellent', 'Excellent', 'Y');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R002', 'P00002', 8, 8.2, '8.1', 'Good', 'Good', 'Y');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R003', 'P00003', 7, 7.5, '7.25', 'Average', 'Good', 'Y');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R004', 'P00004', 6, 6.8, '6.4', 'Good', 'Average', 'Y');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R005', 'P00005', 9, 9.3, '9.15', 'Excellent', 'Excellent', 'Y');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R006', 'P00006', 4, 4.5, '4.25', 'Poor', 'Poor', 'N');

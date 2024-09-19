-- Dữ liệu cho bảng TEACHER
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T001', 'Nguyen Van A', '123 Le Loi, HCM', 'Sc');
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T002', 'Tran Thi B', '456 Nguyen Hue, HCM', 'So');
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T003', 'Le Van C', '789 Phan Chu Trinh, HN', 'Sc');
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T004', 'Pham Thi D', '321 Nguyen Du, HCM', 'So');
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T005', 'Bui Van E', '654 Tran Quoc Toan, HN', 'Sc');
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T006', 'Hoang Thi F', '876 Le Van Sy, HCM', 'So');
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T007', 'Vu Thi G', '135 Dien Bien Phu, HN', 'Sc');
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T008', 'Tran Van H', '423 Le Loi, HCM', 'So');
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T009', 'Dang Thi I', '789 Hoang Van Thu, HCM', 'Sc');
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T010', 'Ngo Van J', '987 Ba Trieu, HN', 'So');
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T011', 'Nguyen Thi K', '543 Le Lai, HCM', 'Sc');
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T012', 'Tran Van L', '324 Hai Ba Trung, HN', 'So');
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T013', 'Le Thi M', '123 Dien Bien Phu, HCM', 'Sc');
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T014', 'Pham Van N', '789 Phan Dinh Phung, HCM', 'So');
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T015', 'Bui Van O', '456 Vo Van Tan, HN', 'Sc');
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T016', 'Hoang Thi P', '123 Pasteur, HCM', 'So');
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T017', 'Vu Van Q', '876 Pham Ngoc Thach, HCM', 'Sc');
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T018', 'Tran Thi R', '321 Le Thanh Ton, HN', 'So');
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T019', 'Nguyen Van S', '789 Nguyen Van Cu, HCM', 'Sc');
INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) VALUES ('T020', 'Le Thi T', '654 Truong Chinh, HN', 'So');

-- Dữ liệu cho bảng CLASSES
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C001', 'Math Grade 10', 30);
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C002', 'Physics Grade 11', 32);
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C003', 'History Grade 12', 28);
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C004', 'Chemistry Grade 10', 29);
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C005', 'Biology Grade 11', 27);
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C006', 'Geography Grade 12', 30);
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C007', 'English Grade 10', 33);
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C008', 'Literature Grade 11', 31);
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C009', 'Math Grade 12', 25);
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C010', 'Physics Grade 10', 28);
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C011', 'Chemistry Grade 11', 30);
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C012', 'Biology Grade 12', 29);
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C013', 'Geography Grade 10', 32);
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C014', 'English Grade 11', 28);
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C015', 'Literature Grade 12', 26);
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C016', 'Math Grade 11', 29);
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C017', 'Physics Grade 12', 27);
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C018', 'Chemistry Grade 10', 28);
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C019', 'Biology Grade 11', 30);
INSERT INTO CLASSES (ClassID, ClassName, ClassSize) VALUES ('C020', 'Geography Grade 12', 31);

-- Dữ liệu cho bảng TEACHING_ASSIGNMENT
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T001', 'SUB01', 'C001');
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T002', 'SUB02', 'C002');
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T003', 'SUB03', 'C003');
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T004', 'SUB04', 'C004');
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T005', 'SUB05', 'C005');
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T006', 'SUB06', 'C006');
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T007', 'SUB07', 'C007');
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T008', 'SUB08', 'C008');
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T009', 'SUB09', 'C009');
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T010', 'SUB10', 'C010');
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T011', 'SUB11', 'C011');
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T012', 'SUB12', 'C012');
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T013', 'SUB13', 'C013');
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T014', 'SUB14', 'C014');
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T015', 'SUB15', 'C015');
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T016', 'SUB16', 'C016');
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T017', 'SUB17', 'C017');
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T018', 'SUB18', 'C018');
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T019', 'SUB19', 'C019');
INSERT INTO TEACHING_ASSIGNMENT (TeacherID, SubjectID, ClassID) VALUES ('T020', 'SUB20', 'C020');

-- Dữ liệu cho bảng SCHOOL_BOARD
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B001', 'Board A', 'Principal');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B002', 'Board B', 'Vice Principal');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B003', 'Board C', 'Head of Department');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B004', 'Board D', 'Secretary');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B005', 'Board E', 'Treasurer');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B006', 'Board F', 'Head of Discipline');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B007', 'Board G', 'Head of Sports');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B008', 'Board H', 'Head of Arts');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B009', 'Board I', 'School Counselor');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B010', 'Board J', 'Deputy Head of Department');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B011', 'Board K', 'Director of Administration');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B012', 'Board L', 'Director of Academics');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B013', 'Board M', 'Head of Social Science');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B014', 'Board N', 'Head of Natural Science');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B015', 'Board O', 'Head of Languages');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B016', 'Board P', 'Head of Technology');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B017', 'Board Q', 'School Nurse');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B018', 'Board R', 'Counselor Assistant');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B019', 'Board S', 'Laboratory Technician');
INSERT INTO SCHOOL_BOARD (BoardID, BoardName, School_Position) VALUES ('B020', 'Board T', 'Library Head');

-- Dữ liệu cho bảng TEACHER_REWARDS
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B001', 'T001', 1, 2024);
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B002', 'T002', 2, 2024);
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B003', 'T003', 1, 2024);
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B004', 'T004', 2, 2024);
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B005', 'T005', 1, 2024);
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B006', 'T006', 2, 2024);
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B007', 'T007', 1, 2024);
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B008', 'T008', 2, 2024);
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B009', 'T009', 1, 2024);
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B010', 'T010', 2, 2024);
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B011', 'T011', 1, 2024);
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B012', 'T012', 2, 2024);
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B013', 'T013', 1, 2024);
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B014', 'T014', 2, 2024);
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B015', 'T015', 1, 2024);
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B016', 'T016', 2, 2024);
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B017', 'T017', 1, 2024);
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B018', 'T018', 2, 2024);
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B019', 'T019', 1, 2024);
INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear) VALUES ('B020', 'T020', 2, 2024);

-- Dữ liệu cho bảng PUPIL
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00001', 'Nguyen Van A', 'C001', TO_DATE('2008-05-12', 'YYYY-MM-DD'), 'Male', 'Kinh', 'Nguyen Thi X', 'Teacher', 'Nguyen Van Y', 'Engineer', '0912345678', 'HCM', 'None', 'PCD001');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00002', 'Le Thi B', 'C002', TO_DATE('2008-08-15', 'YYYY-MM-DD'), 'Nu', 'Kinh', 'Le Thi Z', 'Doctor', 'Le Van X', 'Businessman', '0987654321', 'HN', 'None', 'PCD002');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00003', 'Tran Van C', 'C003', TO_DATE('2008-03-10', 'YYYY-MM-DD'), 'Male', 'Kinh', 'Tran Thi Y', 'Farmer', 'Tran Van Z', 'Teacher', '0912987654', 'Da Nang', 'None', 'PCD003');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00004', 'Pham Thi D', 'C004', TO_DATE('2008-11-25', 'YYYY-MM-DD'), 'Nu', 'Kinh', 'Pham Thi Q', 'Housewife', 'Pham Van W', 'Policeman', '0932123456', 'HCM', 'Buddhist', 'PCD004');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00005', 'Bui Van E', 'C005', TO_DATE('2008-07-18', 'YYYY-MM-DD'), 'Male', 'Kinh', 'Bui Thi V', 'Nurse', 'Bui Van U', 'Businessman', '0943123456', 'Hanoi', 'None', 'PCD005');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00006', 'Hoang Thi F', 'C006', TO_DATE('2008-04-09', 'YYYY-MM-DD'), 'Nu', 'Kinh', 'Hoang Thi T', 'Engineer', 'Hoang Van S', 'Doctor', '0934987654', 'HCM', 'None', 'PCD006');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00007', 'Vu Van G', 'C007', TO_DATE('2008-02-12', 'YYYY-MM-DD'), 'Male', 'Kinh', 'Vu Thi P', 'Lawyer', 'Vu Van R', 'Teacher', '0948765432', 'HCM', 'None', 'PCD007');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00008', 'Tran Thi H', 'C008', TO_DATE('2008-06-08', 'YYYY-MM-DD'), 'Nu', 'Kinh', 'Tran Thi O', 'Teacher', 'Tran Van P', 'Engineer', '0949876543', 'HCM', 'None', 'PCD008');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00009', 'Dang Van I', 'C009', TO_DATE('2008-12-12', 'YYYY-MM-DD'), 'Male', 'Kinh', 'Dang Thi M', 'Teacher', 'Dang Van N', 'Farmer', '0932876543', 'HN', 'Buddhist', 'PCD009');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00010', 'Ngo Thi J', 'C010', TO_DATE('2008-09-20', 'YYYY-MM-DD'), 'Nu', 'Kinh', 'Ngo Thi K', 'Businesswoman', 'Ngo Van L', 'Doctor', '0934123456', 'HN', 'None', 'PCD010');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00011', 'Nguyen Van K', 'C011', TO_DATE('2008-05-12', 'YYYY-MM-DD'), 'Male', 'Kinh', 'Nguyen Thi M', 'Engineer', 'Nguyen Van N', 'Businessman', '0913876543', 'HCM', 'None', 'PCD011');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00012', 'Tran Thi L', 'C012', TO_DATE('2008-08-15', 'YYYY-MM-DD'), 'Nu', 'Kinh', 'Tran Thi N', 'Teacher', 'Tran Van O', 'Doctor', '0943123456', 'Da Nang', 'None', 'PCD012');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00013', 'Le Van M', 'C013', TO_DATE('2008-03-10', 'YYYY-MM-DD'), 'Male', 'Kinh', 'Le Thi P', 'Doctor', 'Le Van Q', 'Farmer', '0912987654', 'Da Nang', 'None', 'PCD013');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00014', 'Pham Thi N', 'C014', TO_DATE('2008-11-25', 'YYYY-MM-DD'), 'Nu', 'Kinh', 'Pham Thi Q', 'Nurse', 'Pham Van R', 'Businessman', '0932123456', 'HCM', 'None', 'PCD014');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00015', 'Bui Van O', 'C015', TO_DATE('2008-07-18', 'YYYY-MM-DD'), 'Male', 'Kinh', 'Bui Thi S', 'Farmer', 'Bui Van T', 'Lawyer', '0943123456', 'HCM', 'None', 'PCD015');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00016', 'Hoang Thi P', 'C016', TO_DATE('2008-04-09', 'YYYY-MM-DD'), 'Nu', 'Kinh', 'Hoang Thi T', 'Businesswoman', 'Hoang Van S', 'Farmer', '0934987654', 'HCM', 'None', 'PCD016');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00017', 'Vu Van Q', 'C017', TO_DATE('2008-02-12', 'YYYY-MM-DD'), 'Male', 'Kinh', 'Vu Thi R', 'Teacher', 'Vu Van S', 'Doctor', '0948765432', 'HCM', 'None', 'PCD017');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00018', 'Tran Thi S', 'C018', TO_DATE('2008-06-08', 'YYYY-MM-DD'), 'Nu', 'Kinh', 'Tran Thi T', 'Businesswoman', 'Tran Van U', 'Doctor', '0949876543', 'Da Nang', 'None', 'PCD018');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00019', 'Dang Thi T', 'C019', TO_DATE('2008-12-12', 'YYYY-MM-DD'), 'Nu', 'Kinh', 'Dang Thi W', 'Doctor', 'Dang Van X', 'Teacher', '0932876543', 'HCM', 'None', 'PCD019');
INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
VALUES ('P00020', 'Ngo Thi U', 'C020', TO_DATE('2008-09-20', 'YYYY-MM-DD'), 'Nu', 'Kinh', 'Ngo Thi V', 'Nurse', 'Ngo Van W', 'Lawyer', '0934123456', 'HN', 'None', 'PCD020');

-- Dữ liệu cho bảng ACADEMIC_RESULT
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R001', 'P00001', 9, 9.2, '9.1', 'Excellent', 'Excellent', 'Y');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R002', 'P00002', 8, 8.5, '8.3', 'Good', 'Good', 'Y');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R003', 'P00003', 7, 7.8, '7.4', 'Average', 'Good', 'Y');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R004', 'P00004', 9, 9.1, '9.05', 'Excellent', 'Excellent', 'Y');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R005', 'P00005', 6, 7.2, '6.6', 'Average', 'Average', 'N');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R006', 'P00006', 8, 8.7, '8.35', 'Good', 'Excellent', 'Y');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R007', 'P00007', 9, 9.5, '9.25', 'Excellent', 'Excellent', 'Y');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R008', 'P00008', 7, 7.3, '7.15', 'Good', 'Average', 'Y');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R009', 'P00009', 6, 6.8, '6.4', 'Average', 'Average', 'N');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R010', 'P00010', 8, 8.3, '8.15', 'Good', 'Good', 'Y');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R011', 'P00011', 9, 9.6, '9.3', 'Excellent', 'Excellent', 'Y');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R012', 'P00012', 8, 8.4, '8.2', 'Good', 'Good', 'Y');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R013', 'P00013', 7, 7.5, '7.25', 'Good', 'Average', 'Y');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R014', 'P00014', 6, 6.9, '6.45', 'Average', 'Average', 'N');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R015', 'P00015', 9, 9.4, '9.2', 'Excellent', 'Excellent', 'Y');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R016', 'P00016', 8, 8.6, '8.3', 'Good', 'Excellent', 'Y');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R017', 'P00017', 7, 7.4, '7.2', 'Good', 'Good', 'Y');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R018', 'P00018', 6, 6.5, '6.25', 'Average', 'Average', 'N');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R019', 'P00019', 9, 9.8, '9.4', 'Excellent', 'Excellent', 'Y');
INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
VALUES ('R020', 'P00020', 8, 8.9, '8.45', 'Good', 'Excellent', 'Y');

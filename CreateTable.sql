CREATE TABLE PUPIL (
    PupilID NVARCHAR2(9) PRIMARY KEY,
    PupilName NVARCHAR2(30) NOT NULL,
    ClassID CHAR(5) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Gender NVARCHAR2(4) NOT NULL,
    Ethnicity NVARCHAR2(5),
    MotherName NVARCHAR2(30),
    MotherOccupation NVARCHAR2(30),
    FatherName NVARCHAR2(30),
    FatherOccupation NVARCHAR2(30),
    PhoneNumber VARCHAR2(11),
    Hometown NVARCHAR2(90),
    Religion NVARCHAR2(30),
    PupilCardID CHAR(10) NOT NULL,
    FOREIGN KEY (ClassID) REFERENCES CLASSES(ClassID),
    CONSTRAINT chk_PupilID CHECK (PupilID LIKE 'P_____')
);

CREATE TABLE SCHOOL_BOARD (
    BoardID NVARCHAR2(5) PRIMARY KEY,
    BoardName NVARCHAR2(30) NOT NULL,
    School_Position CHAR(50) NOT NULL,
    CONSTRAINT chk_BoardID CHECK (BoardID LIKE 'B___')
);

CREATE TABLE TEACHER_REWARDS (
    BoardID NVARCHAR2(5) NOT NULL,
    TeacherID NVARCHAR2(5) NOT NULL,
    Semester NUMBER(1) NOT NULL,
    SchoolYear NUMBER(5) NOT NULL,
    FOREIGN KEY (BoardID) REFERENCES SCHOOL_BOARD(BoardID),
    FOREIGN KEY (TeacherID) REFERENCES TEACHER(TeacherID),
    CONSTRAINT chk_TR_TeacherID CHECK (TeacherID LIKE 'TC___'),
    CONSTRAINT chk_TR_BoardID CHECK (BoardID LIKE 'B___')
);


CREATE TABLE PUPIL_REWARDS (
    BoardID NVARCHAR2(5) NOT NULL,
    PupilID NVARCHAR2(9) NOT NULL,
    Semester NUMBER(1) NOT NULL,
    SchoolYear NUMBER(5) NOT NULL,
    AwardTitle NVARCHAR2(30) NOT NULL,
    FOREIGN KEY (BoardID) REFERENCES SCHOOL_BOARD(BoardID),
    FOREIGN KEY (PupilID) REFERENCES PUPIL(PupilID),
    CONSTRAINT chk_BoardID CHECK (BoardID LIKE 'B___'), 
    CONSTRAINT chk_PupilID CHECK (PupilID LIKE 'P_____') 
);


CREATE TABLE ACADEMIC_RESULTS (
    ResultID NVARCHAR2(9) PRIMARY KEY ,
    PupilID NVARCHAR2(9) PRIMARY KEY,
    AverageScore_Semester1 NUMBER(1) NOT NULL,
    AverageScore_Semester2 NUMBER(5) NOT NULL,
    FinalAverageScore NVARCHAR2(30) NOT NULL,
    Conduct NVARCHAR2(10) NOT NULL,
    AcademicPerformance NVARCHAR2(10) NOT NULL,
    PromotionStatus NVARCHAR2(1),
    FOREIGN KEY (PupilID) REFERENCES PUPIL(PupilID),
    CONSTRAINT chk_PromotionStatus CHECK (PromotionStatus IN ('Y', 'N')),
    CONSTRAINT chk_Conduct CHECK (Conduct IN ('Excellent', 'Good', 'Average', 'Poor')),
    CONSTRAINT chk_ResultID CHECK (ResultID LIKE 'R___'),
    CONSTRAINT chk_PupilID CHECK (PupilID LIKE 'P_____')
);


CREATE TABLE TEACHER (
    TeacherID NVARCHAR2(5) PRIMARY KEY,
    TeacherName NVARCHAR2(30),
    Address NVARCHAR2(90),
    Specialization CHAR(2),
    CONSTRAINT chk_TeacherID CHECK (TeacherID LIKE 'T___'),
    CONSTRAINT chk_Specialization CHECK (Specialization IN ('Sc', 'So'))
);


CREATE TABLE CLASSES (
    ClassID NVARCHAR2(5) PRIMARY KEY ,
    ClassName NVARCHAR2(30),
    ClassSize NUMBER(3),
    CONSTRAINT chk_CL_ClassID CHECK (ClassID LIKE 'C___')
);


CREATE TABLE TEACHING_ASSIGNMENT (
    TeacherID NVARCHAR2(5) PRIMARY KEY,
    SubjectID CHAR(5),
    ClassID CHAR(5),
    CONSTRAINT chk_TA_TeacherID CHECK (TeacherID LIKE 'T___')
);

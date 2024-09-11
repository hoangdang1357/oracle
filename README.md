CREATE TABLE PUPIL (
    PupilID CHAR(9) PRIMARY KEY CHECK (PupilID LIKE 'P_____'),
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
    FOREIGN KEY (ClassID) REFERENCES CLASSES(ClassID)
);

CREATE TABLE SCHOOL_BOARD (
    BoardID CHAR(5) PRIMARY KEY CHECK (BoardID LIKE 'B___'),
    BoardName NVARCHAR2(30) NOT NULL,
    School_Position CHAR(50) NOT NULL
);

CREATE TABLE TEACHER_REWARDS (
    BoardID CHAR(5) NOT NULL,
    TeacherID CHAR(5) NOT NULL,
    Semester NUMBER(1) NOT NULL,
    SchoolYear NUMBER(5) NOT NULL,
    FOREIGN KEY (BoardID) REFERENCES SCHOOL_BOARD(BoardID),
    FOREIGN KEY (TeacherID) REFERENCES TEACHER(TeacherID),
    CONSTRAINT chk_TR_TeacherID CHECK (TeacherID LIKE 'TC___'),
    CONSTRAINT chk_TR_BoardID CHECK (BoardID LIKE 'B___')
);


CREATE TABLE PUPIL_REWARDS (
    BoardID CHAR(5) CHECK (BoardID LIKE 'B___') NOT NULL,
    PupilID CHAR(9) CHECK (PupilID LIKE 'P_____') NOT NULL,
    Semester NUMBER(1) NOT NULL,
    SchoolYear NUMBER(5) NOT NULL,
    AwardTitle NVARCHAR2(30) NOT NULL,
    FOREIGN KEY (BoardID) REFERENCES SCHOOL_BOARD(BoardID),
    FOREIGN KEY (PupilID) REFERENCES PUPIL(PupilID)
);


CREATE TABLE ACADEMIC_RESULTS (
    ResultID CHAR(9) PRIMARY KEY CHECK (ResultID LIKE 'R___'),
    PupilID CHAR(9) CHECK (PupilID LIKE 'P_____'),
    AverageScore_Semester1 NUMBER(1) NOT NULL,
    AverageScore_Semester2 NUMBER(5) NOT NULL,
    FinalAverageScore NVARCHAR2(30) NOT NULL,
    Conduct NVARCHAR2(10) NOT NULL,
    AcademicPerformance NVARCHAR2(10) NOT NULL,
    PromotionStatus NVARCHAR2(1) CHECK (PromotionStatus IN ('Y', 'N')),
    FOREIGN KEY (PupilID) REFERENCES PUPIL(PupilID)
);


CREATE TABLE TEACHER (
    TeacherID CHAR(5) PRIMARY KEY CHECK (TeacherID LIKE 'T___'),
    TeacherName NVARCHAR2(30),
    Address NVARCHAR2(90),
    Specialization CHAR(2)CHECK (Specialization IN ('Sc', 'So'))
);


CREATE TABLE CLASSES (
    ClassID CHAR(5) PRIMARY KEY ,
    ClassName NVARCHAR2(30),
    ClassSize NUMBER(3),
    CONSTRAINT chk_CL_ClassID CHECK (ClassID LIKE 'C___')
);


CREATE TABLE TEACHING_ASSIGNMENT (
    TeacherID CHAR(5) PRIMARY KEY,
    SubjectID CHAR(5),
    ClassID CHAR(5),
    CONSTRAINT chk_TA_TeacherID CHECK (TeacherID LIKE 'T___')
);



--Q9
BEGIN

   INSERT INTO PUPIL (PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity, MotherName, MotherOccupation, FatherName, FatherOccupation, PhoneNumber, Hometown, Religion, PupilCardID)
   VALUES ('P00007', 'Tr?n V?n H', 'C001', TO_DATE('01-01-2012', 'DD-MM-YYYY'), 'Nam', 'Kinh', 'Tr?n Th? A', 'Bác s?', 'Tr?n V?n B', 'K? s?', '0971234567', 'Hà N?i', 'Không', 'PC0000007');
   

   SAVEPOINT sp1;

   INSERT INTO ACADEMIC_RESULTS (ResultID, PupilID, AverageScore_Semester1, AverageScore_Semester2, FinalAverageScore, Conduct, AcademicPerformance, PromotionStatus)
   VALUES ('R007', 'P00007', 8, 8.5, '8.25', 'T?t', 'T?t', 'Y');


   COMMIT;

EXCEPTION

   WHEN OTHERS THEN
     ROLLBACK TO sp1;
     DBMS_OUTPUT.PUT_LINE('Error');
END;

--
BEGIN
   INSERT INTO TEACHER (TeacherID, TeacherName, Address, Specialization) 
   VALUES ('T006', 'Nguyen Van F', '789 Elm St', 'Sc');
   
   SAVEPOINT sp_Teacher;

   INSERT INTO TEACHER_REWARDS (BoardID, TeacherID, Semester, SchoolYear)
   VALUES ('B001', 'T006', 1, 2023);

   SAVEPOINT sp_TeacherReward;

   UPDATE PUPIL 
   SET PhoneNumber = '0987654321' 
   WHERE PupilID = 'P00001';

   COMMIT;

EXCEPTION
   WHEN OTHERS THEN
     ROLLBACK TO sp_TeacherReward;
     DBMS_OUTPUT.PUT_LINE('Error.');
END;

--
BEGIN
    INSERT INTO PUPIL (
        PupilID, PupilName, ClassID, DateOfBirth, Gender, Ethnicity,
        MotherName, MotherOccupation, FatherName, FatherOccupation,
        PhoneNumber, Hometown, Religion, PupilCardID
    ) VALUES (
        'P12345678', 'Nguyen Van A', 'C030', TO_DATE('2010-05-15', 'YYYY-MM-DD'), 'Male', 'Kinh',
        'Nguyen Thi B', 'Housewife', 'Nguyen Van C', 'Farmer',
        '0123456789', 'Hanoi', 'None', '1234567890'
    );

    UPDATE ACADEMIC_RESULTS
    SET
        AverageScore_Semester1 = 9,
        AverageScore_Semester2 = 9.5,
        FinalAverageScore = 'Excellent',
        Conduct = 'Good',
        AcademicPerformance = 'Excellent',
        PromotionStatus = 'Y'
    WHERE PupilID = 'P12345678';

    INSERT INTO PUPIL_REWARDS (
        BoardID, PupilID, Semester, SchoolYear, AwardTitle
    ) VALUES (
        'B001', 'P12345678', 1, 2024, 'Top Performance'
    );

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' );
END;



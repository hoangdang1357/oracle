--Q10
--10.1
CREATE OR REPLACE FUNCTION GetTopPupil
RETURN NVARCHAR2
IS
    v_PupilName NVARCHAR2(30);
BEGIN
    SELECT P.PupilName
    INTO v_PupilName
    FROM ACADEMIC_RESULTS AR
    JOIN PUPIL P ON AR.PupilID = P.PupilID
    ORDER BY AR.FinalAverageScore DESC
    FETCH FIRST 1 ROWS ONLY;

    RETURN v_PupilName;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'No pupil found';
    WHEN TOO_MANY_ROWS THEN
        RETURN 'Multiple pupils found with the same top score';
END;
--
DECLARE
    v_TopPupil NVARCHAR2(30);
BEGIN
    v_TopPupil := GetTopPupil;
    DBMS_OUTPUT.PUT_LINE('Top performing pupil: ' || v_TopPupil);
END;

--10.2

--10.3
CREATE OR REPLACE FUNCTION GetAcademicPerformanceBreakdown(
    v_ClassID NVARCHAR2
)
RETURN SYS_REFCURSOR
IS
    v_PerformanceBreakdown SYS_REFCURSOR;
BEGIN
    OPEN v_PerformanceBreakdown FOR
        SELECT AR.AcademicPerformance,
               COUNT(*) AS NumberOfStudents,
               ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) 
                                         FROM ACADEMIC_RESULTS AR2 
                                         JOIN PUPIL P2 ON AR2.PupilID = P2.PupilID
                                         WHERE P2.ClassID = v_ClassID), 2) AS Percentage
        FROM ACADEMIC_RESULTS AR
        JOIN PUPIL P ON AR.PupilID = P.PupilID
        WHERE P.ClassID = v_ClassID
        GROUP BY AR.AcademicPerformance;

    RETURN v_PerformanceBreakdown;
END;
--
DECLARE
    v_Result SYS_REFCURSOR;
    v_AcademicPerformance NVARCHAR2(10);
    v_NumberOfStudents NUMBER;
    v_Percentage NUMBER;
BEGIN
    v_Result := GetAcademicPerformanceBreakdown('C001');

    LOOP
        FETCH v_Result INTO v_AcademicPerformance, v_NumberOfStudents, v_Percentage;
        EXIT WHEN v_Result%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('Academic Performance: ' || v_AcademicPerformance || 
                             ', Number of Students: ' || v_NumberOfStudents ||
                             ', Percentage: ' || v_Percentage || '%');
    END LOOP;

    CLOSE v_Result;
END;

--10.4
CREATE OR REPLACE FUNCTION GetPupilRetentionRates
RETURN SYS_REFCURSOR
IS
    v_RetentionRates SYS_REFCURSOR;
BEGIN
    OPEN v_RetentionRates FOR
        WITH TotalPupils AS (
            SELECT P.ClassID,
                   COUNT(*) AS TotalCount
            FROM PUPIL P
            GROUP BY P.ClassID
        ),
        PromotedPupils AS (
            SELECT P.ClassID,
                   COUNT(*) AS PromotedCount
            FROM ACADEMIC_RESULTS AR
            JOIN PUPIL P ON AR.PupilID = P.PupilID
            WHERE AR.PromotionStatus = 'Y'
            GROUP BY P.ClassID
        )
        SELECT T.ClassID,
               COALESCE(P.PromotedCount, 0) AS PromotedCount,
               T.TotalCount,
               ROUND((COALESCE(P.PromotedCount, 0) * 100.0 / T.TotalCount), 2) AS RetentionRate
        FROM TotalPupils T
        LEFT JOIN PromotedPupils P ON T.ClassID = P.ClassID
        ORDER BY T.ClassID;

    RETURN v_RetentionRates;
END;
--
DECLARE
    v_Result SYS_REFCURSOR;
    v_ClassID NVARCHAR2(5);
    v_PromotedCount NUMBER;
    v_TotalCount NUMBER;
    v_RetentionRate NUMBER;
BEGIN
    v_Result := GetPupilRetentionRates;

    LOOP
        FETCH v_Result INTO v_ClassID, v_PromotedCount, v_TotalCount, v_RetentionRate;
        EXIT WHEN v_Result%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('Class ID: ' || v_ClassID ||
                             ', Promoted Count: ' || v_PromotedCount ||
                             ', Total Count: ' || v_TotalCount ||
                             ', Retention Rate: ' || v_RetentionRate || '%');
    END LOOP;

    CLOSE v_Result;
END;

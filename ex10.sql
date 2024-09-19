--Q10
--10.1
CREATE OR REPLACE FUNCTION GetStudentCountByClassAndPerformance(p_schoolYear NUMBER)
RETURN SYS_REFCURSOR
IS
  result_cursor SYS_REFCURSOR;
BEGIN
  OPEN result_cursor FOR
    SELECT
        P.ClassID,
        A.AcademicPerformance,
        PR.SchoolYear,
        COUNT(*) AS StudentCount
    FROM
        PUPIL P
        JOIN ACADEMIC_RESULTS A ON P.PupilID = A.PupilID
        JOIN PUPIL_REWARDS PR ON P.PupilID = PR.PupilID  
    WHERE
        PR.SchoolYear = p_schoolYear  
    GROUP BY
        P.ClassID,
        A.AcademicPerformance,
        PR.SchoolYear
    ORDER BY
        P.ClassID,
        A.AcademicPerformance;

  RETURN result_cursor;
END;
--
DECLARE
  student_cursor SYS_REFCURSOR;
  v_ClassID PUPIL.ClassID%TYPE;
  v_AcademicPerformance ACADEMIC_RESULTS.AcademicPerformance%TYPE;
  v_SchoolYear PUPIL_REWARDS.SchoolYear%TYPE;
  v_StudentCount NUMBER;
BEGIN
  -- G?i function v?i n?m h?c 2024
  student_cursor := GetStudentCountByClassAndPerformance(2024);
  
  -- Duy?t qua k?t qu?
  LOOP
    FETCH student_cursor INTO v_ClassID, v_AcademicPerformance, v_SchoolYear, v_StudentCount;
    EXIT WHEN student_cursor%NOTFOUND;
    
    -- Hi?n th? k?t qu?
    DBMS_OUTPUT.PUT_LINE('Class ID: ' || v_ClassID || ', Academic Performance: ' || v_AcademicPerformance ||
                         ', School Year: ' || v_SchoolYear || ', Student Count: ' || v_StudentCount);
  END LOOP;

  -- ?óng con tr? sau khi s? d?ng
  CLOSE student_cursor;
END;
--10.2

--10.3
CREATE OR REPLACE PROCEDURE GetStudentCountByClassAndPerformance(p_schoolYear IN NUMBER, result_cursor OUT SYS_REFCURSOR)
IS
BEGIN
  OPEN result_cursor FOR
    SELECT
        P.ClassID,
        A.AcademicPerformance,
        PR.SchoolYear,
        COUNT(*) AS StudentCount
    FROM
        PUPIL P
        JOIN ACADEMIC_RESULTS A ON P.PupilID = A.PupilID
        JOIN PUPIL_REWARDS PR ON P.PupilID = PR.PupilID  
    WHERE
        PR.SchoolYear = p_schoolYear  
    GROUP BY
        P.ClassID,
        A.AcademicPerformance,
        PR.SchoolYear
    ORDER BY
        P.ClassID,
        A.AcademicPerformance;
END;
--
DECLARE
  student_cursor SYS_REFCURSOR;
  v_ClassID PUPIL.ClassID%TYPE;
  v_AcademicPerformance ACADEMIC_RESULTS.AcademicPerformance%TYPE;
  v_SchoolYear PUPIL_REWARDS.SchoolYear%TYPE;
  v_StudentCount NUMBER;
BEGIN
  -- G?i procedure v?i n?m h?c 2024
  GetStudentCountByClassAndPerformance(2024, student_cursor);
  
  -- Duy?t qua k?t qu?
  LOOP
    FETCH student_cursor INTO v_ClassID, v_AcademicPerformance, v_SchoolYear, v_StudentCount;
    EXIT WHEN student_cursor%NOTFOUND;
    
    -- Hi?n th? k?t qu?
    DBMS_OUTPUT.PUT_LINE('Class ID: ' || v_ClassID || ', Academic Performance: ' || v_AcademicPerformance ||
                         ', School Year: ' || v_SchoolYear || ', Student Count: ' || v_StudentCount);
  END LOOP;

  -- ?óng con tr? sau khi s? d?ng
  CLOSE student_cursor;
END;
--10.4
CREATE OR REPLACE FUNCTION GetRetentionRates(p_currentYear IN NUMBER, p_previousYear IN NUMBER)
RETURN SYS_REFCURSOR
IS
    retention_cursor SYS_REFCURSOR;
BEGIN
    OPEN retention_cursor FOR
        WITH CurrentYearStudentCount AS (
            SELECT
                P.ClassID,
                COUNT(*) AS CurrentStudentCount
            FROM
                PUPIL P
                JOIN ACADEMIC_RESULTS AR ON P.PupilID = AR.PupilID
                JOIN PUPIL_REWARDS PR ON P.PupilID = PR.PupilID
            WHERE
                PR.SchoolYear = p_currentYear  
                AND AR.PromotionStatus = 'Y' 
            GROUP BY
                P.ClassID
        ),
        PreviousYearStudentCount AS (
            SELECT
                P.ClassID,
                COUNT(*) AS PreviousStudentCount
            FROM
                PUPIL P
                JOIN ACADEMIC_RESULTS AR ON P.PupilID = AR.PupilID
                JOIN PUPIL_REWARDS PR ON P.PupilID = PR.PupilID
            WHERE
                PR.SchoolYear = p_previousYear 
            GROUP BY
                P.ClassID
        ),
        RetentionRates AS (
            SELECT
                CY.ClassID,
                COALESCE(CY.CurrentStudentCount, 0) AS CurrentStudentCount,
                COALESCE(PY.PreviousStudentCount, 0) AS PreviousStudentCount,
                CASE
                    WHEN PY.PreviousStudentCount > 0 THEN
                        (COALESCE(CY.CurrentStudentCount, 0) / PY.PreviousStudentCount) * 100
                    ELSE
                        NULL
                END AS RetentionRate
            FROM
                CurrentYearStudentCount CY
                LEFT JOIN PreviousYearStudentCount PY ON CY.ClassID = PY.ClassID
        )
        SELECT
            ClassID,
            CurrentStudentCount,
            PreviousStudentCount,
            RetentionRate
        FROM
            RetentionRates
        ORDER BY
            ClassID;

    RETURN retention_cursor;
END;
--
DECLARE
    retention_cursor SYS_REFCURSOR;
    v_ClassID PUPIL.ClassID%TYPE;
    v_CurrentStudentCount NUMBER;
    v_PreviousStudentCount NUMBER;
    v_RetentionRate NUMBER;
BEGIN
    -- G?i function và truy?n n?m hi?n t?i và n?m tr??c
    retention_cursor := GetRetentionRates(2024, 2023);

    -- Duy?t qua k?t qu?
    LOOP
        FETCH retention_cursor INTO v_ClassID, v_CurrentStudentCount, v_PreviousStudentCount, v_RetentionRate;
        EXIT WHEN retention_cursor%NOTFOUND;

        -- Hi?n th? k?t qu?
        DBMS_OUTPUT.PUT_LINE('Class ID: ' || v_ClassID || ', Current Students: ' || v_CurrentStudentCount || 
                             ', Previous Students: ' || v_PreviousStudentCount || ', Retention Rate: ' || v_RetentionRate);
    END LOOP;

    -- ?óng con tr? sau khi s? d?ng
    CLOSE retention_cursor;
END;
--10.5
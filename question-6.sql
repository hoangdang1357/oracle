//1
create INDEX idx_AR_AcademicPerformance ON ACADEMIC_RESULTS (AcademicPerformance);
CREATE INDEX idx_AR_PupilID ON ACADEMIC_RESULTS (PupilID);
CREATE INDEX idx_P_PupilName ON PUPIL (PupilName);

//2
--create INDEX idx_AR_AcademicPerformance ON ACADEMIC_RESULTS (AcademicPerformance);
CREATE INDEX idx_AR_PromotionStatus on ACADEMIC_RESULTS(PromotionStatus)
//3
CREATE INDEX idx_AR_Conduct ON ACADEMIC_RESULTS (Conduct);

//4
-- CREATE INDEX idx_AR_AcademicPerformance ON ACADEMIC_RESULTS (AcademicPerformance);
CREATE INDEX idx_P_ClassID ON PUPIL (ClassID);

//5
--CREATE INDEX idx_AC_AcademicPerformance ON ACADEMIC_RESULTS (AcademicPerformance);
--CREATE INDEX idx_P_ClassID ON PUPIL (ClassID);
CREATE INDEX idx_TA_ClassID ON TEACHING_ASSIGNMENT (ClassID);
CREATE INDEX idx_TA_TeacherID ON TEACHING_ASSIGNMENT (TeacherID);
CREATE INDEX idx_C_ClassSize ON CLASSES (ClassSize);

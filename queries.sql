SELECT * FROM aesae;

SELECT SUBJ_ID, SEX
FROM participants
WHERE SEX ='F'; -- printing ID nos. of female partipants only

SELECT SUBJ_ID, AGE
FROM participants 
WHERE AGE > 70.0; -- prinitng IDs of participants whose age is greater than 70

SELECT SUBJ_ID, TRT, SEX
FROM participants 
WHERE TRT= 'Placebo' AND SEX= 'F'; -- printing participants receiving placebos and are females

SELECT SUBJ_ID, AGE
FROM participants 
ORDER BY AGE asc; -- ARRANGING PARTICIPANT IDs in ascending order of age

SELECT COUNT(*) as total_participants
FROM participants; -- Counting total number of participants

SELECT COUNT(*)
FROM participants
WHERE AGE IS NULL OR SUBJ_ID IS NULL OR TRT IS NULL OR SEX IS NULL; -- FINDING AND PRINTING ANY NULL VALUES (Zero in this case)

SELECT *
FROM aesae a
LEFT JOIN participants p
ON a.SUBJ_ID = p.SUBJ_ID
WHERE p.SUBJ_ID = '01-701-1015'; -- printing records for SUBJECT ID '01-701-1015' BY RECONCILING BOTH THE TABLES

INSERT INTO NOTICE
(NOTICE_ID, CONTENTS, WRITER)
VALUES
('NOTICE_02', '이벤트 안내', '마케팅팀');

INSERT INTO VISITOR 
(VISITOR_ID, NOTICE_ID, VISITOR_NAME)
VALUES 
('VISITE_03', 'NOTICE_02', '백지영');
INSERT INTO VISITOR 
(VISITOR_ID, NOTICE_ID, VISITOR_NAME)
VALUES 
('VISITE_04', 'NOTICE_02', '최민호');
INSERT INTO VISITOR 
(VISITOR_ID, NOTICE_ID, VISITOR_NAME)
VALUES 
('VISITE_05', 'NOTICE_02', '송지현');

DELETE FROM VISITOR
WHERE NOTICE_ID = 'NOTICE_02';

DELETE FROM NOTICE
WHERE NOTICE_ID = 'NOTICE_02';


-- TRIGGER

CREATE OR REPLACE TRIGGER trigger_name
TIMING -- BEFORE / AFTER
EVENT  -- INSERT / UPDATE / DELETE
ON table_name
BEGIN
trigger_body
END;
================


CREATE OR REPLACE TRIGGER SECURE_STUDENT
BEFORE 
INSERT OR UPDATE OR DELETE
ON STUDENT
BEGIN
IF (TO_CHAR(SYSDATE,'DY') IN ('SAT','SUN')) OR
                                            (TO_CHAR(SYSDATE,'HH24:MI')
                                             NOT BETWEEN '11:30' AND '18:00')
THEN RAISE_APPLICATION_ERROR (-20500,'You may
insert into EMPLOYEES table only
during business hours.');
END IF;
END;
/

INSERT INTO STUDENT VALUES(6,'AAAA','PUNE','M',80);

SELECT * FROM STUDENT ;
SELECT * FROM BL_LIST;
--	전체10
select * from admin;
SELECT * FROM CLAIM;
/****************************************************************************************
****************************************************************************************
								블랙리스트:10건
****************************************************************************************
****************************************************************************************/
INSERT	INTO BL_LIST(CL_SEQ, AID, BLN, PID)
		VALUES('C_0000003','atest03','0000000032','ptest01');

INSERT	INTO BL_LIST(CL_SEQ, AID, BLN, PID)
		VALUES('C_0000012','atest03','0000000032','ptest01');

INSERT	INTO BL_LIST(CL_SEQ, AID, BLN, PID)
		VALUES('C_0000004','atest03','0000000048','ptest08');

INSERT	INTO BL_LIST(CL_SEQ, AID, BLN, PID)
		VALUES('C_0000005','atest03','0000000014','ptest02');

INSERT	INTO BL_LIST(CL_SEQ, AID, BLN, PID)
		VALUES('C_0000006','atest04','0000000048','ptest03');

INSERT	INTO BL_LIST(CL_SEQ, AID, BLN, PID)
		VALUES('C_0000007','atest04','0000000026','ptest05');

INSERT	INTO BL_LIST(CL_SEQ, AID, BLN, PID)
		VALUES('C_0000008','atest04','0000000033','ptest01');

INSERT	INTO BL_LIST(CL_SEQ, AID, BLN, PID)
		VALUES('C_0000009','atest04','0000000039','ptest07');

INSERT	INTO BL_LIST(CL_SEQ, AID, BLN, PID)
		VALUES('C_0000010','atest03','0000000041','ptest02');

INSERT	INTO BL_LIST(CL_SEQ, AID, BLN, PID)
		VALUES('C_0000011','atest03','0000000012','ptest01');


COMMIT;

SELECT * FROM BL_LIST;

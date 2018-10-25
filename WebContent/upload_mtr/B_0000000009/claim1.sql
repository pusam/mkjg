SELECT * FROM CLAIM;
--	전체15

/****************************************************************************************
****************************************************************************************
								클레임:15건
****************************************************************************************
****************************************************************************************/
INSERT	INTO CLAIM(CL_SEQ, CL_TITLE, CL_TEXT, WID, WTYPE, WIP, WDATE,
		AID, CL_STATUS, BLN, PID, MSG, AIP)
		VALUES(C_SEQ(),'신고1','신고11111','GG1','G','127.0.0.1',SYSDATE,
		'atest10','R','0000000047','ptest10','메세지','127.0.0.1');

INSERT	INTO CLAIM(CL_SEQ, CL_TITLE, CL_TEXT, WID, WTYPE, WIP, WDATE,
		AID, CL_STATUS, BLN, PID, MSG, AIP)
		VALUES(C_SEQ(),'신고2','신고2222','GG2','G','127.0.0.1',SYSDATE,
		'atest10','R','0000000047','ptest10','메세지','127.0.0.1');

INSERT	INTO CLAIM(CL_SEQ, CL_TITLE, CL_TEXT, WID, WTYPE, WIP, WDATE,
		AID, CL_STATUS, BLN, PID, MSG, AIP)
		VALUES(C_SEQ(),'신고3','신고33333','CLN1','C','127.0.0.1',SYSDATE,
		'atest07','R','0000000017','ptest10','메세지','127.0.0.1');

INSERT	INTO CLAIM(CL_SEQ, CL_TITLE, CL_TEXT, WID, WTYPE, WIP, WDATE,
		AID, CL_STATUS, BLN, PID, MSG, AIP)
		VALUES(C_SEQ(),'신고4','신고444','CLN22','C','127.0.0.1',SYSDATE,
		'atest07','R','0000000011','ptest10','메세지','127.0.0.1');

INSERT	INTO CLAIM(CL_SEQ, CL_TITLE, CL_TEXT, WID, WTYPE, WIP, WDATE,
		AID, CL_STATUS, BLN, PID, MSG, AIP)
		VALUES(C_SEQ(),'신고5','신고55555','GG3','G','127.0.0.1',SYSDATE,
		'atest10','R','0000000011','ptest10','메세지','127.0.0.1');

INSERT	INTO CLAIM(CL_SEQ, CL_TITLE, CL_TEXT, WID, WTYPE, WIP, WDATE,
		AID, CL_STATUS, BLN, PID, MSG, AIP)
		VALUES(C_SEQ(),'신고6','신고666666','CLN2','C','127.0.0.1',SYSDATE,
		'atest07','R','0000000024','ptest10','메세지','127.0.0.1');

INSERT	INTO CLAIM(CL_SEQ, CL_TITLE, CL_TEXT, WID, WTYPE, WIP, WDATE,
		AID, CL_STATUS, BLN, PID, MSG, AIP)
		VALUES(C_SEQ(),'신고7','신고7777','CLN25','C','127.0.0.1',SYSDATE,
		'atest07','R','0000000031','ptest10','메세지','127.0.0.1');

INSERT	INTO CLAIM(CL_SEQ, CL_TITLE, CL_TEXT, WID, WTYPE, WIP, WDATE,
		AID, CL_STATUS, BLN, PID, MSG, AIP)
		VALUES(C_SEQ(),'신고8','신고8888','GG56','G','127.0.0.1',SYSDATE,
		'atest05','R','0000000033','ptest10','메세지','127.0.0.1');

INSERT	INTO CLAIM(CL_SEQ, CL_TITLE, CL_TEXT, WID, WTYPE, WIP, WDATE,
		AID, CL_STATUS, BLN, PID, MSG, AIP)
		VALUES(C_SEQ(),'신고9','신고99999','GG75','G','127.0.0.1',SYSDATE,
		'atest05','R','0000000031','ptest10','메세지','127.0.0.1');

INSERT	INTO CLAIM(CL_SEQ, CL_TITLE, CL_TEXT, WID, WTYPE, WIP, WDATE,
		AID, CL_STATUS, BLN, PID, MSG, AIP)
		VALUES(C_SEQ(),'신고10','신고1010','CLN13','C','127.0.0.1',SYSDATE,
		'atest02','R','0000000025','ptest10','메세지','127.0.0.1');

INSERT	INTO CLAIM(CL_SEQ, CL_TITLE, CL_TEXT, WID, WTYPE, WIP, WDATE,
		AID, CL_STATUS, BLN, PID, MSG, AIP)
		VALUES(C_SEQ(),'신고11','신고111111','GG42','G','127.0.0.1',SYSDATE,
		'atest05','R','0000000011','ptest10','메세지','127.0.0.1');

INSERT	INTO CLAIM(CL_SEQ, CL_TITLE, CL_TEXT, WID, WTYPE, WIP, WDATE,
		AID, CL_STATUS, BLN, PID, MSG, AIP)
		VALUES(C_SEQ(),'신고12','신고121212','GG22','G','127.0.0.1',SYSDATE,
		'atest05','R','0000000012','ptest10','메세지','127.0.0.1');

INSERT	INTO CLAIM(CL_SEQ, CL_TITLE, CL_TEXT, WID, WTYPE, WIP, WDATE,
		AID, CL_STATUS, BLN, PID, MSG, AIP)
		VALUES(C_SEQ(),'신고13','신고131313','GG876','G','127.0.0.1',SYSDATE,
		'atest05','R','0000000008','ptest10','메세지','127.0.0.1');

INSERT	INTO CLAIM(CL_SEQ, CL_TITLE, CL_TEXT, WID, WTYPE, WIP, WDATE,
		AID, CL_STATUS, BLN, PID, MSG, AIP)
		VALUES(C_SEQ(),'신고14','신고1414','CLN31','C','127.0.0.1',SYSDATE,
		'atest02','R','0000000037','ptest10','메세지','127.0.0.1');

INSERT	INTO CLAIM(CL_SEQ, CL_TITLE, CL_TEXT, WID, WTYPE, WIP, WDATE,
		AID, CL_STATUS, BLN, PID, MSG, AIP)
		VALUES(C_SEQ(),'신고15','신고15151551','CLN11','C','127.0.0.1',SYSDATE,
		'atest02','R','0000000017','ptest10','메세지','127.0.0.1');


COMMIT;

SELECT * FROM CLAIM;

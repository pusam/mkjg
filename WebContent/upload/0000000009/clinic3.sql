/*
������ ���õ����� 50��
���δ��	��ü 10��(�ְ�8,�߰�2) 			 - ����ڵ�Ϲ�ȣ�� Ȧ���̸� ����,¦���̸� �ܰ�
���ε�	��ü	30��(�ְ�15,�߰�10,24�ð� 5) - ����ڵ�Ϲ�ȣ�� Ȧ���̸� �ܰ�,¦���̸� ����
���ΰ���	��ü 10�� (�ְ�10)
Sample ���� ��
*/
TRUNCATE TABLE CLINIC;
ROLLBACK;
SELECT * FROM CLINIC;


/****************************************************************************************
****************************************************************************************
					�����δ���ü(�ְ�8,�߰�2):����ڵ�Ϲ�ȣ�� Ȧ���̸� ����,¦���̸� �ܰ�
****************************************************************************************
****************************************************************************************/
INSERT INTO CLINIC
	(	BLN,CID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000001','ctest01','�ֿ뺴��1','����1','02-000-0001','s1@sist.co.kr',
		'09:00','17:00','00001','����','���Ǳ�','��õ��','0','0','1��',
			1,'N','SAMPLE ����1','N','N','R','127.0.0.1',SYSDATE	);

INSERT INTO CLINIC
	(	BLN,CID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'000000002,','ctest02','�ֿ뺴��2','����2','02-000-0002','s2@sist.co.kr',
		'09:00','18:00','00002','����','���Ǳ�','�Ÿ���','0','0','2��',
			2,'N','SAMPLE ����2','N','N','R','127.0.0.1',SYSDATE	);

INSERT INTO CLINIC
	(	BLN,CID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'000000003','ctest03','�ֿ뺴��3','����3','02-000-0003','s3@sist.co.kr',
		'09:00','19:00','00003','����','���Ǳ�','������','0','0','3��',
			1,'N','SAMPLE ����3','N','N','R','127.0.0.1',SYSDATE	);

INSERT INTO CLINIC
	(	BLN,CID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000004','ctest04','�ֿ뺴��4','����4','02-000-0001','s4@sist.co.kr',
		'09:00','17:00','00004','����','���α�','û�','0','0','4��',
			2,'N','SAMPLE ����4','N','N','R','127.0.0.1',SYSDATE	);

INSERT INTO CLINIC
	(	BLN,CID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000005','ctest05','�ֿ뺴��5','����5','02-000-0005','s5@sist.co.kr',
		'09:00','18:00','00005','����','���α�','�ű���','0','0','5��',
			1,'Y','SAMPLE ����5','N','N','R','127.0.0.1',SYSDATE	);

INSERT INTO CLINIC
	(	BLN,CID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000006','ctest06','�ֿ뺴��6','����6','02-000-0006','s6@sist.co.kr',
		'09:00','19:00','00006','����','���α�','������','0','0','6��',
			2,'N','SAMPLE ����6','N','N','R','127.0.0.1',SYSDATE	);

INSERT INTO CLINIC
	(	BLN,CID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'000000007,','ctest07','�ֿ뺴��7','����7','02-000-0002','s7@sist.co.kr',
		'10:00','18:00','00007','����','���α�','ȿ�ڵ�','0','0','7��',
			1,'N','SAMPLE ����7','N','N','R','127.0.0.1',SYSDATE	);

INSERT INTO CLINIC
	(	BLN,CID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000008','ctest08','�ֿ뺴��8','����8','02-000-0008','s8@sist.co.kr',
		'10:00','19:00','00008','����','���α�','â����','0','0','8��',
			1,'N','SAMPLE ����8','N','N','R','127.0.0.1',SYSDATE	);

INSERT INTO CLINIC
	(	BLN,CID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000009','ctest09','�ֿ뺴��9','����9','02-000-0009','s9@sist.co.kr',
		'09:00','18:00','00009','����','���α�','���ǵ�','0','0','9��',
			1,'Y','SAMPLE ����9','N','N','R','127.0.0.1',SYSDATE	);
INSERT	INTO NIGHT_CARE(BLN,NOPEN,NCLOSE,DAY_OF_WEEK)
		VALUES ('0000000009','14:00','23:00',3);

INSERT INTO CLINIC
	(	BLN,CID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000010','ctest10','�ֿ뺴��10','����10','02-000-0010','s10@sist.co.kr',
		'09:00','19:00','00010','����','���α�','������','0','0','10��',
			2,'Y','SAMPLE ����10','N','N','R','127.0.0.1',SYSDATE	);
INSERT	INTO NIGHT_CARE(BLN,NOPEN,NCLOSE,DAY_OF_WEEK)
		VALUES ('0000000010','10:00','21:00',4);




/****************************************************************************************
****************************************************************************************
		���ε� ��ü	30��(�ְ�15,�߰�10,24�ð� 5) : ����ڵ�Ϲ�ȣ�� Ȧ���̸� �ܰ�,¦���̸� ����
****************************************************************************************
****************************************************************************************/
SELECT * FROM CLINIC;

INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000011','ctest01','atest01','�ֿ뺴��11','����11','02-000-0011','s11@sist.co.kr',
		'09:00','18:00','00011','����','���α�','���ε�','0','0','11��',
		2,'N','SAMPLE ����11','N','N','Y','127.0.0.1',SYSDATE	);


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000012','ctest02','atest02','�ֿ뺴��12','����12','02-000-0012','s12@sist.co.kr',
		'09:00','18:00','00012','����','���α�','����','0','0','12��',
			1,'N','SAMPLE ����12','N','N','Y','127.0.0.1',SYSDATE	);


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000013','ctest03','atest01','�ֿ뺴��1','����1','02-000-0013','s13@sist.co.kr',
		'09:00','19:00','00013','����','���α�','���ϵ�','0','0','13��',
			2,'N','SAMPLE ����13','N','N','Y','127.0.0.1',SYSDATE	);


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000014','ctest04','atest04','�ֿ뺴��14','����14','02-000-0014','s14@sist.co.kr',
		'09:00','18:00','00001','����','���α�','���ε�','0','0','1��',
			1,'N','SAMPLE ����14','N','N','Y','127.0.0.1',SYSDATE	);


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000015','ctest05','atest05','�ֿ뺴��5','����15','02-000-0015','s15@sist.co.kr',
		'09:00','19:00','00015','����','���α�','ü�ε�','0','0','15��',
			2,'N','SAMPLE ����15','N','N','Y','127.0.0.1',SYSDATE	);


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000016','ctest06','atest06','�ֿ뺴��16','����16','02-000-0016','s16@sist.co.kr',
		'09:00','17:00','00016','����','���α�','�ʿ','0','0','16��',
			1,'N','SAMPLE ����16','N','N','Y','127.0.0.1',SYSDATE	);


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000017','ctest07','atest07','�ֿ뺴��17','����17','02-000-0017','s17@sist.co.kr',
		'09:00','18:00','00001','����','���α�','���ڵ�','0','0','17��',
			2,'N','SAMPLE ����17','N','N','Y','127.0.0.1',SYSDATE	);


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000018','ctest08','atest08','�ֿ뺴��18','����18','02-000-0018','s18@sist.co.kr',
		'09:00','19:00','00001','����','���α�','������','0','0','18��',
			1,'N','SAMPLE ����18','N','N','Y','127.0.0.1',SYSDATE	);


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000019','ctest09','atest09','�ֿ뺴��19','����19','02-000-0019','s19@sist.co.kr',
		'08:30','18:00','00001','����','���α�','���ŵ�','0','0','19��',
			2,'N','SAMPLE ����19','N','N','Y','127.0.0.1',SYSDATE	);


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000020','ctest10','atest10','�ֿ뺴��20','����20','02-000-0020','��20@sist.co.kr',
		'09:00','18:00','00020','����','���α�','������','0','0','20��',
			1,'N','SAMPLE ����20','N','N','Y','127.0.0.1',SYSDATE	);


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000021','ctest01','atest01','�ֿ뺴��21','����21','02-000-0021','s21@sist.co.kr',
		'09:00','18:00','00021','����','���빮��','���⵿','0','0','21��',
			2,'N','SAMPLE ����21','N','N','Y','127.0.0.1',SYSDATE	);


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000022','ctest02','atest02','�ֿ뺴��22','����22','02-000-0022','s22@sist.co.kr',
		'08:00','19:00','00022','����','���α�','������','0','0','22��',
			1,'N','SAMPLE ����22','N','N','Y','127.0.0.1',SYSDATE	);


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000023','ctest03','atest03','�ֿ뺴��23','����23','02-000-0023','s23@sist.co.kr',
		'07:30','19:00','00023','����','������','�߰','0','0','23��',
			2,'N','SAMPLE ����23','N','N','Y','127.0.0.1',SYSDATE	);


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000024','ctest04','atest04','�ֿ뺴��24','����24','02-000-0024','s24@sist.co.kr',
		'08:00','19:00','00024','����','������','������','0','0','24��',
			1,'N','SAMPLE ����24','N','N','Y','127.0.0.1',SYSDATE	);


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000025','ctest05','atest05','�ֿ뺴��25','����25','02-000-0025','s25@sist.co.kr',
		'07:00','19:00','00025','����','��걸','������','0','0','25��',
			2,'N','SAMPLE ����25','N','N','Y','127.0.0.1',SYSDATE	);


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000026','ctest06','atest06','�ֿ뺴��26','����26','02-000-0026','s26@sist.co.kr',
		'09:00','19:00','00001','����','�߱�','���е�','0','0','26��',
			1,'Y','SAMPLE ����26','N','N','Y','127.0.0.1',SYSDATE	);
	INSERT	INTO NIGHT_CARE(BLN,NOPEN,NCLOSE,DAY_OF_WEEK)
				VALUES ('0000000026','10:00','21:00',1);

INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000027','ctest07','atest07','�ֿ뺴��27','����27','02-000-0027','s27@sist.co.kr',
		'09:00','18:00','00027','����','�߶���','���','0','0','27��',
			2,'Y','SAMPLE ����27','N','N','Y','127.0.0.1',SYSDATE	);
	INSERT	INTO NIGHT_CARE(BLN,NOPEN,NCLOSE,DAY_OF_WEEK)
			VALUES ('0000000027','13:00','24:00',2);

INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000028','ctest08','atest08','�ֿ뺴��28','����28','02-000-0028','s28@sist.co.kr',
		'09:00','18:00','00028','����','���α�','�Ͽ��','0','0','28��',
			1,'Y','SAMPLE ����28','N','N','Y','127.0.0.1',SYSDATE	);
	INSERT	INTO NIGHT_CARE(BLN,NOPEN,NCLOSE,DAY_OF_WEEK)
			VALUES ('0000000028','14:00','24:00',3);

INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000029','ctest09','atest09','�ֿ뺴��29','����29','02-000-0029','s29@sist.co.kr',
		'09:00','19:00','00029','����','���ϱ�','�ǳ�','0','0','29��',
			2,'Y','SAMPLE ����29','N','N','Y','127.0.0.1',SYSDATE	);
	INSERT	INTO NIGHT_CARE(BLN,NOPEN,NCLOSE,DAY_OF_WEEK)
			VALUES ('0000000029','10:00','24:00',4);

INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000030','ctest10','atest10','�ֿ뺴��30','����30','02-000-0030','s30@sist.co.kr',
		'09:00','19:00','00030','����','������','������','0','0','30��',
			1,'Y','SAMPLE ����30','N','N','Y','127.0.0.1',SYSDATE	);
	INSERT	INTO NIGHT_CARE(BLN,NOPEN,NCLOSE,DAY_OF_WEEK)
			VALUES ('0000000030','10:00','22:00',5);

INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000031','ctest01','atest01','�ֿ뺴��31','����31','02-000-0031','s31@sist.co.kr',
		'09:00','19:00','00031','����','����','���굿','0','0','31��',
			2,'Y','SAMPLE ����31','N','N','Y','127.0.0.1',SYSDATE	);
	INSERT	INTO NIGHT_CARE(BLN,NOPEN,NCLOSE,DAY_OF_WEEK)
			VALUES ('0000000031','11:00','21:30',1);


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000032','ctest02','atest02','�ֿ뺴��32','����32','02-000-0001','s32@sist.co.kr',
		'09:00','18:00','00032','����','���빮��','�Ͼ�����','0','0','32��',
			1,'Y','SAMPLE ����32','N','N','Y','127.0.0.1',SYSDATE	);
	INSERT	INTO NIGHT_CARE(BLN,NOPEN,NCLOSE,DAY_OF_WEEK)
			VALUES ('0000000032','10:30','22:30',2);

INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000033','ctest03','atest03','�ֿ뺴��33','����33','02-000-0033','s33@sist.co.kr',
		'09:00','19:00','00033','����','������','���ﵿ','0','0','33��',
			2,'Y','SAMPLE ����33','N','N','Y','127.0.0.1',SYSDATE	);
INSERT	INTO NIGHT_CARE(BLN,NOPEN,NCLOSE,DAY_OF_WEEK)
			VALUES ('0000000033','10:00','21:00',3);

INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000034','ctest04','atest04','�ֿ뺴��34','����34','02-000-0034','s34@sist.co.kr',
		'09:00','18:00','00034','����','������','�밭��','0','0','34��',
			1,'Y','SAMPLE ����34','N','N','Y','127.0.0.1',SYSDATE	);
INSERT	INTO NIGHT_CARE(BLN,NOPEN,NCLOSE,DAY_OF_WEEK)
			VALUES ('0000000034','10:00','22:00',4);

INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000035','ctest05','atest05','�ֿ뺴��35','����35','02-000-0035','s35@sist.co.kr',
		'09:00','19:00','00035','����','���۱�','����','0','0','35��',
			2,'Y','SAMPLE ����35','N','N','Y','127.0.0.1',SYSDATE	);
	INSERT	INTO NIGHT_CARE(BLN,NOPEN,NCLOSE,DAY_OF_WEEK)
			VALUES ('0000000035','10:00','21:00',5);



INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000036','ctest06','atest06','�ֿ뺴��36','����36','02-000-0036','s36@sist.co.kr',
		'24:24','24:24','00036','����','���۱�','��浿','0','0','36��',
			1,'A','SAMPLE ����36','N','N','Y','127.0.0.1',SYSDATE	);

INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000037','ctest07','atest07','�ֿ뺴��37','����37','02-000-0037','s37@sist.co.kr',
		'24:24','24:24','00037','����','���ʱ�','���ʵ�','0','0','37��',
			2,'A','SAMPLE ����37','N','N','Y','127.0.0.1',SYSDATE	);

INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000038','ctest08','atest08','�ֿ뺴��38','����38','02-000-0038','s38@sist.co.kr',
		'24:24','24:24','00038','����','������','���ﵿ','0','0','38��',
			1,'A','SAMPLE ����38','N','N','Y','127.0.0.1',SYSDATE	);

INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000039','ctest09','atest09','�ֿ뺴��39','����39','02-000-0039','s39@sist.co.kr',
		'24:24','24:24','00039','����','���ı�','���ݵ�','0','0','39��',
			1,'A','SAMPLE ����39','N','N','Y','127.0.0.1',SYSDATE	);

INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000040','ctest10','atest10','�ֿ뺴��40','����40','02-000-0040','s40@sist.co.kr',
		'24:24','24:24','00040','����','������','�浿','0','0','40��',
			1,'A','SAMPLE ����40','N','N','Y','127.0.0.1',SYSDATE	);


/****************************************************************************************
****************************************************************************************
								���ΰ���	��ü 10�� (�ְ�10)
****************************************************************************************
****************************************************************************************/

INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000041','ctest01','atest01','�ֿ뺴��41','����41','02-000-0041','s41@sist.co.kr',
		'09:00','17:00','00041','����','���α�','�簣��','0','0','41��',
			1,'N','SAMPLE ����1','N','N','N','127.0.0.1',SYSDATE	);
	INSERT INTO REJ_CO(BLN,REJ)
	VALUES	('0000000041','Ȯ�ε��� �ʴ� ����� ��Ϲ�ȣ �Դϴ�.');


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000042','ctest02','atest02','�ֿ뺴��42','����42','02-000-0042','s42@sist.co.kr',
		'09:00','17:00','00042','����','���ʱ�','��赿','0','0','42��',
			1,'N','SAMPLE ����1','N','N','N','127.0.0.1',SYSDATE	);
	INSERT INTO REJ_CO(BLN,REJ)
	VALUES	('0000000042','�Է��Ͻ� �ּ��� Ȯ���� ��ƽ��ϴ�. Ȯ�κ�Ź�帳�ϴ�.');


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000043','ctest03','atest03','�ֿ뺴��43','����43','02-000-0043','s43@sist.co.kr',
		'09:00','17:00','00043','����','���ʱ�','���絿','0','0','43��',
			1,'N','SAMPLE ����43','N','N','N','127.0.0.1',SYSDATE	);
	INSERT INTO REJ_CO(BLN,REJ)
	VALUES	('0000000043','Ȯ���� ��� ��������� �����Ѱ� �����ϴ�.');


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000044','ctest04','atest04','�ֿ뺴��44','����44','02-000-0044','s44@sist.co.kr',
		'09:00','17:00','00044','����','���ʱ�','��鵿','0','0','44��',
			1,'N','SAMPLE ����44','N','N','N','127.0.0.1',SYSDATE	);
	INSERT INTO REJ_CO(BLN,REJ)
	VALUES	('0000000044','Ȯ�ε��� �ʴ� ����� ��Ϲ�ȣ �Դϴ�.');


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000045','ctest05','atest05','�ֿ뺴��45','����45','02-000-0001','s45@sist.co.kr',
		'09:00','17:00','00045','����','���ʱ�','������','0','0','45��',
			1,'N','SAMPLE ����45','N','N','N','127.0.0.1',SYSDATE	);
	INSERT INTO REJ_CO(BLN,REJ)
	VALUES	('0000000045','�Է��Ͻ� �ּ��� Ȯ���� ��ƽ��ϴ�. Ȯ�κ�Ź�帳�ϴ�.');


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000046','ctest06','atest06','�ֿ뺴��46','����46','02-000-0046','s46@sist.co.kr',
		'09:00','17:00','00046','����','���ʱ�','�����','0','0','46��',
			1,'N','SAMPLE ����46','N','N','N','127.0.0.1',SYSDATE	);
	INSERT INTO REJ_CO(BLN,REJ)
	VALUES	('0000000046','������ �������մϴ�.');


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000047','ctest07','atest07','�ֿ뺴��47','����47','02-000-0047','s47@sist.co.kr',
		'09:00','17:00','00047','����','���ʱ�','���','0','0','47��',
			1,'N','SAMPLE ����47','N','N','N','127.0.0.1',SYSDATE	);
	INSERT INTO REJ_CO(BLN,REJ)
	VALUES	('0000000047','�Է��Ͻ� �ּ��� Ȯ���� ��ƽ��ϴ�. Ȯ�κ�Ź�帳�ϴ�.');


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000048','ctest08','atest08','�ֿ뺴��48','����48','02-000-0048','s48@sist.co.kr',
		'09:00','17:00','00048','����','������','������','0','0','48��',
			1,'N','SAMPLE ����48','N','N','N','127.0.0.1',SYSDATE	);
	INSERT INTO REJ_CO(BLN,REJ)
	VALUES	('0000000048','������ �������մϴ�.');


INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000049','ctest09','atest09','�ֿ뺴��49','����49','02-000-0049','s49@sist.co.kr',
		'09:00','17:00','00049','����','������','õȣ��','0','0','49��',
			1,'N','SAMPLE ����49','N','N','N','127.0.0.1',SYSDATE	);
	INSERT INTO REJ_CO(BLN,REJ)
	VALUES	('0000000049','Ȯ�ε��� �ʴ� ����� ��Ϲ�ȣ �Դϴ�.');

INSERT INTO CLINIC
	(	BLN,CID,AID,CLN_NAME,DIRECTOR,TEL,EMAIL,
		OPEN_TIME,	CLOSE_TIME,POST,SIDO,SIGUNGU,EMD,X,Y,ADDR_DETAIL,
		SUBJECT,NIGHT_YN,INTRO,CUT_YN,HSTL_YN,APRVL_YN,CIP,APRVL_DATE	)
	VALUES
	(	'0000000050','ctest10','atest10','�ֿ뺴��50','����50','02-000-0050','s50@sist.co.kr',
		'09:00','17:00','00050','����','������','���ϵ�','0','0','50��',
			1,'N','SAMPLE ����50','N','N','N','127.0.0.1',SYSDATE	);
	INSERT INTO REJ_CO(BLN,REJ)
	VALUES	('0000000050','������ �������մϴ�.');


SELECT * FROM REJ_CO;

SELECT * FROM CLINIC;

COMMIT;
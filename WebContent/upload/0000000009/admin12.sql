/*
������ ���õ����� 10��
*/
TRUNCATE TABLE ADMIN;
ROLLBACK;
SELECT * FROM ADMIN;

-- ������1
INSERT INTO ADMIN(AID,PW,ANAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL	)
		VALUES(	'atest01','qlalf1234','������','12345','�뱸������ �ϱ� ����2�� 119','101ȣ','atest01@sist.co.kr','19920308',
				'010-0000-0001');
-- ������2
INSERT INTO ADMIN(AID,PW,ANAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL	)
		VALUES(	'atest02','qlalf1234','������2','12345','����Ư���� �ϱ� ����2�� 129','102ȣ',	'atest02@sist.co.kr','19920308',
				'010-0000-0002');
-- ������3
INSERT INTO ADMIN(AID,PW,ANAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL	)
		VALUES(	'atest03','qlalf1234','������3','12345','���������� �ϱ� ����2�� 139','103ȣ',	'atest03@sist.co.kr','19920308',
				'010-0000-0003');
-- ������4
INSERT INTO ADMIN(AID,PW,ANAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL	)
		VALUES(	'atest04','qlalf1234','������4','12345','���ֱ����� �ϱ� ����2�� 149','104ȣ',	'atest04@sist.co.kr','19920308',
				'010-0000-0004');
-- ������5
INSERT INTO ADMIN(AID,PW,ANAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL	)
		VALUES(	'atest05','qlalf1234','������5','12345','��걤���� �ϱ� ����2�� 159','101ȣ',	'atest05@sist.co.kr','19920308',
				'010-0000-0005');
-- ������6
INSERT INTO ADMIN(AID,PW,ANAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL	)
		VALUES(	'atest06','qlalf1234','������6','12345','�뱸������ �ϱ� ����2�� 169','106ȣ',	'atest06@sist.co.kr','19920308',
				'010-0000-0006');
-- ������7
INSERT INTO ADMIN(AID,PW,ANAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL	)
		VALUES(	'atest07','qlalf1234','������7','12345','�뱸������ �ϱ� ����2�� 179','107ȣ',	'atest07@sist.co.kr','19920308',
				'010-0000-0007');

-- ������8
INSERT INTO ADMIN(AID,PW,ANAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL	)
		VALUES(	'atest08','qlalf1234','������8','12345','�뱸������ �ϱ� ����2�� 189','108ȣ',	'atest08@sist.co.kr','19920308',
				'010-0000-0008');

-- ������9
INSERT INTO ADMIN(AID,PW,ANAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL	)
		VALUES(	'atest09','qlalf1234','������9','12345','�뱸������ �ϱ� ����2�� 199','109ȣ',	'atest09@sist.co.kr','19920308',
				'010-0000-0009');

-- ������10
INSERT INTO ADMIN(AID,PW,ANAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL	)
		VALUES(	'atest10','qlalf1234','������10','12345','�뱸������ �ϱ� ����2�� 209','110ȣ',	'atest10@sist.co.kr','19920308',
				'010-0000-0010');

commit;
SELECT * FROM ADMIN;

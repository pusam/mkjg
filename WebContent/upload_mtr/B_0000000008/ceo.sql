/*
����� ���õ����� 10��
*/

TRUNCATE TABLE CEO;
ROLLBACK;
SELECT * FROM CEO;

-- �����1
INSERT INTO CEO(CID,PW,CNAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL,CIP	)
		VALUES(	'ctest01','qlalf1234','�����','12345','�뱸������ �ϱ� ����2�� 119','101ȣ','ctest01@sist.co.kr','19920308',
				'010-0000-0001','127.0.0.1');
-- �����2
INSERT INTO CEO(CID,PW,CNAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL,CIP	)
		VALUES(	'ctest02','qlalf1234','�����2','12345','����Ư���� �ϱ� ����2�� 129','102ȣ',	'ctest02@sist.co.kr','19920308',
				'010-0000-0002','127.0.0.1');
-- �����3
INSERT INTO CEO(CID,PW,CNAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL,CIP	)
		VALUES(	'ctest03','qlalf1234','�����3','12345','���������� �ϱ� ����2�� 139','103ȣ',	'ctest03@sist.co.kr','19920308',
				'010-0000-0003','127.0.0.1');
-- �����4
INSERT INTO CEO(CID,PW,CNAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL,CIP	)
		VALUES(	'ctest04','qlalf1234','�����4','12345','���ֱ����� �ϱ� ����2�� 149','104ȣ',	'ctest04@sist.co.kr','19920308',
				'010-0000-0004','127.0.0.1');
-- �����5
INSERT INTO CEO(CID,PW,CNAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL,CIP	)
		VALUES(	'ctest05','qlalf1234','�����5','12345','��걤���� �ϱ� ����2�� 159','101ȣ',	'ctest05@sist.co.kr','19920308',
				'010-0000-0005','127.0.0.1');
-- �����6
INSERT INTO CEO(CID,PW,CNAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL,CIP	)
		VALUES(	'ctest06','qlalf1234','�����6','12345','�뱸������ �ϱ� ����2�� 169','106ȣ',	'ctest06@sist.co.kr','19920308',
				'010-0000-0006','127.0.0.1');
-- �����7
INSERT INTO CEO(CID,PW,CNAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL,CIP	)
		VALUES(	'ctest07','qlalf1234','�����7','12345','�뱸������ �ϱ� ����2�� 179','107ȣ',	'ctest07@sist.co.kr','19920308',
				'010-0000-0007','127.0.0.1');

-- �����8
INSERT INTO CEO(CID,PW,CNAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL,CIP	)
		VALUES(	'ctest08','qlalf1234','�����8','12345','�뱸������ �ϱ� ����2�� 189','108ȣ',	'ctest08@sist.co.kr','19920308',
				'010-0000-0008','127.0.0.1');

-- �����9
INSERT INTO CEO(CID,PW,CNAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL,CIP	)
		VALUES(	'ctest09','qlalf1234','�����9','12345','�뱸������ �ϱ� ����2�� 199','109ȣ',	'ctest09@sist.co.kr','19920308',
				'010-0000-0009','127.0.0.1');

-- �����10
INSERT INTO CEO(CID,PW,CNAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL,CIP	)
		VALUES(	'ctest10','qlalf1234','�����10','12345','�뱸������ �ϱ� ����2�� 209','110ȣ',	'ctest10@sist.co.kr','19920308',
				'010-0000-0010','127.0.0.1');

commit;
SELECT * FROM CEO;

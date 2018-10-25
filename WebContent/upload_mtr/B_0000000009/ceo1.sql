/*
사업자 샘플데이터 10개
*/

TRUNCATE TABLE CEO;
ROLLBACK;
SELECT * FROM CEO;

-- 사업자1
INSERT INTO CEO(CID,PW,CNAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL,CIP	)
		VALUES(	'ctest01','qlalf1234','사업자','12345','대구광역시 북구 복현2동 119','101호','ctest01@sist.co.kr','19920308',
				'010-0000-0001','127.0.0.1');
-- 사업자2
INSERT INTO CEO(CID,PW,CNAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL,CIP	)
		VALUES(	'ctest02','qlalf1234','사업자2','12345','서울특별시 북구 복현2동 129','102호',	'ctest02@sist.co.kr','19920308',
				'010-0000-0002','127.0.0.1');
-- 사업자3
INSERT INTO CEO(CID,PW,CNAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL,CIP	)
		VALUES(	'ctest03','qlalf1234','사업자3','12345','대전광역시 북구 복현2동 139','103호',	'ctest03@sist.co.kr','19920308',
				'010-0000-0003','127.0.0.1');
-- 사업자4
INSERT INTO CEO(CID,PW,CNAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL,CIP	)
		VALUES(	'ctest04','qlalf1234','사업자4','12345','광주광역시 북구 복현2동 149','104호',	'ctest04@sist.co.kr','19920308',
				'010-0000-0004','127.0.0.1');
-- 사업자5
INSERT INTO CEO(CID,PW,CNAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL,CIP	)
		VALUES(	'ctest05','qlalf1234','사업자5','12345','울산광역시 북구 복현2동 159','101호',	'ctest05@sist.co.kr','19920308',
				'010-0000-0005','127.0.0.1');
-- 사업자6
INSERT INTO CEO(CID,PW,CNAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL,CIP	)
		VALUES(	'ctest06','qlalf1234','사업자6','12345','대구광역시 북구 복현2동 169','106호',	'ctest06@sist.co.kr','19920308',
				'010-0000-0006','127.0.0.1');
-- 사업자7
INSERT INTO CEO(CID,PW,CNAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL,CIP	)
		VALUES(	'ctest07','qlalf1234','사업자7','12345','대구광역시 북구 복현2동 179','107호',	'ctest07@sist.co.kr','19920308',
				'010-0000-0007','127.0.0.1');

-- 사업자8
INSERT INTO CEO(CID,PW,CNAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL,CIP	)
		VALUES(	'ctest08','qlalf1234','사업자8','12345','대구광역시 북구 복현2동 189','108호',	'ctest08@sist.co.kr','19920308',
				'010-0000-0008','127.0.0.1');

-- 사업자9
INSERT INTO CEO(CID,PW,CNAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL,CIP	)
		VALUES(	'ctest09','qlalf1234','사업자9','12345','대구광역시 북구 복현2동 199','109호',	'ctest09@sist.co.kr','19920308',
				'010-0000-0009','127.0.0.1');

-- 사업자10
INSERT INTO CEO(CID,PW,CNAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL,CIP	)
		VALUES(	'ctest10','qlalf1234','사업자10','12345','대구광역시 북구 복현2동 209','110호',	'ctest10@sist.co.kr','19920308',
				'010-0000-0010','127.0.0.1');

commit;
SELECT * FROM CEO;

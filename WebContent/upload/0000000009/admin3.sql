/*
관리자 샘플데이터 10개
*/
TRUNCATE TABLE ADMIN;
ROLLBACK;
SELECT * FROM ADMIN;

-- 관리자1
INSERT INTO ADMIN(AID,PW,ANAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL	)
		VALUES(	'atest01','qlalf1234','관리자','12345','대구광역시 북구 복현2동 119','101호','atest01@sist.co.kr','19920308',
				'010-0000-0001');
-- 관리자2
INSERT INTO ADMIN(AID,PW,ANAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL	)
		VALUES(	'atest02','qlalf1234','관리자2','12345','서울특별시 북구 복현2동 129','102호',	'atest02@sist.co.kr','19920308',
				'010-0000-0002');
-- 관리자3
INSERT INTO ADMIN(AID,PW,ANAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL	)
		VALUES(	'atest03','qlalf1234','관리자3','12345','대전광역시 북구 복현2동 139','103호',	'atest03@sist.co.kr','19920308',
				'010-0000-0003');
-- 관리자4
INSERT INTO ADMIN(AID,PW,ANAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL	)
		VALUES(	'atest04','qlalf1234','관리자4','12345','광주광역시 북구 복현2동 149','104호',	'atest04@sist.co.kr','19920308',
				'010-0000-0004');
-- 관리자5
INSERT INTO ADMIN(AID,PW,ANAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL	)
		VALUES(	'atest05','qlalf1234','관리자5','12345','울산광역시 북구 복현2동 159','101호',	'atest05@sist.co.kr','19920308',
				'010-0000-0005');
-- 관리자6
INSERT INTO ADMIN(AID,PW,ANAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL	)
		VALUES(	'atest06','qlalf1234','관리자6','12345','대구광역시 북구 복현2동 169','106호',	'atest06@sist.co.kr','19920308',
				'010-0000-0006');
-- 관리자7
INSERT INTO ADMIN(AID,PW,ANAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL	)
		VALUES(	'atest07','qlalf1234','관리자7','12345','대구광역시 북구 복현2동 179','107호',	'atest07@sist.co.kr','19920308',
				'010-0000-0007');

-- 관리자8
INSERT INTO ADMIN(AID,PW,ANAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL	)
		VALUES(	'atest08','qlalf1234','관리자8','12345','대구광역시 북구 복현2동 189','108호',	'atest08@sist.co.kr','19920308',
				'010-0000-0008');

-- 관리자9
INSERT INTO ADMIN(AID,PW,ANAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL	)
		VALUES(	'atest09','qlalf1234','관리자9','12345','대구광역시 북구 복현2동 199','109호',	'atest09@sist.co.kr','19920308',
				'010-0000-0009');

-- 관리자10
INSERT INTO ADMIN(AID,PW,ANAME,POST,ADDR,ADDR_DETAIL,EMAIL,BIRTHDAY,TEL	)
		VALUES(	'atest10','qlalf1234','관리자10','12345','대구광역시 북구 복현2동 209','110호',	'atest10@sist.co.kr','19920308',
				'010-0000-0010');

commit;
SELECT * FROM ADMIN;

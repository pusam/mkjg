----- review , care ���õ�����

select * from review;
select * from care;
------------------------------------------------------------ review ���� ������

------ rseq �κ� char(11)�� char(12)�� ����.
DROP TABLE REVIEW CASCADE CONSTRAINTS;
CREATE TABLE REVIEW (
	RSEQ	CHAR(12)		NOT NULL,
	PID		VARCHAR2(45)	NOT NULL,
	BLN		CHAR(10)		NOT NULL,
	PIP		VARCHAR2(15)	CHECK(PIP LIKE '%.%.%.%'),
	GRADE	NUMBER(1)		CHECK(GRADE BETWEEN 1 AND 5),
	WDATE	DATE			DEFAULT SYSDATE,
	WID		VARCHAR2(45)	NOT NULL,
	MSG		VARCHAR2(4000)	NOT NULL,
	CONSTRAINT PK_REVIEW PRIMARY KEY (RSEQ),
	CONSTRAINT FK_REVIEW_GID 	FOREIGN KEY (PID)	REFERENCES PROTECTOR(PID),
	CONSTRAINT FK_REVIEW_BLN 	FOREIGN KEY (BLN)	REFERENCES CLINIC(BLN)
);

select * from book_list;

insert into review(rseq,pid,bln,pip,grade,wdate,wid,msg) values(r_seq ,'ptest01','0000000001','127.0.0.1',1
,sysdate,'din1','�̿� ���� �� �ֱⰡ 9�⵿�� �ѹ��� �ձ��� �ź��� ���� ���µ� �������� ���ϰ� ���鼭 �ձ��� �ź��ϰ� ��⸦ �����׾��.. ���� ���ο���');

insert into review(rseq,pid,bln,pip,grade,wdate,wid,msg) values(r_seq,'ptest02','0000000004','127.0.0.1',3
,sysdate,'din2','�ǻ�е��� ��� ģ���ϼż� �츮�������� �ݹ� �����ϴ��󱸿� ������ ���Ѿص� �ٸ� ���ð��� �ʹ� �����ɷȽ��ϴ�.');

insert into review(rseq,pid,bln,pip,grade,wdate,wid,msg) values(r_seq,'ptest03','0000000005','127.0.0.1',5
,sysdate,'din3','������ �����ؼ� ����̰� �����ްԵƴµ� ��ٸ��� ���� �������� ����� ������ ������ �� �������ִ� �ǻ�е��� �ʹ� �������');

insert into review(rseq,pid,bln,pip,grade,wdate,wid,msg) values(r_seq,'ptest04','0000000006','127.0.0.1',1
,sysdate,'din4','�ʹ� ��ο�... �ٸ� ���������� �ٳ�ôµ� ����ó�� ��Ѱ��� ó�����ϴ�.');

insert into review(rseq,pid,bln,pip,grade,wdate,wid,msg) values(r_seq,'ptest05','0000000009','127.0.0.1',2
,sysdate,'din5','�׳� �� �ü��� ���ο���� �ǻ�е��� ģ���Ͻñ� �߾��');

insert into review(rseq,pid,bln,pip,grade,wdate,wid,msg) values(r_seq,'ptest06','0000000008','127.0.0.1',4
,sysdate,'din6','�ǻ�е��� ����� ���Ƽ� �ϰ� �ñ�� �־���� �׸��� �ü��� ����մϴ�.');

insert into review(rseq,pid,bln,pip,grade,wdate,wid,msg) values(r_seq,'ptest07','0000000009','127.0.0.1',1
,sysdate,'din7','�ϴ� ���� �ü��� �������� �ʰ� �ǻ�е鵵 �ʹ� ��ģ���ؿ�.');

insert into review(rseq,pid,bln,pip,grade,wdate,wid,msg) values(r_seq,'ptest08','0000000010','127.0.0.1',3
,sysdate,'din8','�ٸ������� ���ݴ� ��ѰͰ��ƿ� �׷��� ġ��� �����ֽŰ� ���ƿ�');

insert into review(rseq,pid,bln,pip,grade,wdate,wid,msg) values(r_seq,'ptest09','0000000011','127.0.0.1',5
,sysdate,'din9','������ �������ذ� ������������ �츮�ֱⰡ ġ���� �� ��������');

insert into review(rseq,pid,bln,pip,grade,wdate,wid,msg) values(r_seq,'ptest10','0000000012','127.0.0.1',1
,sysdate,'din10','���ڸ��� �������ִ� �������� ���ļ� ������ �ƴ϶� �׳� �̰������Ⱑ ���α��� �ϴ°� �������� ���ο����');

commit;

------------------------------------------------------------ care ���� ������

------ bseq �κ� char(10)�� char(12)�� ����.  msg char(10)�� msg varchar2(3000) ����
DROP TABLE CARE CASCADE CONSTRAINTS;
CREATE TABLE CARE (
	BSEQ	CHAR(12)		NOT NULL,
	PID		VARCHAR2(45)	NOT NULL,
	BLN		CHAR(10)		NOT NULL,
	MSG		VARCHAR2(3000)		NOT NULL,
	WDATE	DATE			DEFAULT SYSDATE,
	WID		VARCHAR2(45)	NOT NULL,
	WIP		VARCHAR2(15)	CHECK(WIP LIKE '%.%.%.%'),
	CONSTRAINT PK_CARE PRIMARY KEY (BSEQ),
	CONSTRAINT FK_CARE_BSEQ 	FOREIGN KEY (BSEQ)	REFERENCES BOOK_LIST(BSEQ),
	CONSTRAINT FK_CARE_PID		FOREIGN KEY (PID)	REFERENCES PROTECTOR(PID)
);

-- ������ ã�������� b_seq�� �������� ���� ���� �־�� �ƽ��ϴ�. (���� ��������)
insert into care(BSEQ,PID,BLN,MSG,WDATE,WID,WIP) values('B_0000000010','ptest01','0000000001','���� , ��ó�� �������� �ʵ��� �ҵ��� �����ֽð� �ƹ������� ������ �������ּ���. ������ ����մϴ�. �����մϴ�.'
,sysdate,'din1','127.0.0.1');

insert into care(BSEQ,PID,BLN,MSG,WDATE,WID,WIP) values('B_0000000011','ptest02','0000000200','������� ��ȯ���� , �⺻���� ��ü�˻�� �亹�� ��缱 �Կ��� �ϸ鼭 ���������� ����ϰ� �޽��� �����ּ���.'
,sysdate,'din2','127.0.0.1');

insert into care(BSEQ,PID,BLN,MSG,WDATE,WID,WIP) values('B_0000000012','ptest03','0000000300','�汤�� , ��缱 �Կ��̳� ���� ������ �˻� �� �ൿ�а��� ��� �߫H�մϴ�.'
,sysdate,'din3','127.0.0.1');

insert into care(BSEQ,PID,BLN,MSG,WDATE,WID,WIP) values('B_0000000013','ptest04','0000000400','�����̻� , ��ó�� �ƹ����� �ҵ��� �׻����� ġ���� �Ľ����� �� ì���ּ���'
,sysdate,'din4','127.0.0.1');

insert into care(BSEQ,PID,BLN,MSG,WDATE,WID,WIP) values('B_0000000014','ptest05','0000000500','��� ô�� �Ű�ջ� , �����ʿ�.'
,sysdate,'din5','127.0.0.1');

insert into care(BSEQ,PID,BLN,MSG,WDATE,WID,WIP) values('B_0000000015','ptest06','0000000600','�Ǻ��̻� , �Ǻ� ������������, �Ǻο������� �߶��ּ���.'
,sysdate,'din6','127.0.0.1');

insert into care(BSEQ,PID,BLN,MSG,WDATE,WID,WIP) values('B_0000000016','ptest07','0000000700','����� ���� , ���� ������ ���� ���ǵ����� �����ֽð� ������ ������ ���ּ���.'
,sysdate,'din7','127.0.0.1');

insert into care(BSEQ,PID,BLN,MSG,WDATE,WID,WIP) values('B_0000000017','ptest08','0000000800','�߹ٴ� �������� �Ǻ����� , �������� ���� �߹ٴ��� �������ϰ� ������ �������ּ���'
,sysdate,'din8','127.0.0.1');

insert into care(BSEQ,PID,BLN,MSG,WDATE,WID,WIP) values('B_0000000018','ptest09','0000000900','���ݷ� ���� , ���� ���� �Ǵ� ����ô�� �ǽ��ؾ��մϴ�. �������� ���� ������ ������ �����ּ���.'
,sysdate,'din9','127.0.0.1');

insert into care(BSEQ,PID,BLN,MSG,WDATE,WID,WIP) values('B_0000000019','ptest10','0000001000','������ Ǯ���ڵ��� , �Ϳ� ������ �Ĳ��� Ȯ�� ��Ź�帳�ϴ�. ��ġ�� �ɰ��� �Ӻ��� �����մϴ�.'
,sysdate,'din10','127.0.0.1');
commit;

----- review , care 샘플데이터

select * from review;
select * from care;
------------------------------------------------------------ review 샘플 데이터

------ rseq 부분 char(11)을 char(12)로 수정.
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
,sysdate,'din1','미용 갔다 온 애기가 9년동안 한번도 손길을 거부한 적이 없는데 일주일을 심하게 떨면서 손길을 거부하고 경기를 일으켰어요.. 정말 별로에요');

insert into review(rseq,pid,bln,pip,grade,wdate,wid,msg) values(r_seq,'ptest02','0000000004','127.0.0.1',3
,sysdate,'din2','의사분들이 밝고 친절하셔서 우리강아지도 금방 적응하더라구요 낯가림 심한앤데 다만 대기시간이 너무 오래걸렸습니다.');

insert into review(rseq,pid,bln,pip,grade,wdate,wid,msg) values(r_seq,'ptest03','0000000005','127.0.0.1',5
,sysdate,'din3','저번에 예약해서 고양이가 수술받게됐는데 기다리는 동안 걱정하지 말라고 오히려 저보다 더 걱정해주는 의사분들이 너무 고마웠어요');

insert into review(rseq,pid,bln,pip,grade,wdate,wid,msg) values(r_seq,'ptest04','0000000006','127.0.0.1',1
,sysdate,'din4','너무 비싸요... 다른 동물병원도 다녀봤는데 여기처럼 비싼곳은 처음봅니다.');

insert into review(rseq,pid,bln,pip,grade,wdate,wid,msg) values(r_seq,'ptest05','0000000009','127.0.0.1',2
,sysdate,'din5','그냥 좀 시설이 별로였어요 의사분들이 친절하시긴 했어요');

insert into review(rseq,pid,bln,pip,grade,wdate,wid,msg) values(r_seq,'ptest06','0000000008','127.0.0.1',4
,sysdate,'din6','의사분들이 경력이 많아서 믿고 맡길수 있었어요 그리고 시설이 깔끔합니다.');

insert into review(rseq,pid,bln,pip,grade,wdate,wid,msg) values(r_seq,'ptest07','0000000009','127.0.0.1',1
,sysdate,'din7','일단 병원 시설도 쾌적하지 않고 의사분들도 너무 불친절해요.');

insert into review(rseq,pid,bln,pip,grade,wdate,wid,msg) values(r_seq,'ptest08','0000000010','127.0.0.1',3
,sysdate,'din8','다른데보다 조금더 비싼것같아요 그래도 치료는 잘해주신것 같아요');

insert into review(rseq,pid,bln,pip,grade,wdate,wid,msg) values(r_seq,'ptest09','0000000011','127.0.0.1',5
,sysdate,'din9','정섯껏 보살펴준게 느껴질정도로 우리애기가 치료후 더 밝아졌어요');

insert into review(rseq,pid,bln,pip,grade,wdate,wid,msg) values(r_seq,'ptest10','0000000012','127.0.0.1',1
,sysdate,'din10','들어가자마자 병원에있는 동물들이 아파서 쳐진게 아니라 그냥 이곳분위기가 별로구나 하는게 느껴져서 별로였어요');

commit;

------------------------------------------------------------ care 샘플 데이터

------ bseq 부분 char(10)을 char(12)로 수정.  msg char(10)을 msg varchar2(3000) 수정
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

-- 오류를 찾고있으나 b_seq가 오류여서 직접 값을 넣어보니 됐습니다. (추후 수정예정)
insert into care(BSEQ,PID,BLN,MSG,WDATE,WID,WIP) values('B_0000000010','ptest01','0000000001','눈병 , 상처가 오염되지 않도록 소독을 잘해주시고 아물때까지 외출을 자제해주세요. 쾌유를 기원합니다. 감사합니다.'
,sysdate,'din1','127.0.0.1');

insert into care(BSEQ,PID,BLN,MSG,WDATE,WID,WIP) values('B_0000000011','ptest02','0000000200','심장관련 질환여부 , 기본적인 신체검사와 흉복부 방사선 촬영을 하면서 수고했으니 편안하게 휴식을 시켜주세요.'
,sysdate,'din2','127.0.0.1');

insert into care(BSEQ,PID,BLN,MSG,WDATE,WID,WIP) values('B_0000000012','ptest03','0000000300','방광염 , 방사선 촬영이나 복부 초음파 검사 후 행동학관련 상담 추첞합니다.'
,sysdate,'din3','127.0.0.1');

insert into care(BSEQ,PID,BLN,MSG,WDATE,WID,WIP) values('B_0000000013','ptest04','0000000400','구강이상 , 상처가 아물도록 소독과 항생제로 치료후 식습관을 잘 챙겨주세요'
,sysdate,'din4','127.0.0.1');

insert into care(BSEQ,PID,BLN,MSG,WDATE,WID,WIP) values('B_0000000014','ptest05','0000000500','목뼈 척수 신경손상 , 수술필요.'
,sysdate,'din5','127.0.0.1');

insert into care(BSEQ,PID,BLN,MSG,WDATE,WID,WIP) values('B_0000000015','ptest06','0000000600','피부이상 , 피부 보습스프레이, 피부영양제를 발라주세요.'
,sysdate,'din6','127.0.0.1');

insert into care(BSEQ,PID,BLN,MSG,WDATE,WID,WIP) values('B_0000000016','ptest07','0000000700','출산후 염증 , 젖은 부위를 마른 수건등으로 말려주시고 차가운 찜질을 해주세요.'
,sysdate,'din7','127.0.0.1');

insert into care(BSEQ,PID,BLN,MSG,WDATE,WID,WIP) values('B_0000000017','ptest08','0000000800','발바닥 병변부위 피부착색 , 강아지가 절대 발바닥을 핥지못하게 세심히 관찰해주세요'
,sysdate,'din8','127.0.0.1');

insert into care(BSEQ,PID,BLN,MSG,WDATE,WID,WIP) values('B_0000000018','ptest09','0000000900','초콜렛 섭취 , 구토 유발 또는 위세척을 실시해야합니다. 집에서는 구토 유발후 안정을 취해주세요.'
,sysdate,'din9','127.0.0.1');

insert into care(BSEQ,PID,BLN,MSG,WDATE,WID,WIP) values('B_0000000019','ptest10','0000001000','외출후 풀에뒤덮힘 , 귀에 들어갔는지 꼼꼼히 확인 부탁드립니다. 방치시 심각한 귓병을 유발합니다.'
,sysdate,'din10','127.0.0.1');
commit;

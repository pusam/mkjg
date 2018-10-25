select * from book_list;

/*가데이터 */
insert into book_list values( b_seq, 'ptest01', '0000000001', 'D', '호박고구마', 10,  sysdate, sysdate, '12:12', 'N', 'N', '127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest02', '0000000004', 'C', '캣쟁이', 10,  sysdate, sysdate, '12:12', 'N','N', '127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest03', '0000000005', 'D', '소녀', 10,  sysdate, sysdate, '12:12', 'N', 'N','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest04', '0000000006', 'C', '루루', 10,  sysdate, sysdate, '12:12', 'N', 'N','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest05', '0000000008', 'D', '행성', 10,  sysdate, sysdate, '12:12', 'N', 'N','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest07', '0000000009', 'C', '츄츄', 10,  sysdate, sysdate, '15:12', 'N', 'N','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest08', '0000000009', 'C', '또또', 10,  sysdate, sysdate, '18:12', 'N', 'N','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest09', '0000000009', 'C', '띠띠', 10,  sysdate, sysdate, '20:12', 'N', 'N','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '뜨뜨', 10,  sysdate, sysdate, '22:12', 'N', 'N','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '뜨뜨', 10,  '2018-10-08', '2018-10-08', '22:12', 'N', 'Y', '127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '가각', 10,  '2018-10-09', '2018-10-09', '22:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '호호', 10,  '2018-10-10', '2018-10-10', '22:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '삐삐', 10,  '2018-10-11', '2018-10-11', '22:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '삐삐', 10,  '2018-10-01', '2018-10-01', '22:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '삐삐', 10,  '2018-09-21', '2018-09-21', '22:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '삐삐', 10,  '2018-10-15', '2018-10-15', '22:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '삐삐', 10,  '2018-09-25', '2018-09-25', '22:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '삐삐', 10,  '2018-10-06', '2018-10-06', '22:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '삐삐', 10,  '2018-10-13', '2018-10-13', '22:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '삐삐', 10,  '2018-10-14', '2018-10-14', '22:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '삐삐', 10,  '2018-10-15', '2018-10-15', '22:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '삐삐', 10,  '2018-10-15', '2018-10-15', '20:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
commit;

SELECT * FROM MNTR;
SELECT * FROM BOOK_LIST;
insert into MNTR values( m_seq, 'B_0000000003', 'empTest1', '127.0.0.1', sysdate, '안녕하세요 강아지는 건강하게 잘 지내고 있습니다.'  );
insert into MNTR values( m_seq, 'B_0000000004', 'empTest2', '127.0.0.1', sysdate, '안녕하세요 댕댕이는 건강하게 잘 지내고 있습니다'  );
insert into MNTR values( m_seq, 'B_0000000005', 'empTest3', '127.0.0.1', sysdate, '걱정마세요. 강아지는 건강하게 잘 지내고 있습니다'  );
insert into MNTR values( m_seq, 'B_0000000006', 'empTest4', '127.0.0.1', sysdate, '안녕하세요. 안심하세요 '  );
insert into MNTR values( m_seq, 'B_0000000008', 'empTest5', '127.0.0.1', sysdate, '고양이 잘 걸어다님'  );
insert into MNTR values( m_seq, 'B_0000000009', 'empTest6', '127.0.0.1', sysdate, '안녕하세요 고양이 잘 있어요'  );
insert into MNTR values( m_seq, 'B_0000000010', 'empTest7', '127.0.0.1', sysdate, '걱정마세요 잘 됬습니다'  );
insert into MNTR values( m_seq, 'B_0000000011', 'empTest8', '127.0.0.1', sysdate, '문제 없습니다.'  );

commit;

select QGC_SEQ from dual;
insert into QUESTION_GC values( QGC_SEQ, '문의 드립니다', '고양이 자리가 있을까요?', 'ptest01', '0000000001', sysdate, '4', '', 'N', sysdate, '', '127.0.0.1', '127.0.0.1' );
insert into QUESTION_GC values( QGC_SEQ, '안녕하세요 질문 드립니다', '고양이가 이런데 괜찮을까요?', 'ptest02', '0000000001', sysdate, '4', '네 괜찮습니다', 'Y', sysdate, 'ctest01', '127.0.0.1', '127.0.0.1' );
insert into QUESTION_GC values( QGC_SEQ, '궁금한게 있어요', '고양이 자리가 있을까요?', 'ptest03', '0000000001', sysdate, '4', '네 있습니다.', 'Y', sysdate, 'ctest01', '127.0.0.1', '127.0.0.1' );
insert into QUESTION_GC values( QGC_SEQ, '진료 문의 있어요', '고양이 자리가 있을까요?', 'ptest04', '0000000001', sysdate, '4', '', 'N', sysdate, '', '127.0.0.1', '127.0.0.1' );
insert into QUESTION_GC values( QGC_SEQ, '이 날 될까요', '고양이 자리가 있을까요?', 'ptest05', '0000000002', sysdate, '2', '', 'N', sysdate, '', '127.0.0.1', '127.0.0.1' );
insert into QUESTION_GC values( QGC_SEQ, '예약하고싶습니다', '고양이 자리가 있을까요?', 'ptest06', '0000000002', sysdate, '2', '', 'N', sysdate, '', '127.0.0.1', '127.0.0.1' );
insert into QUESTION_GC values( QGC_SEQ, '어떻게 해야하죠', '이런데 괜찮을까요?', 'ptest07', '0000000002', sysdate, '4', '이렇게 이렇게 하시면 됩니다.', 'Y', sysdate, 'ctest02', '127.0.0.1', '127.0.0.1' );
insert into QUESTION_GC values( QGC_SEQ, '문의 드립니다', '가격은 얼마에요??', 'ptest08', '0000000002', sysdate, '3', 'xxx원 입니다', 'Y', sysdate, 'ctest02', '127.0.0.1', '127.0.0.1' );

commit;


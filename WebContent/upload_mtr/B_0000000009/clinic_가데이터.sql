select * from book_list;

/*�������� */
insert into book_list values( b_seq, 'ptest01', '0000000001', 'D', 'ȣ�ڰ���', 10,  sysdate, sysdate, '12:12', 'N', 'N', '127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest02', '0000000004', 'C', 'Ĺ����', 10,  sysdate, sysdate, '12:12', 'N','N', '127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest03', '0000000005', 'D', '�ҳ�', 10,  sysdate, sysdate, '12:12', 'N', 'N','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest04', '0000000006', 'C', '���', 10,  sysdate, sysdate, '12:12', 'N', 'N','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest05', '0000000008', 'D', '�༺', 10,  sysdate, sysdate, '12:12', 'N', 'N','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest07', '0000000009', 'C', '����', 10,  sysdate, sysdate, '15:12', 'N', 'N','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest08', '0000000009', 'C', '�Ƕ�', 10,  sysdate, sysdate, '18:12', 'N', 'N','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest09', '0000000009', 'C', '���', 10,  sysdate, sysdate, '20:12', 'N', 'N','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '�߶�', 10,  sysdate, sysdate, '22:12', 'N', 'N','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '�߶�', 10,  '2018-10-08', '2018-10-08', '22:12', 'N', 'Y', '127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '����', 10,  '2018-10-09', '2018-10-09', '22:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', 'ȣȣ', 10,  '2018-10-10', '2018-10-10', '22:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '�߻�', 10,  '2018-10-11', '2018-10-11', '22:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '�߻�', 10,  '2018-10-01', '2018-10-01', '22:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '�߻�', 10,  '2018-09-21', '2018-09-21', '22:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '�߻�', 10,  '2018-10-15', '2018-10-15', '22:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '�߻�', 10,  '2018-09-25', '2018-09-25', '22:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '�߻�', 10,  '2018-10-06', '2018-10-06', '22:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '�߻�', 10,  '2018-10-13', '2018-10-13', '22:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '�߻�', 10,  '2018-10-14', '2018-10-14', '22:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '�߻�', 10,  '2018-10-15', '2018-10-15', '22:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
insert into book_list values( b_seq, 'ptest10', '0000000009', 'C', '�߻�', 10,  '2018-10-15', '2018-10-15', '20:12', 'N', 'Y','127.0.0.1', '127.0.0.1', 'kim', sysdate );
commit;

SELECT * FROM MNTR;
SELECT * FROM BOOK_LIST;
insert into MNTR values( m_seq, 'B_0000000003', 'empTest1', '127.0.0.1', sysdate, '�ȳ��ϼ��� �������� �ǰ��ϰ� �� ������ �ֽ��ϴ�.'  );
insert into MNTR values( m_seq, 'B_0000000004', 'empTest2', '127.0.0.1', sysdate, '�ȳ��ϼ��� ����̴� �ǰ��ϰ� �� ������ �ֽ��ϴ�'  );
insert into MNTR values( m_seq, 'B_0000000005', 'empTest3', '127.0.0.1', sysdate, '����������. �������� �ǰ��ϰ� �� ������ �ֽ��ϴ�'  );
insert into MNTR values( m_seq, 'B_0000000006', 'empTest4', '127.0.0.1', sysdate, '�ȳ��ϼ���. �Ƚ��ϼ��� '  );
insert into MNTR values( m_seq, 'B_0000000008', 'empTest5', '127.0.0.1', sysdate, '����� �� �ɾ�ٴ�'  );
insert into MNTR values( m_seq, 'B_0000000009', 'empTest6', '127.0.0.1', sysdate, '�ȳ��ϼ��� ����� �� �־��'  );
insert into MNTR values( m_seq, 'B_0000000010', 'empTest7', '127.0.0.1', sysdate, '���������� �� ����ϴ�'  );
insert into MNTR values( m_seq, 'B_0000000011', 'empTest8', '127.0.0.1', sysdate, '���� �����ϴ�.'  );

commit;

select QGC_SEQ from dual;
insert into QUESTION_GC values( QGC_SEQ, '���� �帳�ϴ�', '����� �ڸ��� �������?', 'ptest01', '0000000001', sysdate, '4', '', 'N', sysdate, '', '127.0.0.1', '127.0.0.1' );
insert into QUESTION_GC values( QGC_SEQ, '�ȳ��ϼ��� ���� �帳�ϴ�', '����̰� �̷��� ���������?', 'ptest02', '0000000001', sysdate, '4', '�� �������ϴ�', 'Y', sysdate, 'ctest01', '127.0.0.1', '127.0.0.1' );
insert into QUESTION_GC values( QGC_SEQ, '�ñ��Ѱ� �־��', '����� �ڸ��� �������?', 'ptest03', '0000000001', sysdate, '4', '�� �ֽ��ϴ�.', 'Y', sysdate, 'ctest01', '127.0.0.1', '127.0.0.1' );
insert into QUESTION_GC values( QGC_SEQ, '���� ���� �־��', '����� �ڸ��� �������?', 'ptest04', '0000000001', sysdate, '4', '', 'N', sysdate, '', '127.0.0.1', '127.0.0.1' );
insert into QUESTION_GC values( QGC_SEQ, '�� �� �ɱ��', '����� �ڸ��� �������?', 'ptest05', '0000000002', sysdate, '2', '', 'N', sysdate, '', '127.0.0.1', '127.0.0.1' );
insert into QUESTION_GC values( QGC_SEQ, '�����ϰ�ͽ��ϴ�', '����� �ڸ��� �������?', 'ptest06', '0000000002', sysdate, '2', '', 'N', sysdate, '', '127.0.0.1', '127.0.0.1' );
insert into QUESTION_GC values( QGC_SEQ, '��� �ؾ�����', '�̷��� ���������?', 'ptest07', '0000000002', sysdate, '4', '�̷��� �̷��� �Ͻø� �˴ϴ�.', 'Y', sysdate, 'ctest02', '127.0.0.1', '127.0.0.1' );
insert into QUESTION_GC values( QGC_SEQ, '���� �帳�ϴ�', '������ �󸶿���??', 'ptest08', '0000000002', sysdate, '3', 'xxx�� �Դϴ�', 'Y', sysdate, 'ctest02', '127.0.0.1', '127.0.0.1' );

commit;


create or replace function QGC_SEQ
return char
is

begin
--�������� ������� �ʰ� �������� �������� �����ϴ� ���� ��ȯ�ϴ� ��
	return concat('QGC_', lpad(QUESTION_QGC_SEQ.nextval,7,0));
end;
/

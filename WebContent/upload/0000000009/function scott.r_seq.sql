create or replace function R_SEQ
return char
is

begin
--�������� ������� �ʰ� �������� �������� �����ϴ� ���� ��ȯ�ϴ� ��
	return concat('R_', lpad(REVIEW_SEQ.nextval,10,0));
end;
/

create or replace function QGC_SEQ
return char
is

begin
--쿼리문을 사용하지 않고 고정길이 형식으로 증가하는 수를 반환하는 일
	return concat('QGC_', lpad(QUESTION_QGC_SEQ.nextval,7,0));
end;
/

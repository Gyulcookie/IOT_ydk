create table board(
	seq number primary key,
	title varchar2(50),
	content varchar2(400),
	writer varchar2(20),
	regdate DATE,
	hitcount number
)

create sequence board_seq;
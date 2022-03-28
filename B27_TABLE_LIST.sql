select * from MVC_BOARD;

commit;

insert into mvc_board(bId, bName, bTitle, bContent, bHit, bGroup, bStep, bIndent)
values(mvc_board_seq.nextval, 'abcd', 'is title', 'is content', 0, mvc_board_seq.currval, 0, 0);

commit;

create sequence mvc_board_seq;

commit;

create table mvc_board(
    bId number(4) primary key,
    bName VARCHAR2(20),
    bTitle VARCHAR2(100),
    bContent VARCHAR2(300),
    bDate DATE default sysdate,
    bHit number(4) DEFAULT 0,
    bGroup NUMBER(4),
    bStep NUMBER(4),
    bIndent NUMBER(4)
    );
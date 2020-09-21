#
```
.
+-- WebContent
|   +-- main    - sample.jsp
|               - main.jsp (Calendar)
|               - plan.jsp
|   +-- include - include.jsp (db 연결 관련)
|               - topmenu.jsp (메뉴와 로그)
|   +-- css     - layout.css
|   +-- images
|   +-- board
|   +-- member
|       +-- scoreWrite.jsp
|       +-- scoreWriteSave.jsp
|       +-- scoreList.jsp
|       +-- scoreModify.jsp (수정화면)
|       +-- scoreModifySave.jsp (수정처리)
|       +-- scoreDelete.jsp (삭제)
|   +-- js
|   +-- index.jsp -> 파일
```
```sql
create table plan(
    title varchar2(100) not null,
    content varchar2(4000),
    pdate date not null primary key 
);

insert into plan(title,content,pdate)
    values('1212','ccc','2020-09-17');

select title,content, pdate from plan;
```
## plan.jsp
- [ 날짜 ][ 제목 ][ 내용 ]
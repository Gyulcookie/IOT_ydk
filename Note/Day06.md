# Data import
1. 구우편번호 파일 다운
2. csv 파일로 변환 (UTF - 8)
3. 
```sql
create table post(
    a1 varchar2(6) not null,
    a2 varchar2(50),
    a3 varchar2(50),
    a4 varchar2(50),
    a5 varchar2(50),
    a6 varchar2(50),
    a7 varchar2(50),
    a8 varchar2(100)
);

select * from post where a8 like '%강남%';
select * from post where a3 like '%강남구%'and a8 like '%강남%' and a4 is not null;

select max(a1+1) as postnumber from post;

select p2.* from(
    select p1.* from(
        select a1,a2,a3,a4,a5,a6,a7,a8 
            from post 
                order by asc
    ) p1
)p2
    where rn >=1 and rn <= 10;


```

```
.
+-- WebContent
|   +-- main    - sample.jsp
|   +-- include - include.jsp (db 연결 관련)
|               - topmenu.jsp (메뉴와 로그)
|   +-- css     - layout.css
|   +-- post    - postWrite.jsp
|               - postWriteSave.jsp
|               - postList.jsp
|               - postModify.jsp
|               - postModifySave.jsp
|               - postDelete.jsp
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


# 객체지향
- 4대 요소
    - 추상화
    - 캡슐화
        - 변수 또는 메소드 앞에 붙는 키워드
        - public > protect > (생략) > private
    - 다형성
        1. overoading
            - 메소드간의 관계
            - 상속과 관계 없음
            - 같은 메소드 이름으로 매개변수의 종류 및 개수에 의해 구분되어 만드는 기법
        2. overiding
            - 메스드간의 관계
            - 상속과 관계 있음
            - 상속받은 메소드들을 재정의해서 사용하는 기법
    - 상속성
- 생성자 
    - 클래스 이름과 동일한 이름을 가진 메소드
    - 객체 생성 시 자동 실행 되는 메소드
- 예제
```
BoardVO.java

```        
# HTML
## Layout
- 프로젝트 구성

```tree
.
+-- WebContent
|   +-- main - sample.jsp
|   +-- include
|   +-- css
|   +-- images
|   +-- board
|   +-- member
|       +-- scoreWrite.jsp
|       +-- scoreWriteSave.jsp
|       +-- scoreList.jsp
|   +-- js
|   +-- index.jsp -> 파일
```
1. div
    - 상자를 의미 (영역)
    - CSS로 처리함

# CSS

# DB 연동
1. sql developer 설치
2. toad 설치

## ex) 학생점수 관리
- 목표
    1. 학생아이디
    2. 영어점수
    3. 국어점수
    4. 수학점수
- 테이블 생성 ( 저장 공간 )
    1. score
        ```sql
        create table score (
                userid varchar2(20),
                eng number,
                kor number,
                math number
        );

        insert into score values('test1',70,40,70);

        select * from score;

        ```

# JAVA
## 반복문
## 문자열
- length 
    - 문자열의 길이 반환

- relace, replaceAll
    - 문자열 치환하여 결과 반환

- trim
    - 앞뒤 공백 제거하여 반환

- substring
    - 문자열 자르기 (문자열을 설정 범위 만큼 잘라서 반환)
    - 인덱스 기준

- charAt
    - 문자열의 위치 번호 (인덱스) 값 가져오기

- indexOf, contains
    - 특정문자 검색 
    - indexof : 있는 경우 Index 반환
    - contains : 없는 경우 -1 반환

- startWith, endWidth
    - 시작단어 / 끝단어 확인하기

- split
    - 지정된 문자열을 이용하여 분리
    - 배열 변수로 반환

- toUpperCase, toLowerCase
    - 대/소문자 변환하여 반환

- equals
    - 문자열 비교하여 결과 반환

# spring-bnbproject
+ 평소 에어비앤비를 사랑하는 유저로서 꼭 한 번 따라서 만들어 보고 싶어 에어비앤비를 목표로 만든 개인 프로젝트 입니다.
# 프로젝트 계획
### 계획을 통해 구현할 목록
+ 회원가입, 로그인, 로그아웃, 회원 정보 수정, 회원 탈퇴 기능 구현
+ 호스트가 숙소 등록 시 여러 사진을 올릴 수 있는 다중 파일 업로드 기능 구현
+ 숙소 등록, 삭제 기능 구현
+ 숙소 등록 시 사진 미리 보기 기능 구현
+ 숙소 조회수
+ 게스트의 집에 대한 평가를 남길 수 있는 댓글 기능 구현
+ 댓글 등록 시 매끄러운 웹 작동을 위한 비동기식 처리 (Ajax)
+ 댓글 수정, 삭제 기능
+ 숙소 검색 기능
+ 숙소 목록 페이징 처리
# 프로젝트 환경설정
##### OS : Windows 10
##### Java v1.8.281.09
##### Spring Framework v4.11.0
##### pom.xml Spring 4.3.25 로 변경(2021-01 현 정부프레임워크 버전)
##### Tomcat v8.5
##### Maven
##### MsSQL 2019
##### mssql-jdbc
##### org.json
##### Mybatis v3.5.6
##### Mybatis-spring v2.0.6
##### commons-fileupload 1.4
##### Bootstrap v5.0
##### jQuery v3.5.1
# 구현한 기능 설명
1. 숙소 구경하기
  * 숙소 제목 or 내용에 따른 검색 기능
  * 숙소 별 조회수 제공
  * 제목, 작성자, 국가 정보 제공
  * 페이징 기능
![localhost_8080_web_getBoardList do](https://user-images.githubusercontent.com/86212069/128319662-b75e6970-e2e2-40c6-af03-47c788c29a2c.png)


2. 호스트가 되어 보세요
  * 호스트의 집 사진을 올릴 수 있는 다중 파일 업로드 기능
  * 파일 업로드 시 사진 미리보기 기능 제공
![localhost_8080_web_insertBoard2 jsp (1)](https://user-images.githubusercontent.com/86212069/128320447-bb6a93c6-dddd-464c-b9f4-ce2c88f0d5d7.png)


3. 로그인, 로그아웃, 회원가입, 회원정보수정, 회원 탈퇴
![화면 캡처 2021-08-05 173629](https://user-images.githubusercontent.com/86212069/128320475-251d768e-63d6-4133-961c-84afcf600e72.png)


# 외부 리소스, 출처 및 참고 사이트
1. 유투브 데어 프로그래밍 - HTML을 이용한 에어비앤비(airbnb) 만들기
2. bootstrap
3. airbnb - icon 및 이미지 가져 오기
4. Nomad Coders airbnb-clone : 로그인, 회원가입 화면 참고


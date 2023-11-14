![header](https://capsule-render.vercel.app/api?type=waving&color=auto&height=200&section=header&text=Entertainment%20Company&fontSize=60)

![ezgif com-video-to-gif](https://github.com/jongkwon5/Entertainment/assets/137694287/967fc049-04ba-41c9-b871-0c795b8911d4)

## 🎁 Entertainment Company🎁 
1) 프로젝트명 : Entertainment Company(가상의 Entertainment Company 웹사이트)
2) 프로젝트 목표 :  가상의 엔터테인먼트 회사 웹사이트 개발
3) 개발 인원 : 1명(개인 프로젝트)
4) 개발 구현 : 회사 소개, 아티스트 소개, 게시판, 로그인/회원가입 등 풀스택 개발
5) 개발 기간 : 2023. 06. 07. ~ 2023. 07. 10.

## <span style="color:lightblue; font-style: italic;">🗒️ 목차 🗒️
- [1. 개발 환경](#1-개발-환경)
  - [1-1 주요환경](#1-개발-환경)
  - [1-2 세부 기술 스택](#1-개발-환경)
  - [1-3 데이터베이스](#1-개발-환경)
  - [1-4 ETC](#1-4-etc)
- [2. 프로젝트 소개](#2-프로젝트-소개)
- [3. 실행 화면](#3-실행-화면)
  - [3-1 메인](#3-실행-화면)
  - [3-2 회사 소개](#3-실행-화면)
  - [3-3 아티스트 소개](#3-실행-화면)
  - [3-4 게시판](#3-실행-화면)
  - [3-5 로그인](#3-실행-화면)
  - [3-6 회원가입](#3-실행-화면)
- [4. DB 설계](#4-db-설계)
- [5. 트러블 슈팅 해결 사례](#5-트러블-슈팅-해결-사례)
  - [5-1 AJAX를 통한 댓글 수정 및 삭제 기능](#5-트러블-슈팅-해결-사례)
  - [5-2 게시판 검색 결과 목록 오류](#5-트러블-슈팅-해결-사례)
- [6. 마치며](#6-마치며)
  - [6-1 Spring MVC](#6-마치며)
  - [6-2 CRUD와 AJAX](#6-마치며)
  - [6-3 보완해야 할 점](#6-마치며)

##  1. 개발 환경
  + 주요환경
    + JAVA JDK 11.0.18
    + Eclipse 2019-12
    + Spring tool suite(STS) 3.9.13
    + Spring Framework 5.0.7
    + VS Code
  + 세부 기술 스택
    + Spring
    + Java
    + JavaScript
    + HTML/CSS
    + MyBatis 3.3.1
  + 데이터베이스
    + MySQL 8.0.21
  + ETC
    + Git/Github
    + Tomcat 8.5

## 2. 프로젝트 소개
+ 웹 페이지 UI/UX 디자인 구현
  + HTML/CSS, JavaScript, Bootstrap를 활용하여 메인 페이지, 회사 소개, 게시판, 아티스트 소개, 로그인/회원가입 페이지를 구현하였습니다.
  + Swiper API, Kakao 지도 API, fullPage.js를 사용하여 웹 페이지의 시각적 효과를 향상하였습니다.
+ 게시판 구현
  + MyBatis를 활용하여 게시판 CRUD 및 페이징 기능을 구현하였으며, MySQL DBMS를 통해 게시글 정보를 저장 및 관리하였습니다.
  + AJAX를 활용하여 댓글 수정 및 삭제를 비동기 방식으로 구현하였습니다.
+ 인증 및 사용자 관리
  + 로그인 및 회원가입은 세션을 기반으로 하여 구현하였습니다. 더불어, 아이디 중복 검사 등의 유효성 검사를 적용하였으며, 이를 AJAX를 통해 실시간으로 확인 가능하게 구현하였습니다.
+ 설계 아키텍처
  + Spring MVC Model2 아키텍처를 기반으로 설계되었으며, MVC 패턴을 준수하여 구현하였습니다.
+  SessionLocaleResolver를 활용한 다국어 처리 구현

## 3. 실행 화면
   <details>
    <summary>메인(Click)</summary>   

  **1. 메인 페이지 (1/3)**
![image](https://github.com/jongkwon5/TravelTogether/assets/137694287/024293e7-4750-41a9-a40e-dbdf2e9c98d2)

HTML/CSS/JavaScript(Swiper API)를 활용하여 메인 페이지의 UI/UX를 구현하였습니다.
     
  **2. 메인 페이지 (2/3)** 
![image](https://github.com/jongkwon5/TravelTogether/assets/137694287/97dd0d61-ed72-4bbf-bafb-198e0fe18e81)
     
  **3. 메인 페이지 (3/3)** 
  ![image](https://github.com/jongkwon5/TravelTogether/assets/137694287/a191463d-70c0-4495-a694-ad871129b0f5)
  SessionLocaleResolver를 활용해 메인 페이지의 다국어 처리를 구현하였습니다.
  </details>
  <br/>   

  <details>
    <summary>회사 소개(Click)</summary>   

**1. 회사 소개 (1/5)**
![image](https://github.com/jongkwon5/TravelTogether/assets/137694287/df531d25-72b0-4193-a5d5-1172aff6cbd3)
Fullpags.js를 활용해 스크롤하면 페이지 단위로 움직이는 페이지를 구현하였습니다. <br/>  
**2. 회사 소개 (2/5)**
![image](https://github.com/jongkwon5/TravelTogether/assets/137694287/8f5f2a0f-48d1-470a-b269-718789432919)
Swiper API를 활용해 앨범 소개 UI/UX를 구현하였습니다.<br/>  
**3. 회사 소개 (3/5)**
![image](https://github.com/jongkwon5/TravelTogether/assets/137694287/84e8df66-6444-4e4c-ae72-18da74d92485) 
JQUERY를 활용해 해당 앨범 클릭시 팝업창에 해당 가수의 사진이 나타나도록 하였습니다. <br/>  
**4. 회사 소개 (4/5)**
![image](https://github.com/jongkwon5/TravelTogether/assets/137694287/3e0b75cf-819a-4b2d-9f19-6d70d752138d) <br/>  
**5. 회사 소개 (5/5)**
![image](https://github.com/jongkwon5/TravelTogether/assets/137694287/3d99feab-7bdd-4913-a338-8bf2fc9e205f)
Kakao 지도 API를 활용하여 해당 주소의 좌표 및 마커를 표시하였습니다.

  </details>
  <br/>   
    <details>
    <summary>아티스트 소개(Click)</summary>   
  
**1. 아티스트 소개** 
![image](https://github.com/jongkwon5/TravelTogether/assets/137694287/db73e357-ffde-4726-8e96-a4b2ad718052)
Bootstrap을 활용하여 UI/UX를 구현하였습니다.
  </details>
  <br/>   
      <details>
    <summary>게시판(Click)</summary>   
  
**1. 게시판 (1/4)** 
![image](https://github.com/jongkwon5/TravelTogether/assets/137694287/7c51fbc3-8210-47e8-9b75-10e9855c3a7f)
MyBatis를 활용하여 게시판 페이징 처리 및 특정 게시글 검색 로직 등을 구현하였습니다.

**2. 게시판 (2/4)**<br/>
![image](https://github.com/jongkwon5/TravelTogether/assets/137694287/bf919cf1-7465-4f2c-a443-dc6e66418025)<br/>  특정 키워드를 검색하여 해당 내용에 맞는 게시물을 조회할 수 있습니다. 

**3. 게시판 (3/4)**<br/>
![image](https://github.com/jongkwon5/TravelTogether/assets/137694287/c4d82bf1-3f8d-4e53-857f-959f1fb02dcd)<br/>  게시글 삭제, 수정 및 AJAX를 통한 비동기식 댓글 입력, 삭제, 수정을 구현하였습니다.

**4. 게시판 (4/4)**<br/>
![image](https://github.com/jongkwon5/TravelTogether/assets/137694287/93a461cb-5e34-46c5-beb4-f8d837e1d660)
![image](https://github.com/jongkwon5/TravelTogether/assets/137694287/a3a5646d-7644-4679-8113-5e71cede06a2)
<br/>  게시글, 댓글 삭제 및 수정시 비밀번호 확인 로직을 구현하였습니다.
  </details>
  <br/>   
    <details>
    <summary>회원가입 및 로그인(Click)</summary>   
  
**1. 회원가입 (1/2)** </br>
![image](https://github.com/jongkwon5/TravelTogether/assets/137694287/38fcdb60-17f2-4141-b78c-7297c0924216)
</br>세션 기반의 로그인, 회원가입 기능 및 회원 가입 시 AJAX를 통한 아이디 중복, 비밀번호 확인에 대한 유효성 검사를 구현하였습니다.

**2. 회원가입 (2/2)**<br/>
![image](https://github.com/jongkwon5/TravelTogether/assets/137694287/690534d6-d047-4ee1-9155-3781dc2e04fb)<br/>
![image](https://github.com/jongkwon5/TravelTogether/assets/137694287/4d1e8062-e5ac-4f58-866b-9df308c83dfe)</br>
회원가입시 아이디가 중복일 경우 AJAX를 활용해 하단 안내 문구가 변경되도록 구현하였습니다.

**3. 로그인**<br/>
![image](https://github.com/jongkwon5/TravelTogether/assets/137694287/f56a13ac-4446-4340-af10-ab3fb100a6d8)<br/> 

  </details>
  <br/>   
  
## 4. DB 설계
  ![image](https://github.com/jongkwon5/TravelTogether/assets/137694287/ae557c08-4b78-4c76-8bf2-f6ed4a59d239)

## 5. 트러블 슈팅 해결 사례
  + AJAX를 통한 댓글 수정 및 삭제 기능
    + 문제 : 댓글 수정 및 삭제 기능에서 AJAX를 활용하여 비동기적으로 처리할 때, 정상적으로 동작하지 않는 문제가 발생했습니다.
    + 원인 : AJAX 요청이 서버로 전송될 때, 요청 URL 및 데이터 전송 방식에 오류가 있어 서버에서 요청을 제대로 처리하지 못했습니다.
    + 해결 : AJAX 요청 시 JSTL<c:url>태그를 사용해 올바른 URL을 지정하고, 데이터 전송 방식을 POST로 지정하여 서버로 요청이 제대로 전달되도록 수정하였습니다.
  + 게시판 검색 결과 목록 오류
    + 문제 : 게시판 검색 결과 목록을 가져오는 쿼리에서 검색 조건에 따라 올바른 결과가 출력되지 않는 문제가 발생했습니다.
    + 원인 : 검색 조건에 따라 WHERE 절이 동적으로 추가되는 부분에서 오류가 발생하여 올바르게 동작하지 않았습니다.
    + 해결 : MyBatis의 동적 쿼리 기능 중 <if>문을 활용하여 검색 조건에 따라 WHERE 절이 동적으로 추가되도록 수정하였습니다.
      
## 6. 마치며
  + Spring MVC
    + 초기 프로젝트 설계 당시, 기존의 학원에서 배운 MVC1 모델을 바탕으로 프로젝트를 진행하였습니다. 
하지만 시간이 거듭될수록 MVC1 모델의 한계와 더불어 유지 보수, 재사용성 등의 문제를 보완하고자 웹 개발 시 가장 널리 
사용되는 모델 또한 MVC2 모델이라는 것을 알게 되었고, 따라서 현재 MVC2 모델로 변환하여 진행하였습니다.
그 과정에서 MVC1 모델과 MVC2 모델의 차이와 구조를 명확히 구분할 수 있게 되었고, 이에 따른 초반 설계의 중요성 또한
체감할 수 있었습니다. 
  + CRUD와 AJAX
    + 이번 프로젝트를 통해 백엔드 개발자로서 기본이 되는 CRUD와 AJAX에 대해 공부할 수 있었습니다.
또한 MyBatis와  MySQL을 활용하여 DB에 연동함으로써 직접 Mapper에 SQL 쿼리를 작성하는 등, SQL 쿼리의 
기본적인 이해와 더불어 Jquery와 AJAX를 활용하여 게시판 댓글, 회원가입 부분 등을 구현함으로써 비동기 통신에 대한 
내용 또한 학습할 수 있었습니다. 
  + 보완해야 할 점
    + 생에 첫 개발 프로젝트였기에 많은 시행착오를 겪으며 초기 의도했던 목표와 방향성에 도달하지 못하였고, 그로 인해 
완성도 측면에서 아쉬움이 남는 프로젝트입니다. 또한 Front-End 부분에 비해 Back-End 부분이 다소 빈약하다는 점과
더불어 Spring Security를 활용하여 로그인, 회원가입 부분을 구현하지 못한 점 또한 개선해야 할 부분이라고 생각합니다.







※ 본 작업물은 개인 포트폴리오로 제작되어 어떠한 상업적 활동을 수행하지 않음을 명시합니다.

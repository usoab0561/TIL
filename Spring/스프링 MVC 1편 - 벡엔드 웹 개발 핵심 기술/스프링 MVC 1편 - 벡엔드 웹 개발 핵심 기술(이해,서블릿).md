 # 웹어플리케이션이해
거의 모든 데이터를 HTTP 프로토콜 맞게 전송한다.  

<br></br>

> 웹서버 : HTTP기반으로 !정적! 리소스 제공한다. 정적파일제공한다. (HTML, CSS,JS, 이미지, 영상) 예를들어 (NGINX, APACHE)이런게.  
> WAS : 프로그램 코드 실행해서 애플리캐이션 로직수행한다. SERVLET, JSP, HTTP API(JSON),  SPRING MVC .. EX(Tomcat, Jetty, Undertow)

<br></br>

왜 WAS만 다 쓰지? -> WAS만 다 하면 과부화 가능해서, WAS는 중요한 어플리케이션하고, 웹서버는 간단한걸로 씀.  
이렇게해서 리소스 효율적으로 관리 ㄱㄴ  

<br></br>

![image](https://user-images.githubusercontent.com/84604563/163738464-485b1919-73ee-4bd3-b8c6-c89d605eede1.png)

<br></br>

## 서블릿
urlPatterns(/hello)의 URL이 호출되면 서블릿 코드가 실행된다.    
요청정보 = HttpServletRequest  
응답정보 = HttpServletResponse   

서블릿은 싱글톤패턴(하나를 공유해서사용)    
보통 최초 로딩 시점에 미리 만들어놓고 재활용   
공유변수 사용할때 주의해야함..... 멤버변수쓸때 조심해야함. 서블릿 컨테이너 종료시 함께 종료.   
!!!동시 요청을 위한 멀티 스레드 처리 지원!!!!   

<br></br>

## 동시요청
쓰레드가 없으면 자바 실행불가능. 동시처리 필요하면 쓰레드 추가로 필요함.  
WAS안에 Servlet 객체 호출할때, Thread사용해서 request가 하나 처리중일때, 다른 Thread또 생성해서 Servlet 연결해준다. 

## 쓰레드 풀
맛집을예로들면 기다리다가 10명이상 안 받는 것 처럼, Thread도 최대치로 정하고 관리한다.   
(톰캣은 최대 200개 기본으로 default 설정됨.)    
성능튜닝하는데 적절한 수치로 쓰레드 풀 정하는 것이 중요점이다. -> 성능테스트 해본다.    
!!! **WAS는 멀티 스레드 지원**함 (개발자는 관련 싱글스레드 처럼 코드써도 된다. 그래도 **싱글톤(서블릿, 스프링빈)은 주의)**!!!

<br></br>

## HTML, HTTP API, CSR, SSR

**백앤드 개발자가 고민해야할 점**
> 정적 리소스 : 고정된 HTML, CSS, 이미지, 영상 제공  
> HTML 페이지 : 동적으로 필요한 HTML 파일 생성, WAS가 전달(JSP나 타임리프)  
> HTTP API : JSON {"주문번호": 100, "금액": 5000} 같은 데이터를 전달함.  
 
 <br></br>
 
 **SSR, CSR**
 > **SSR - Server Side Rendering** : 서버에서 최종 HTML을 생성해서 클라이언트에게 전달. (JSP나 타임리프). 백앤드 개발자. 화면 정적일때 사용     
 > CSR - Client side Rendering : HTML결과를 자바스크립트 이용해서 웹 브라우저에서 동적으로 생성해서 적용.(구글지도같이.. react, vuejs) 프론트 개발자       
 
 <br></br>
 
## JAVA WEB history
Servlet : JAVA안 HTML      
JSP : HTML안 JAVA   
Servlet + JSP -> MVC패턴 사용  
MVC framework 자동화로 바꿔줌
Annotation기반 MVC 등장. Spring MVC 등장   
스프링부트 등장. 과거에는 서버에 WAS직접 설치, 소스는 War 파일로 만들어서 WAS에 배포. -> 스프링부트는 Jar에 WAS서버 포함. 빌드배포 단순화.  

**최신기술**
> Web Servlet - Spring MVC  
> Web Reactive - Spring WebFlux  

**자바 뷰 템플릿**
JSP : 속도 느림 -> 프리마커, 벨로시티 -> 타임리프(Thymeleaf) : HTML모양 유지하면서 뷰 탬플릿 적용. 스프링MVC와 강력한 기능 통합

<br></br>

# Servlet 서블릿

![image](https://user-images.githubusercontent.com/84604563/163758660-30c7d070-bc19-4fea-bb2f-5e9e33f8c532.png)

<br></br>

## HTTP Request
![image](https://user-images.githubusercontent.com/84604563/163758927-8e201309-e505-47af-bd9a-260ed415a338.png)

<br></br>

## HTTP Request : Get 방식
![image](https://user-images.githubusercontent.com/84604563/163759021-aedd5292-1bf6-4383-a87c-031d069a4e47.png)


<br></br>

![image](https://user-images.githubusercontent.com/84604563/163759490-fa0c21d7-7fcb-4956-a79e-957c01b9aaeb.png)

<br></br>

## HTTP Request : POST HTML FORM 방식  
![image](https://user-images.githubusercontent.com/84604563/163777508-ec22acfb-5715-4833-ab2f-5588d59cd45e.png)  
![image](https://user-images.githubusercontent.com/84604563/163781338-2c9a78c4-b21a-486a-b929-13b495daa6f0.png)  
![image](https://user-images.githubusercontent.com/84604563/163783462-e6b8b5c5-13f6-4d1e-ac49-04c8486edf01.png)  
![image](https://user-images.githubusercontent.com/84604563/163783489-8e0e77ac-9b2b-4c02-aa4a-62fa49087785.png)  


<br></br>

## HTTP Request : API Message Body - 단순 텍스트 방식
HTTP API Message Body : HTTP API에서 주로 사용, JSON, XML, TEXT 보낸다. POST, PUT, PATCH 방식  
![image](https://user-images.githubusercontent.com/84604563/163779130-a10127dc-611d-4067-a4a4-2d59207060a2.png)  
![image](https://user-images.githubusercontent.com/84604563/163779158-c2588ee8-adbd-4aeb-96b2-0aaaa971c236.png)

 <br></br>
## HTTP Request : API Message Body - JSON 방식
![image](https://user-images.githubusercontent.com/84604563/163781129-8d33b027-dec9-4238-90bb-34bf094951ee.png)    
![image](https://user-images.githubusercontent.com/84604563/163781621-7cd7ec65-c481-4ea0-9567-47e05a35d4e7.png)  

<br></br>

## 응답 Response는 단순택스트, HTML, JSON 총 3가지 방식이있다.
<br></br>

## HTTPServletResponse - 기본사용법
![image](https://user-images.githubusercontent.com/84604563/163781769-70e6e5fd-950c-4b35-9a74-9c36c58086b2.png)
![image](https://user-images.githubusercontent.com/84604563/163782936-26adc762-0545-40cf-afb4-428f4c31f8b1.png)  
![image](https://user-images.githubusercontent.com/84604563/163783134-1f58346b-9b68-4498-aaa3-2fe5e1606194.png)  
![image](https://user-images.githubusercontent.com/84604563/163783291-a35f7552-5d6c-4fb6-9bd9-004e415fcda4.png)  
![image](https://user-images.githubusercontent.com/84604563/163783743-8bc56636-add0-4ea3-9785-5a5cce0d9e6b.png)   
![image](https://user-images.githubusercontent.com/84604563/163783798-6f8532d1-c8b8-490d-b714-8622c1e71f49.png)  
<br></br>

## HTTP Response Data - 단순 텍스트, HTML

 ![image](https://user-images.githubusercontent.com/84604563/163783897-a6a5fe30-f541-474b-afbc-5bab20b75e8e.png)   
![image](https://user-images.githubusercontent.com/84604563/163784035-65d78fdf-4820-4789-82b9-e9cadffd1e5c.png) 

<br></br>

## HTTP Response Data - API JSON
 ![image](https://user-images.githubusercontent.com/84604563/163784859-6a759cce-62ef-4180-8350-1a2e722936a7.png)


<br></br>

## Summary
requset는 쿼리파라미터, HTML Form(POST), HTTP Message Body(Content Type있는, html form이랑 똑같이 content가 있는것)가 있다.  
respose는 Text, html, api json 가능 header은 여러가지 기능 가능 
<br></br>

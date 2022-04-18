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

## HTML, HTTP API, CSR, SSR
> 정적 리소스 : 고정된 HTML, CSS, 이미지, 영상 제공  
> HTML 페이지 : 동적으로 필요한 HTML 파일 생성, WAS가 전달(JSP나 타임리프)  
> HTTP API : JSON {"주문번호": 100, "금액": 5000} 같은 데이터를 전달함.  
 
 <br></br>
 
 > **SSR - Server Side Rendering** : 서버에서 최종 HTML을 생성해서 클라이언트에게 전달. (JSP나 타임리프). 백앤드 개발자. 화면 정적일때 사용     
 > CSR - Client side Rendering : HTML결과를 자바스크립트 이용해서 웹 브라우저에서 동적으로 생성해서 적용.(구글지도같이.. react, vuejs) 프론트 개발자       
 
 

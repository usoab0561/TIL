# 웹어플리케이션이해
거의 모든 데이터를 HTTP 프로토콜 맞게 전송한다.  

## 웹서버 : HTTP기반으로 !정적! 리소스 제공한다. 정적파일제공한다. (HTML, CSS,JS, 이미지, 영상) 예를들어 (NGINX, APACHE)이런게.  웹ㅅ
## WAS : 프로그램 코드 실행해서 애플리캐이션 로직수행한다. HTTP API(JSON), SERVLET, JSP, SPRING MVC .. EX(Tomcat, Jetty, Undertow)

왜 WAS만 다 쓰지? -> WAS만 다 하면 과부화 가능해서, WAS는 중요한 어플리케이션하고, 웹서버는 간단한걸로 씀. 이렇게해서 리소스 효율적으로 관리 ㄱㄴ

## 서블릿
urlPatterns(/hello)의 URL이 호출되면 서블릿 코드가 실행된다.    
요청정보 = HttpServletRequest  
응답정보 = HttpServletResponse   

서블릿은 싱글톤패턴(하나를 공유해서사용)    
보통 최초 로딩 시점에 미리 만들어놓고 재활용   
공유변수 사용할때 주의해야함..... 멤버변수쓸때 조심해야함. 서블릿 컨테이너 종료시 함께 종료.   
!!!동시 요청을 위한 멀티 스레드 처리 지원!!!!   


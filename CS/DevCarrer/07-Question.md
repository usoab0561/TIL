# cs공부 7일차

## 웹서버에 대해 설명해주세요
![image](https://user-images.githubusercontent.com/84604563/148043605-cc21f323-c268-480f-bb75-5470a07a1cfd.png)

<br>

## Was(웹 어플리케이션 서버)에 대해 설명해주세요
![image](https://user-images.githubusercontent.com/84604563/148044183-3468a3a4-403d-4d2a-96a8-371353a610a4.png)
> 동적페이지 생성위함. DB연동 등 ex)Apache Tomcat  

<br>

## Nginx에 대해 설명해주세요 & Nginx와 Apache의 차이점에 대해 설명해주세요
> Apache는 request당 하나 당 쓰레드하나 -> 안정성 but 성능 저하  
> Nginx 비동기(한번에하나)로 request를 처리 -> 속도 but 확장성x(모듈개발어려움)  

<br>

## 프록시 서버란 무엇인가요? & 포워드 프록시와 리버스 프록시에 대해 설명해주세요
> Proxy server :   
> 다른 네트워크 서비스에 간접적으로 접속할 수 있게해주는것. 

<br> 

> 포워드 프록시 서버 : 포워드프록시서버가 요청을 받고 인터넷에 연결하여 결과를 클라이언트에 전달 (forward) 해준다  
> ![image](https://user-images.githubusercontent.com/84604563/148227774-242eb816-e0c8-4c23-819f-436880a2973a.png)

> 리버스 프록시 서버 : 클라이언트가 인터넷에 데이터를 요청하면 리버스 프록시가 이 요청을 받아 내부 서버에서 데이터를 받은 후 클라이언트에 전달한다.
> ![image](https://user-images.githubusercontent.com/84604563/148227801-be30a292-9ede-4f58-98a5-0a5d2f7c63df.png)

## OSI 7계층이 존재하는 목적에 대해 말해주세요
> 유지 보수. 문제가 생긴다면 다른 계층은 건들지 않고 한 계층의 문제만을 해결할 수 있다.  
 
<br>

## API란 무엇인가요? & REST API란 무엇인가요?
> API(Application Programming Interface) : 어플리케이션 개발하는데 필요한 인터페이스 제공하는것. 내용몰라도 backend 사용가능하게.    
> REST 아키텍쳐 만족하는 API : 리소스(http url)를 어떻게 할건지(http method) 정하는것. 뭐 언더스코어 쓰지않고.. 동사 지양하고..   
> 뭐가 뭔지 알기 쉬워서 함  

<br>

## 세션과 쿠키의 차이점에 대해 말해주세요(3가지)
http는 비연결성(Connectionless)과 비상태성(Stateless)이라는 특징 그래서 쿠키나 세션사용(-> 사이트사용할때마다로그인안하게해줌)  
> 쿠키는 서버자원사용x(내부에서저장), 세션은 서버자원사용  
> 쿠키가 빠름, 세션이 느림(서버랑왔다갔다해야하니까)  
> 쿠키보안취약, 세션이 좀 나아(내부에서 중요정보도니까 위험)   

## TCP와 TCP/IP에 대해 각각 설명해주세요 + udp
> TCP/IP 4계층에서 transport layer에 있는게 TCP. (어떻게 정보를 주고받을것인가?)  
![image](https://user-images.githubusercontent.com/84604563/148231745-1b7e4b81-44ac-486a-ac38-77305e08cef3.png)

<img width="751" alt="Screen Shot 2022-01-05 at 11 17 46 PM" src="https://user-images.githubusercontent.com/84604563/148232436-c334a590-8fbc-43b5-8d73-95706b676f7f.png">


## 그렇다면 인터넷브라우저(크롬 등)의 주소창에 www.naver.com을 입력했을때 동작과정을 설명해주세요
![image](https://user-images.githubusercontent.com/84604563/148233180-84a48060-cdc2-43d6-a510-fdcb997627c6.png)

1. domain name을 입력하면 DNS를 통해서 그에 맞는 IP주소 알아냄  
2. HTTP를 통해서 그 IP주소와 입력한 url같이 TCP프로토콜 사용, 인터넷으로 서버로 보냄   
3. HTTP 요청 해석해서 정보가져와서, 다시 HTTP 응답. TCP프로토콜사용, 인터넷으로 클라이언트로 보냄  
4. HTTP 요청 해석해서 클라이언트에 보여줌   


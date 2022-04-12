# Spring 구조
![image](https://user-images.githubusercontent.com/84604563/162920564-3b4b34e1-2314-42bb-a6d6-0a80a6ce1f80.png)

Web Browser [xplatform](xfdl), 여기서 url로 controller에게 요청 ->   
Controller (web), url요청받은걸로 service 실행  ->  
Service  (service) service에서 mapping ->   
DAO (dao), mapping해줘서 sql.xml에서 쿼리 실행(resources-> sqlmap)쪽에 있을 것 같음.     


참조 : https://dalpaeng00.tistory.com/83


SVN : github같은 형상관리툴   
JSP : JAVA내부에 html코드 들어가는것 <-> Servlet (html안에 JAVA들어가는것)  

<img width="535" alt="image" src="https://user-images.githubusercontent.com/84604563/162974086-c987f539-656a-4b57-aa70-d7a44f99ea10.png">

<br></br>

ORM : 객체와 관계형 데이터베이스의 데이터를 자동으로 매핑(연결)해주는 것   
<img width="955" alt="image" src="https://user-images.githubusercontent.com/84604563/162974646-afce1b53-060c-4fec-b4dc-b3be25d06fb7.png">  

JPA(JAVA PERSISTENCE API) : 자바 진영에서 만든 ORM 기술 표준 (CRUD SQL을 작성할 필요가 없다.)  

https://mangkyu.tistory.com/20   
https://ultrakain.gitbooks.io/jpa/content/chapter1/chapter1.1.html   

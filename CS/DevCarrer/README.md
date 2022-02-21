# 몇개만 추려서 정리.

# 자료구조 & 알고리즘

## 구구단, 이진탐색, 퀵소트 시간복잡도
> 구구단 : O(N^2) [nested loop]  
> 이진탐색 : best : O(NlogN) worst : O(N^2) [skweed tree, root기준 항상크거나 작거나]  
> 퀵소트 : best : O(NlogN) worst : O(N^2) [first pivot을 선택할경우, medium of three해주면 해소됨]   

## DP와 재귀함수 중 어떤것을 더 선호? 시간복잡도 낮은것은
> Activation record(스텍,복귀주소)때문에 DP가 더 time complexity 좋지만, 아무래도 recursion 이용하면 종료조건만 잘 설정하면 쉬워서 일단 구현은 recursion, 이후 dynamic programming 생각해봄  

## 우선순위 큐 동작과정. array, list
> 정렬이 됐나 안됐나에 따라 O(N)이거나 O(1)이다. 배열일때, 리스트일때 다른데 생각을 해보면 됨. 배열이고 정렬안됐으면 뒤에 삽입만하면되는데 삭제는 오래걸림.. 이런식으로  

## 위상정렬, 이분탐색, 다익스트라
![image](https://user-images.githubusercontent.com/84604563/148398830-e98578d8-90fe-47d1-b6b7-f87347537e59.png)

![image](https://user-images.githubusercontent.com/84604563/148398789-7b949252-45e3-453d-abc6-5af7bdb3f760.png)

![image](https://user-images.githubusercontent.com/84604563/148398878-2de3e386-2b71-4548-9baa-56b6bde2af8a.png)

## Array, LinkedList
> Array는 index, 미리 크기 정해둬야하고, 중간에 삽입 삭제 timecomplexity 김  
> LinkedList는 양방향 list, size상관없음, 중간에 넣기 쉬움  

## 스택 vs큐 차이
> LIFO, FIFO  

## 정렬종류 , 퀵소트 설명 ( 추가적인 손코딩 ) 
selection sort, insertion sort, bubble sort, shell sort(insertion + gap O(n root n)), merge sort(divide conquer), quick sort, heap sort, radix sort

# 네트워크 
## HTTP/ HTTPS(TLS(SSL))/ HTTP RESTFUL / HTTP 응답코드 외우기
Hyper Text Transfer Protocol  
SSL -> TSL 로 발전. Diffie Hellman(mod, secret key) -> RSA (Public Key), 443 port.        
HTTP Method (get post put patch delete).. 에서 rest 규칙따라 설계.  
401(아이디없음[허가x]), 403(로그인됐지만 안됨[금지])   

## HTTP 메소드의 get과 post의 차이
> Get : GET은 서버로부터 정보를 조회하기 위해 설계된 메소드  
>  ```www.example-url.com/resources?name1=value1&name2=value2 ?표 붙히고 정보다보임```  
> <br>
> Post : 리소스를 생성/변경하기 위해 설계,  
> ```HTTP 메세지의 Body에 담아서 전송. HTTP 메세지의 Body는 길이의 제한없이 데이터를 전송. GET보단안전.```  

## 웹브라우저에 google.com 치면 일어나는 과정
![image](https://user-images.githubusercontent.com/84604563/148233180-84a48060-cdc2-43d6-a510-fdcb997627c6.png)

1. domain name을 입력하면 DNS를 통해서 그에 맞는 IP주소 알아냄  
2. HTTP를 통해서 그 IP주소와 입력한 url같이 TCP프로토콜 사용, 인터넷으로 서버로 보냄   
3. HTTP 요청 해석해서 정보가져와서, 다시 HTTP 응답. TCP프로토콜사용, 인터넷으로 클라이언트로 보냄  
4. HTTP 요청 해석해서 클라이언트에 보여줌   


## TCP vs UDP (TCP, UDP 특성)
> TCP/IP 4계층에서 transport layer에 있는게 TCP. (어떻게 정보를 주고받을것인가?)  
![image](https://user-images.githubusercontent.com/84604563/148231745-1b7e4b81-44ac-486a-ac38-77305e08cef3.png)

<img width="751" alt="Screen Shot 2022-01-05 at 11 17 46 PM" src="https://user-images.githubusercontent.com/84604563/148232436-c334a590-8fbc-43b5-8d73-95706b676f7f.png">

## TCP의 3way handshaking과 4way handshaking 과정을 그려주세요

TCP : 전송 계층에서 사용하는 프로토콜. 신뢰성을 보장하는 연결형 서비스.  
![image](https://user-images.githubusercontent.com/84604563/148037557-0f96961b-b760-4c34-96a3-6e530e982fe6.png)

> 연결을 설정(Connection Establish) 하는 과정  
> 3way handshaking : 연결하는 과정. 1. A->B : SYN보내기 2. B->A : SYN + ACK(연결해줘) 3. A->B : ACK (데이터도같이ㄱㄴ)  
> 4way handshaking : 끊는 과정 : 1. A->B : FIN보내기 2. B->A : ACK(이거까지보낼게, Time wait) 3. B->A : FIN (끝. 다보냈다) 4. A->B ACK(알겠다.)

## OSI 계층 말하기(각각 알려진 유명 프로토콜)
![image](https://user-images.githubusercontent.com/84604563/148037304-2c89110d-e337-4527-9e6e-d21729433b93.png)

## 프록시 서버란 무엇인가요? 포워드 프록시와 리버스 프록시에 대해 설명해주세요  
> Proxy server :   
> 다른 네트워크 서비스에 간접적으로 접속할 수 있게해주는것. 

<br> 

> 포워드 프록시 서버 : 포워드프록시서버가 요청을 받고 인터넷에 연결하여 결과를 클라이언트에 전달 (forward) 해준다  
> ![image](https://user-images.githubusercontent.com/84604563/148227774-242eb816-e0c8-4c23-819f-436880a2973a.png)

> 리버스 프록시 서버 : 클라이언트가 인터넷에 데이터를 요청하면 리버스 프록시가 이 요청을 받아 내부 서버에서 데이터를 받은 후 클라이언트에 전달한다.
> ![image](https://user-images.githubusercontent.com/84604563/148227801-be30a292-9ede-4f58-98a5-0a5d2f7c63df.png)

## 동기(Synchronous)와 비동기(Asynchronous) 호출에 대해 설명해주세요
> 동기 : 요청과 결과 동시에(요청을 보낸 후 응답(=결과)를 받아야지만 다음 동작이 이루어지는)    
> 비동기 : 요청과 결과 동시 X(요청을 보낸  후 응답(=결과)와는 상관없이 다음방식이 동작)    
동기방식은 매우 간단 but 대기해야 하는 단점   
비동기방식은 복잡하지만 but 다른 작업을 할 수 있음, 자원효율업! 

# DB

## 데이터베이스 무결성 3가지에 대해 설명해주세요
> 기밀성 : 데이터의 보호   
> 무결성 : 데이터 위변조 및 파괴 방지  
> 가용성 : 데이터에 대한 원활한 접근  
> 기무가

## DB 트랙잭션과 트랙잭션 특성 4가지
> db연산 단위, 모아둔것   
> 원자성 Atomicity : 실행되다가 *중단*되지 않는 것을 보장  
> 일관성 Consistency : *일관성* 있는 데이터베이스 상태로 유지  
> 고립성 Isolation : 다른 작업이 *끼어들지 못하도록* 보장  
> 지속성 Durability : *영원히* 반영됨  

## 트랜잭션 고립성 수준(트랜잭션 격리수준)
> 동시에 실행하는 트랜잭션들을 순차적인 실행 상태로 만드는 것은 성능에 좋지 않다.  
![image](https://user-images.githubusercontent.com/84604563/147943481-020bf03f-953e-4958-8843-6015c3362d5d.png)

## NoSQL, RDBMS

![image](https://user-images.githubusercontent.com/84604563/147942693-f17692de-0353-4578-a92e-bcb75a2ba84b.png)

(스키마 : entity, relation, attribute 있는거)   
RDBMS : Oracle, Sqlite  
Nosql : Mongodb .. etc  

![image](https://user-images.githubusercontent.com/84604563/147942855-e6ddcfb6-08c9-4186-9ad2-95fdf6dc4b03.png)

## DB 인덱스 , 인덱스 거는이유, 인덱스에 왜 해쉬 보다 B Tree를 쓰는지?
> index는 자주 나오지 않게 unique한걸로, 빨리참조하려고    
> 성별은 자주나와서 성능 저하, 주민등록번호로 해야지   
> 비교연산자  

## DB 정규화, 비정규화(역정규화)
> 중복최소화 -> 무결성(정확성) 유지, DB저장 용량 줄어듬  
> 읽는 속도 최대


## DB인젝션 공격에 대해 설명해주세요. 그리고 대처법도 알려주세요
> 임의의 SQL 문을 주입하고 데이터베이스가 비정상적인 동작을 하도록 조작
> 자주 사용되는 SQL을 데이터베이스가 이해하기 쉬운 형태로 해석해 놓은 것을 Prepared statement. (권한 있으면 이어나감)   

## 트랜잭션과 세션에 대해 설명해주세요
트랜잭션 : sql문 덩어리, 최소 수행단위 
세션 : 시간(접속후 종료까지)

# 언어

## JAVA면 JVM, 솔리드, 프로그램 실행의 일련과정 
![image](https://user-images.githubusercontent.com/84604563/147926385-283f93a0-a30b-4962-b730-22455eff7f78.png)

> JVM은 운영체제에 종속적  

## 가비지 콜렉터가 동작하는 과정을 설명해주세요
> Stop The World : GC 제외 모든 쓰레드 멈춘다.  
> Mark and Sweep : 1. 사용되고 있는 메모리를 *식별*하는데, 이러한 과정을 Mark라고 한다. 2. Mark가 되지 않은 객체들을 메모리에서 *제거*하는데, 이러한 과정을 Sweep라고 한다.

## 자바에서 Runnable인터페이스와 Thread 클래스의 차이점을 설명해주세요 & 이렇게 두가지 방법이 지원되는 이유를 설명해주세요
> Thread 클래스를 상속받으면 다른 클래스를 상속받을 수 없기 때문에 , Runnable 인터페이스를 구현하는 것이 일반적이다.  
> Thread는 간단, Runnable은 확장성이 좋음 
## 가비지 콜렉터의 동작과정을 설명해주세요
> Stop The World : GC 제외 모든 쓰레드 멈춘다.  
> Mark and Sweep : 사용되고 있는 메모리를 식별하는데, 이러한 과정을 Mark라고 한다. Mark가 되지 않은 객체들을 메모리에서 제거하는데, 이러한 과정을 Sweep라고 한다.  

<hr>

## 객체지향의 장점과 단점을 설명해주세요
> 장점 : 1. 재사용성 2. 유지보수 3. 자연적인 모델링  
> 단점 : 1. 실행속도 2. 설계부터 해야해서 개발속도 느림 3. 상속때문에 복잡해질 수도   

<hr>

## 객체지향의 특징을 설명해주세요(3가지 물어볼경우와 5가지 물어볼경우에 답이 다름)
> 캡슐화 : 클래스로 변수나 함수 묶고, 정보은닉 가능.(접근제한자(protected..private..))     
> 다형성 : 부모 클래스 타입의 참조변수로 자손 클래스의 인스턴스를 참조할 수 있도록 해준다.   
> 상속 : 자식 클래스에서 부모 클래스로부터 부모의 모든 자원을 물려 받는 것. 중복피함 (다중상속은안됨)  
  

<hr>

## 멀티스레딩의 장단점에 대해 설명해주세요
하나의 프로그램에서 동시에 여러 개의 일을 수행할 수 있도록 해줌 (사실 분산처리를 통해 동시에 실행되는 것 처럼 보이는 것)  

> 장점 : 1. 응답성(사용자가 빠르게느낌) 2. 경제성 (메모리 경제적으로씀) 3. 멀티프로세서 활용 (병렬성 증가. cpu 병렬로사용가능)  
> 단점 : 임계영역(Critical Section) 갈 수 있음. mutax나 semaphore로 해결. lock많이하면 time complexity 증가

## 생성자란 무엇인가요?
> 객체를 생성할 때 항상 실행되는 것으로, 객체를 초기화해주기 위해 맨 처음 실행되는 메소드이다.  
> 인스턴스 생성시 한번실행, return 없다.  

<hr>

## 싱글톤 패턴이란 무엇인가요?
> 객체의 인스턴스가 오직 1개만 생성  
>   
> 하나의 인스턴스를 메모리에 등록해서 여러 스레드가 동시에 해당 인스턴스를 공유하여 사용하게끔 할 수 있으므로,  
> 요청이 많은 곳에서 사용하면 효율을 높일 수 있습니다.

<hr>

## 싱글톤 객체의 필요성에 대해 설명해주세요
> 객체가 프로그램 내부에서 단 1개만 생성됨 을 보장  
> 동시성 문제(일관되지않게 읽거나 데이터 손실)도 해결해주는 디자인 패턴   


## 자바의 추상클래스와 인터페이스의 차이점에 대해 설명해주세요
> 추상클래스 : 선언부는 있는데 구현부가 없는 메소드, 상속```extends```을 통해서 사용    
> 인터페이스 : 상속관계가 아니라, 필요한 기능 확장해서 사용```implements```(Serializable: 직렬화할 수 있는, Comparable: 비교할 수 있는, Runnable: 실행할 수 있는)   


# OS

## OS 스레드 , 프로세스 차이
프로세스 : 컴퓨터 프로그램(메모리영역 Code, Data, Stack, Heap의 구조)  
스레드 : 프로세스 내에서 실행되는것(메모리구영역중 Stack만. 나머지는 공유함heap같은거)  
멀티프로세스 : 하나의 프로그램을 여러개의 프로세스로 구성하여 각 프로세스가 병렬적으로 작업을 수행 에러안남 but 오버헤드가능  
멀티스레드 : 하나의 프로그램에서 여러 스레드를 구성해 각 스레드가 하나의 작업을 처리 자원공유해서 에러가능. semaphore, mutex, monitor ㄱ  

## 메모리구조/ 스택/ 힙/ 데이터/ 코드 영역 - 선언하면 어느쪽에 저장되는지 설명하기.
code - 코드 저장되는곳  
data - global, static var  
stack - local var, activation record  
heap - 동적할당  

## OS 데드락, 데드락 조건 4가지, 동기화?
> 교착상태   
> 상호배제(Mutual Exclusion), 점유와대기(Hold and wait), 비선점(No Preemption), 환영대기(Circular Wait)   
>(뮤텍스, 세마포어, 모니터)  


## 세그멘테이션, 페이징 (내부단편화 ,외부단편화) & 어떤 단편화를 해결해주나요?
세그멘테이션 : 사용자(개발자)는 자신의 프로그램을 동일한 크기의 페이지 모음으로 인식하기보단, 함수는 함수대로, 자료구조는 자료구조대로 각각 단위 별로 메모리 상에 존재하는 것으로 인식한다.(이게세그먼트)  
세그먼트를 그대로 물리 메모리 운영에 반영해주는 기법을 '세그멘테이션'이라고 한다.  

페이징 : 외부 단편화로 인한 메모리 낭비는 매우 심하다 -> 프로세스를 작은 크기로 나눠서 외부 단편화를 해결 ex)FIFO  

내부단편화 : 낭비  
외부단편화 : 자리없음  

## 임계영역, 뮤텍스, 세마포어에 대해 설명해주세요
> 세마포어는 공유 자원에 세마포어의 변수만큼의 프로세스가 접근할 수 있습니다.  
> 반면에 뮤텍스는 오직 1개만의 쓰레드만 접근할 수 있습니다.  
> 현재 수행중인 프로세스가 아닌 다른 프로세스가 세마포어를 해제할 수 있습니다.  
> 하지만 뮤텍스는 락(lock)을 획득한 프로세스가 반드시 그 락을 해제해야 합니다.  

## 소프트웨어 공학이란
> 소프트웨어의 개발, 운용, 유지보수 등이 **생명 주기 전반**을 체계적이고 서술적이며 정량적으로 다루는 학문  

# 마지막으로 직무 관련 공부, 포트폴리오 문제.

[질문출처 : https://garden1500.tistory.com/m/11]  
[질문출처 : 개발자 단톡방]


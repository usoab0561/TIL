# 몇개 추려서 정리.

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

## DB 트랙잭션과 트랙잭션 특성 4가지

## 트랜잭션 고립성 수준(트랜잭션 격리수준)

## NoSQL, RDBMS

## DB 인덱스 , 인덱스 거는이유, 인덱스에 왜 해쉬 보다 B Tree를 쓰는지?

## DB 정규화, 비정규화(역정규화)

## 데이터베이스 무결성 3가지에 대해 설명해주세요

## DB인젝션 공격에 대해 설명해주세요. 그리고 대처법도 알려주세요

## 트랜잭션과 세션에 대해 설명해주세요
트랜잭션 : sql문 덩어리, 최소 수행단위 
세션 : 시간(접속후 종료까지)

# 언어

## JAVA면 JVM, GC/ JAVA 객체지향, 솔리드, 프로그램 실행의 일련과정 

## 객체지향 vs 절차지향, 오버라이딩 오버로딩, 인터페이스, 추상클래스, 가상함수 등



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

# 마지막으로 직무 관련 공부, 포트폴리오 문제.

[질문출처 : https://garden1500.tistory.com/m/11]  
[질문출처 : 개발자 단톡방]


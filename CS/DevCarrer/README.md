# DevCarrer
* 개발자 면접대비, 몇개만 요약

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
## HTTP, HTTPS(TLS(SSL))/ HTTP RESTFUL / HTTP 응답코드 외우기
Hyper Text Transfer Protocol  
SSL -> TSL 로 발전. Diffie Hellman(mod, secret key) -> RSA (Public Key), 443 port.      
HTTP Method (get post put patch delete).. 에서 rest 규칙따라 설계. 
401(아이디없음[허가x]), 403(로그인됐지만 안됨[금지])  

## 웹브라우저에 google.com 치면 일어나는 과정

## OS 스레드 , 프로세스 차이(멀티스레드와 멀티프로세스차이, PCB)

## TCP vs UDP (TCP, UDP 특성)

## OSI 계층 말하기(각각 알려진 유명 프로토콜)

# DB

## DB 트랙잭션과 트랙잭션 특성 4가지


## DB 인덱스 , 인덱스 거는이유, 인덱스에 왜 해쉬 보다 B Tree를 쓰는지?

## DB 정규화, 비정규화(역정규화)

## DB 트랜잭션 격리수준

# 언어

## JAVA면 JVM, GC/ JAVA 객체지향, 솔리드, 프로그램 실행의 일련과정 

## 객체지향 vs 절차지향, 오버라이딩 오버로딩, 인터페이스, 추상클래스, 가상함수 등


# OS

## 세그멘테이션, 페이징 (내부단편화 ,외부단편화)

## 메모리구조/ 스택/ 힙/ 데이터/ 코드 영역 - 선언하면 어느쪽에 저장되는지 설명하기.

## OS 데드락, 데드락 조건 4가지, 동기화( 뮤텍스, 세마포어, 모니터, 스핀락, 어토믹 설명)


## 마지막으로 직무 관련 공부, 포트폴리오 문제.

[질문출처 : https://garden1500.tistory.com/m/11]
[질문출처 : 개발자 단톡방]



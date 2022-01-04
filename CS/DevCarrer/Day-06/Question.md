# cs면접 6일차

## TCP 3way handshaking과 4way handshaking의 차이를 설명해주세요
![image](https://user-images.githubusercontent.com/84604563/148037304-2c89110d-e337-4527-9e6e-d21729433b93.png)

> 연결을 설정(Connection Establish) 하는 과정
> 3way handshaking : 연결하는 과정. 1. A->B : SYN보내기 2. B->A : SYN + ACK(연결해줘) 3. A->B : ACK (데이터도같이ㄱㄴ)  
> 4way handshaking : 끊는 과정 : 1. A->B : FIN보내기 2. B->A : ACK(이거까지보낼게, Time wait) 3. B->A : FIN (끝. 다보냈다) 4. A->B (알겠다.)

TCP : 전송 계층에서 사용하는 프로토콜. 신뢰성을 보장하는 연결형 서비스.  
![image](https://user-images.githubusercontent.com/84604563/148037557-0f96961b-b760-4c34-96a3-6e530e982fe6.png)

<hr>
<hr>

## 동기(Synchronous)와 비동기(Asynchronous) 호출에 대해 설명해주세요
> 동기 : 요청과 결과 동시에  
> 비동기 : 요청과 결과 동시 X  
동기방식은 매우 간단 but 대기해야 하는 단점   
비동기방식은 복잡하지만 but 다른 작업을 할 수 있음, 자원효율업!  

<hr>
<hr>

## CDN에 대해 설명해주세요
>잦은 요청이 있는 컨텐츠들을 Cache 서버에 분산 배치하여 컨텐츠의 전송 중 발생하는 트래픽 집중 & 병목현상 및 데이터 손실을 해결하기 위해 등장한 컨텐츠 전송 기술 ( 느린 응답속도/다운로딩 타임을 극복하기 위한 기술


<hr>
<hr>

## CORS에 대해 설명해주세요
> Cross-Origin Resource Sharing : Origin(출처)가 다른 자원 공유하는것. CORS정책 위반시 (보안을위해) 에러표출   


<hr>
<hr>

## HTTP에 대해 설명해주세요
> Hyper Text Transfer Protocol의 두문자어로, 인터넷에서 데이터를 주고받을 수 있는 프로토콜  

<hr>
<hr>

## HTTP 메소드에 대해 설명해주세요
![image](https://user-images.githubusercontent.com/84604563/148040059-0d843163-c6e4-4c8f-b9ab-55aa79ad9e8b.png)

<hr>
<hr>

## HTTP Get과 Post의 차이점에 대해 설명해주세요
> Get : GET은 서버로부터 정보를 조회하기 위해 설계된 메소드 ```www.example-url.com/resources?name1=value1&name2=value2 ?표 붙히고 정보다보임```
> Post : 리소스를 생성/변경하기 위해 설계, ```HTTP 메세지의 Body에 담아서 전송. HTTP 메세지의 Body는 길이의 제한없이 데이터를 전송. GET보단안전.```

<hr>
<hr>

## HTTP 상태코드 401과 403의 차이점에 대해 설명해주세요
> 401은 허가되지 않음을 의미하고, 403은 금지됨  
> 401은 익명의 사용자, 403는 로그인은 하였으나 권한이 없는 사용자  


<hr>
<hr>

## HTTP와 HTTPS의 차이점에 대해 설명해주세요
> HTTPS(Hyper Text Transfer Protocol Secure)는 HTTP와 다르게 443번 포트를 사용
> SSL에서 TSL로 변화. 802.X 따라서 Dieffie Hellman이나 RSA방식으로 암호화함.  

<hr>
<hr>

## IPv6의 특징에 대해 설명해주세요 (5가지)
> IPv4인 32비트 주소체계에서 128비트 즉 2^128비트 주소공간 제공  
> 호스트 주소 자동 설정  
> 패킷(데이터전달하는블록) 크기 확장  
> 효율적인 라우팅(전송시 최적경로)  
> 인증, 보안  



# 면접대비 5일차

## 데이터베이스 무결성 3가지에 대해 설명해주세요
> 기밀성 : 데이터의 보호   
> 무결성 : 데이터 위변조 및 파괴 방지  
> 가용성 : 데이터에 대한 원활한 접근  
> 기무가

<hr>

## 관계형 데이터베이스(RDBMS)와 비관계형 데이터베이스(Nosql)에 대해 설명해주세요

![image](https://user-images.githubusercontent.com/84604563/147942693-f17692de-0353-4578-a92e-bcb75a2ba84b.png)

(스키마 : entity, relation, attribute 있는거)   
RDBMS : Oracle, Sqlite  
Nosql : Mongodb .. etc  

![image](https://user-images.githubusercontent.com/84604563/147942855-e6ddcfb6-08c9-4186-9ad2-95fdf6dc4b03.png)

<hr>

## 트랜잭션에 대해 설명해주세요 & 트랜잭션 ACID에 대해 설명해주세요
> db연산 단위, 모아둔것   
> 원자성 Atomicity : 실행되다가 *중단*되지 않는 것을 보장  
> 일관성 Consistency : *일관성* 있는 데이터베이스 상태로 유지  
> 고립성 Isolation : 다른 작업이 *끼어들지 못하도록* 보장  
> 지속성 Durability : *영원히* 반영됨  

<hr>

## 트랜잭션 고립성 수준에 대해 설명해주세요
> 동시에 실행하는 트랜잭션들을 순차적인 실행 상태로 만드는 것은 성능에 좋지 않다.  
![image](https://user-images.githubusercontent.com/84604563/147943481-020bf03f-953e-4958-8843-6015c3362d5d.png)

<hr>

## Non-repeatable read와 Phantom Read의 차이점에 대해 설명해주세요
> X

<hr>

## DB인덱스 설정 시 고려해야할 점을 설명해주세요. 성별과 주민등록번호 중에 어떤 것을 인덱스로 해야할까요? 그 이유는?
> index는 자주 나오지 않게 unique한걸로  
> 성별은 자주나와서 성능 저하, 주민등록번호로 해야지  

<hr>

## SQL 인젝션 공격에 대해 설명해주세요 & SQL인젝션 공격을 막는 방법 중 하나인 prepared statement에 대해 설명해주세요
> 임의의 SQL 문을 주입하고 데이터베이스가 비정상적인 동작을 하도록 조작
> 자주 사용되는 SQL을 데이터베이스가 이해하기 쉬운 형태로 해석해 놓은 것을 Prepared statement. (권한 있으면 이어나감)   

<hr>

## 

## 파이썬은 이것으로 간단하게 sql 인젝션 공격을 막을 수 있습니다. 이것은 무엇일까요?
> X

<hr>

## DB정규화에 대해 설명해주세요 & 정규화의 목적은 무엇인가요?
> 테이블 간에 중복된 데이타를 허용하지 않는다는 것 -> 무결성(정확성) 유지, DB저장 용량 줄어듬  
> 1,2,3,BCNF....... 공부 ... 까먹음   

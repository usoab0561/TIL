# 면접 대비용 공부 질문 3일차

## Jdbc에 대해 설명해주세요
![image](https://user-images.githubusercontent.com/84604563/147926307-6e2b135e-08a1-4ee4-8dd7-4788c923a1b1.png)

<hr>

## JVM의 구조에 대해 설명해주세요 & 자바 소스코드가 JVM을 통해 실행되는 과정을 설명해주세요
![image](https://user-images.githubusercontent.com/84604563/147926385-283f93a0-a30b-4962-b730-22455eff7f78.png)

> JVM은 운영체제에 종속적  

<hr>

## 가비지 콜렉터가 동작하는 과정을 설명해주세요
> Stop The World : GC 제외 모든 쓰레드 멈춘다.  
> Mark and Sweep : 1. 사용되고 있는 메모리를 *식별*하는데, 이러한 과정을 Mark라고 한다. 2. Mark가 되지 않은 객체들을 메모리에서 *제거*하는데, 이러한 과정을 Sweep라고 한다.

<hr>

## 자바에서 Runnable인터페이스와 Thread 클래스의 차이점을 설명해주세요 & 이렇게 두가지 방법이 지원되는 이유를 설명해주세요
> Thread 클래스를 상속받으면 다른 클래스를 상속받을 수 없기 때문에 , Runnable 인터페이스를 구현하는 것이 일반적이다.  
> Thread는 간단, Runnable은 확장성이 좋음  

<hr>


## 자바의 String/ StringBuffer/ StringBuilder의 차이점에 대해 설명해주세요
![image](https://user-images.githubusercontent.com/84604563/147927048-12031f05-a7e7-4ab6-842a-5594e444be66.png)


## 자바의 String 객체 생성시 리터럴로 생성하는 것과 new String()으로 객체를 생성하는 것의 차이점을 설명해주세요
> new String()으로 생성할때는 heap영역에 각각 다른 메모리 만들고 참조. 리터럴로하면 같은거 참조  

## 자바의 Wrapper class에 대해 설명해주세요 & boxing과 unboxing에 대해 설명해주세요
> 기본타입을 가진 클래스 (Byte, Character..)  
> Boxing : 기본타입에서 Wrapper class  
> UnBoxing : Wrapper class에서 기본타입    

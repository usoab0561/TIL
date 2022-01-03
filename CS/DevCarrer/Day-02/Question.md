**면접 대비용 공부 질문 2일차**
## 자바의 final 키워드가 적용되는 세가지 경우에 대해 설명해주세요  
> final 키워드가 나타날 수 있는 곳은 세 가지 클래스, 변수, 메서드다.  클래스는 상속불가, 변수는 상수, 메소드는 오버라이딩(상속받은거재정의불가)X   

<hr>

## final키워드와 finally, finalize의 차이점을 말해주세요  
final : 상수처럼  
finally : try-catch 블록 뒤에 끝나기전에 항상 꼭 실행되어야하는 로직이 있을 경우  
finalize : java garbage collector가 더 이상의 참조가 존재하지 않는 객체를 발견한 순간 호출하는 메서드  

<hr>

## 자바 api 정렬에서 Arrays.sort()는 어떤 정렬 알고리즘을 사용하나요? 최악의 경우 시간복잡도는? Arrays.sort()의 대안은?  
> 듀얼피봇 퀵정렬(Dual-Pivot QuickSort)

랜덤 데이터에 대해서 평균적으로 퀵소트 보다 좋은 성능, but skeweed tree가 되면 O(N^2)

<hr>

> 대안은 Collections.sort(), Timsort라고함

Timsort는 merge sort와 insert sort를 합친것  
Quick sort는 배열에서 좋은 성능을 보이지만 stable하지 않아서 stable이 필요한 Object에는 Collections.sort()가 많이 쓰입니다.  

<hr>

## 자바 optional에 대해 설명해주세요
> 값이 있을 수도 있고 없을 수도 있는 객체.

NPE(NullPointerException)을 방지할 수 있도록 해주는 Wrapper 클래스로 null을 저장하고 참조하더라도 NPE가 발생하지 않는다.  
왜? 반환값이 있을 수도 있고, 없을 수도 있음을 API 사용자에게 명확히 알려준다. try-catch따로 안만들어도됨.  

<hr>

## 자바 static키워드의 생성시기와 소멸시기를 설명해주세요
static은 같은 클래스에 있는 경우 *같은 메모리 주소*를 바라봄  

> static 키워드를 사용하면 *객체가 생성되는 시점이 아닌* *Class Loader 가 클래스를 Load 할 때* Data 영역에 메모리가 할당되게 된다.
> 이 영역은 같은 유형의 클래스마다 공유되며 *Process 가 종료되는 시점에서 해제* 되므로 static 키워드의 생명주기 역시 Class Load 시 생성되고 Process 종료 시 해제되게 된다.

<hr>

## 자바의 객체 리플렉션에 대해 설명해주세요.
> 구체적인 클래스 타입을 알지 못해도, 클래스 메소드 타입 변수들을 접근할 수 있도록 도와주는 자바 API. (투영,반사)

어떻게? static영역에 위치해서 뒤져서 정보가져올 수 있음  
가져올 수 있는것  
![image](https://user-images.githubusercontent.com/84604563/147810524-3d6b5d3c-74a6-4c16-9a8b-af2ad0d96293.png)



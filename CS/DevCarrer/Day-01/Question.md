**면접 대비용 공부 질문 1일차**
## ==와 equals의 차이

> == 은 연산자, equals는 메소드
> == 은 주소비교, equals는 값 비교

```JAVA
String a = "aaa";
String b = a;
String c = new String("aaa");
```


![image](https://user-images.githubusercontent.com/84604563/147766230-25670348-1561-418b-a1cf-b3706ae6f9c6.png)

> ```a``` 와 ```b```는 주소값이 같음.


## Array, LinkedList, ArrayList의 차이점
Array는 index, 미리 크기 정해둬야하고, 중간에 삽입 삭제 timecomplexity 김    
LinkedList는 양방향 list, size상관없음, 중간에 넣기 쉬움       
ArrayList는 array같이 index, 크기 조절가능(동적할당이 아닌 더 큰 배열을 만들어 옮김) 
![image](https://user-images.githubusercontent.com/84604563/147767179-a5159c47-db1d-45c1-a955-ac3478669527.png)


## Call by value와 Call by reference의 차이점
* Call by value : 값에 의한 호출, 메모리 공간 안에서는 임시의 공간이 생성, 기본 자료형 : call by value 로 동작 (int, short, long, float, double, char, boolean)
* Call by reference : 참조에 의한 호출, 함수 호출시 인자로 전달되는 변수의 레퍼런스를 전달한다. (해당 변수를 가르킨다.) 참조 자료형 : call by reference 로 동작 (Array, Class Instance) 

## 자바에서는 call by value와 reference중 어떤 것으로 호출하는가?
주소 값을 복사해서 넘기기 때문에 이는 call by value  
> JAVA에서 Call by reference는 해당 객체의 주소값을 직접 넘기는 게 아닌 객체를 보는 또 다른 주소값을 만들어서 넘겨줘야함. 
```JAVA
public class SwapTest {
    int value;
    
    public SwapTest(int value) {
        this.value = value;
    }
    public static void swap(SwapTest a, SwapTest b) {
        int temp = a.value;
        a.value = b.value;
        b.value = temp;
    }
 
    public static void main(String[] args) {
        SwapTest a = new SwapTest(1);
        SwapTest b = new SwapTest(2);
        System.out.println(a.value + " " + b.value);
        swap(a, b);
        System.out.println(a.value + " " + b.value);
    }
}
```

##  DAO DTO VO 차이
DAO : DB에 접속하여 데이터의 CRUD(생성, 읽기, 갱신, 삭제) 작업을 시행하는 클래스
DTO : 계층간 데이터 교환을 위한 자바빈즈. 순수한 데이터의 객체, DB를 사용하여 데이터의 조회 및 조작하는 기능을 전담하는 오브젝트 
VO는 읽기만 가능한 read only 속성을 가져 DTO와의 차이점이 존재한다.  


## equals()와 hashCode()의 차이점
> hashCode()는 객체의 주소값(int)을 이용하여 객체 고유의 해시코드를 리턴하는 함수

equals()를 재정의(override)할 때는, hashCode()도 재정의해야 한다. (항상 함께 재정의)  
equals()의 값이 true이면, hashCode()도 동일한 값을 가져야 함  
반대로 equals() 값이 false이면, hashCode()도 다른 값을 가져야 함  

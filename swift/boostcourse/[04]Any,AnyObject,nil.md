## Any
Swift의 모든 타입을 지칭  
```swift
var someAny: Any = 100
someAny = "어떤 타입도 괜찮아요"
someAny = 123.12

// let someDouble: Double = someAny (x) Any 타입을 Double타입에 넣을 수 없다.
```

## AnyObject 
모든 클래스 타입을 지칭  

```swift
class SomeClass {}

var someAnyObject: AnyObejct = SomeClass()
// someAnyObejct = 123.12 (x)  Double type을 넣어서 안됨. 클래스인스턴스만 가능.
```

## nil
없음을 의미. (null, NULL, Null과 비슷함)  

```swift
// someAny = nil (x) Any 어떤타입이라든지 가능하지만 없는것, nil은 불가능.
// someAnyObject = nil (x)
```


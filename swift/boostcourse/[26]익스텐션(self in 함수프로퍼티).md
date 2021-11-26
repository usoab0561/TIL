# 익스텐션
기본타입(구조체 클래스, 열거형, 프로토콜)에서 기능추가.  
```swift
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    var isOdd: Bool {
        return self % 2 == 1
    }
}

print(1.isEven) // false
print(2.isEven) // true
print(1.isOdd)  // true
print(2.isOdd)  // false

var number: Int = 3
print(number.isEven) // false
print(number.isOdd) // true

number = 2
print(number.isEven) // true
print(number.isOdd) // false
```
_숫자는 Int type이라 이렇게 연산프로퍼티 추가가능_

## 메서드 추가
```swift
extension Int {
    func multiply(by n: Int) -> Int {
        return self * n
    }
}
print(3.multiply(by: 2))  // 6
print(4.multiply(by: 5))  // 20

number = 3
print(number.multiply(by: 2))   // 6
print(number.multiply(by: 3))   // 9
```

## 이니셜라이저```init``` 추가
여기에서 self는 extension 
```swift
extension String {
    init(int: Int) {
        self = "\(int)"
    }
    
    init(double: Double) {
        self = "\(double)"
    }
}

let stringFromInt: String = String(int: 100) 
// "100"

let stringFromDouble: String = String(double: 100.0)    
// "100.0"
```

## self가 뭔지 몰라 쓰는 번외. self property in method
self 프로퍼티 (The self Property)  
모든 프로퍼티는 암시적으로 _인스턴스 자체_를 의미하는 self라는 프로퍼티를 갖는다.  
인스턴스 메소드 안에서 self프로퍼티를 이용해 인스턴스 자체를 참조하는데 사용 가능.  

```swift
class Counter {
    var count = 0
    func increment() {
        count += 1
    }
}
class CounterTwo {
    var count = 0
    func increment() {
    self.count += 1
  }
}

// Counter, CounterTwo 같은말
```

## 변경 가능한 인스턴스 메소드 (Mutating Instance Methods)

익스텐션에서 추가된 인스턴스 메소드는 인스턴스 자신(self)을 변경가능.  
구조체와 열거형 메소드 중 자기 자신(self)를 변경하는 인스턴스 메소드는 원본 구현의 mutating 메소드와 같이 반드시 mutating으로 선언돼야 함.  
```swift
extension Int {
    mutating func square() {
        self = self * self
    }
}
var someInt = 3
someInt.square()
// someInt is now 9
```

## 결국, self는 자기자신 나타내는 인스턴스가 가지고 있는 프로퍼티.

# assert : 디버그시에만 사용됨  
  
```asssert(someInt == 0, "someInt is wrong!! ")```  
잘못됐을때 이게 잘못됐다는 말을 해준다.  

```swift
var someInt: Int = 0

// 검증 조건과 실패시 나타날 문구를 작성해 줍니다
// 검증 조건에 부합하므로 지나갑니다
assert(someInt == 0, "someInt != 0")

someInt = 1
//assert(someInt == 0) // 동작 중지, 검증 실패
//assert(someInt == 0, "someInt != 0") // 동작 중지, 검증 실패
// assertion failed: someInt != 0: file guard_assert.swift, line 26


func functionWithAssert(age: Int?) {
    
    assert(age != nil, "age == nil")
    
    assert((age! >= 0) && (age! <= 130), "나이값 입력이 잘못되었습니다")
    print("당신의 나이는 \(age!)세입니다")
}

functionWithAssert(age: 50)
//functionWithAssert(age: -1) // 동작 중지, 검증 실패
//functionWithAssert(age: nil) // 동작 중지, 검증 실패
```

# Guard - Early exit : 평시에도 사용이되고, return 혹은 break을 말해줘야한다.
guard의 장점은 guard사용한 후에도 그 뒤에서 사용 할 수 있다는 점이다. 그래서 if let과는 다르게 밑에서```unwrappedAge```로 사용한다.  
ex) basic  
```swift
func functionWithGuard(age: Int?) {
    
    guard let unwrappedAge = age,
        unwrappedAge < 130,
        unwrappedAge >= 0 else {
        print("나이값 입력이 잘못되었습니다")
        return
    }
    
    print("당신의 나이는 \(unwrappedAge)세입니다")
}

var count = 1

while true {
    guard count < 3 else {
        break
    }
    print(count)
    count += 1
}
// 1
// 2

func someFunction(info: [String: Any]) {
    guard let name = info["name"] as? String else {
        return
    }
    
    guard let age = info["age"] as? Int, age >= 0 else {
        return
    }
    
    print("\(name): \(age)")
}

someFunction(info: ["name": "jenny", "age": "10"])
someFunction(info: ["name": "mike"])
someFunction(info: ["name": "yagom", "age": 10]) // yagom: 10
```

ex) optional binding  
```swift
// 1. if let 옵셔널 바인딩
if let unwrapped: Int = someValue { 
// do something
   unwrapped = 3
} 
// if 구문 외부에서는 unwrapped 사용이 불가능 합니다.
// unwrapped = 5 

// 2. guard 옵셔널 바인딩
// gaurd 구문 이후에도 unwrapped 사용 가능합니다.
guard let unwrapped: Int = someValue else {
         return 
}
unwrapped = 3
```

콤마는 condition을 이어붙이는 용도로 쓰는 것이고 &&는 두개의 boolean expression을 파라미터로 받는 논리 연산자이다.  
[참고](https://soojin.ro/blog/swift-comma-vs-and-operator)

http://seorenn.blogspot.com/2016/05/swift-assertion.html

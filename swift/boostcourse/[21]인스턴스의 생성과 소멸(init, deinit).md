## swift에서 인스턴스에서 property에 값이 없으면 초기화가 안된다.!!! 근데 인이셜라이저사용하면 가능!  
```init```키워드를 사용해서 넣어주자.  
```swift
class PersonB {
    var name: String
    var age: Int
    var nickName: String
    
    // 이니셜라이저
    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }
}

let hana: PersonB = PersonB(name: "hana", age: 20, nickName: "하나")
```

## class내부에서 init을 사용할때는 conveience사용하면 똑같은거 두번 선언할 필요 없음. && 옵셔널 이용해서 꼭 초기화 안하고싶을땐 안해도됨 

```swift
class PersonC {
    var name: String
    var age: Int
    var nickName: String?
    
    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }

// 위와 동일한 기능 수행
// convenience init(name: String, age: Int, nickName: String) {
//       init(name: name, age: age)
//       self.nickName = nickName
//  }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let jenny: PersonC = PersonC(name: "jenny", age: 10)
let mike: PersonC = PersonC(name: "mike", age: 15, nickName: "m")
```


* 암시적 추출 옵셔널(!)은, 인스턴스사용할때 꼭 필요한 프로퍼티인데 초기값 할당하지 않고싶을때 사용. 예를들어 강아지가 주인없이는 산책을 못가게할때!!!   
```swift
class Puppy {
    var name: String
    var owner: PersonC!
    
    init(name: String) {
        self.name = name
    }
    
    func goOut() {
        print("\(name)가 주인 \(owner.name)와 산책을 합니다")
    }
}

let happy: Puppy = Puppy(name: "happy")
// 강아지는 주인없이 산책하면 안돼요!
//happy.goOut() // 주인이 없는 상태라 오류 발생
happy.owner = jenny
happy.goOut()
// happy가 주인 jenny와 산책을 합니다
```

## 실패가능한 initializer. 실패하면 nil을 return. 그래서 optional로 처음에 할당하자. ```init?```으로 만듬.
```swift
class PersonD {
    var name: String
    var age: Int
    var nickName: String?
    
    init?(name: String, age: Int) {
        if (0...120).contains(age) == false {
            return nil
        }
        
        if name.characters.count == 0 {
            return nil
        }
        
        self.name = name
        self.age = age
    }
}

//let john: PersonD = PersonD(name: "john", age: 23)
let john: PersonD? = PersonD(name: "john", age: 23)
let joker: PersonD? = PersonD(name: "joker", age: 123)
let batman: PersonD? = PersonD(name: "", age: 10)

print(joker) // nil
print(batman) // nil
```

## 디이니셜라이저. class 타입에서만 사용가능. 인스턴스 해제되는 시점에 해야할 일을 골라줌. 마지막에 nil넣어줄때 deinit내용이 실행됨.
```swift
class PersonE {
    var name: String
    var pet: Puppy?
    var child: PersonC
    
    init(name: String, child: PersonC) {
        self.name = name
        self.child = child
    }
    
    // 인스턴스가 메모리에서 해제되는 시점에 자동 호출
    deinit {
        if let petName = pet?.name {
            print("\(name)가 \(child.name)에게 \(petName)를 인도합니다")
            self.pet?.owner = child
        }
    }
}

var donald: PersonE? = PersonE(name: "donald", child: jenny)
donald?.pet = happy
donald = nil // donald 인스턴스가 더이상 필요없으므로 메모리에서 해제됩니다
// donald가 jenny에게 happy를 인도합니다
```

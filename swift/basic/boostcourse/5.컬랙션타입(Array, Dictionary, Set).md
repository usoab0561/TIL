## Array
순서가 있는 리스트 컬렉션  

```swift
var integers: Array<Int> = Array<Int>()
integers.append(1)
integers.append(100)
//integers.append(101.1) (x)

integers.contain(100) // true
integers.contain(99) // false

integers.remove(at: 0) // integers.append(1)했기 때문에 1이 사라짐
integers.removeLast() // 100이 사라짐
integers.removeAll() // 모든 array사라짐

integers.count // 몇개 들어있는지 알 수 있음.

// integers[0] // (x) 없기때문에 접근 불가능.


// 빈 Double Array 생성. Array<Double> 이나 [Double]()이나 같음
var doubles: Array<Double> = [Double]()
var doublesTwo: Array<Double> = Array<Double>

// 빈 String Array 생성
var strings: [String] = [String]()

// 빈 Character Array 생성
var characters: [Character] = [] // 위와같이 빈 Array생성할때 다 쓰지않고 단축형식으로 쓸 수 있음. (주로 단축형식이 많이 쓰인다고함)

// let 사용해서 constant Array
let immutableArray = [1,2,3]

```

## Dictionary
Key, Value 쌍으로 이루어진 컬렉션.  
넣어준 순서대로 정렬되지도, 가나다순으로 정렬되지도 않는다. 키와 값의 쌍으로만 이루어짐  
```let emptyDict1 = [String:String]()```  
```let wordsDict = ["A": "Apple", "B": "Banana", "C": "Carrot"]```  
  
```swift
// String Key, Any Value
var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

anyDictionary // ["someKey": "value", "anotherKey": 100]

anyDictionary["someKey"] = "dictionary" // someKey라는 Key에 있는 값을 dictionary라고 바꿈
anyDictionary // ["someKey": "value", "anotherKey": 100]

anyDictionary.removeValue(forKey: "anotherKey") // anotherKey에 해당되는 Value를 없애줌

anyDictionary["someKey"] = nil // someKey에 해당되는 Value를 nil로 만들어줌.
anyDictionary // [:] 비어있는 dictionary가 됨

let initDictionary: [String: String] = ["name": "hojang"]
// let someValue: String = initDictionary["name"] (x) 
// 왜냐하면 name이라는 Key에 대응하는 Value가 없을 수도 있기 때문에, 같은 String이더라도 안됨

```

## Set
순서없고, 멤버가 유일한 컬렉션. 중복된 값이 없다를 보장.  
```var someSets: Set<Int> = [1, 2, 2, 2, 3, 3, 3] // 결국 someSet.count시 3개 <1, 2, 3> 이 된다.```  
```var emptySets: Set<Int>()```

```swift
var integerSet: Set<Int> = Set<Int>()

integerSet.insert(1)
integerSet.insert(1)
integerSet.insert(1)
integerSet.insert(2)
integerSet // 1,2

integerSet.contains(1) // true
integerSet.remove(1)
integerSet.removeFirst()

integerSet.count // 0

let setA: Set<Int> = [1,2,3,4,5]
let setB: Set<Int> = [3,4,5,6,7]

let union: Set<Int> = setA.union(setB) // {2,4,5,6,7,3,1} 합집합 해줌! 정렬이 아직 안된모습
let sortedUnion: [Int] = union.sorted() // [1,2,3,4,5,6,7] 정렬을 해줌! 정렬까지 해줘서 배열로 만들어줌.

let intersection: Set<Int> = setA.intersection(setB) // {5,3,4} 교집합

let subtrating: Set<Int> = setA.subtracting(setB) // {2,1} 차집합
```

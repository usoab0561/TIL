# For loops
  
<br>
  
## Array일때

```swift
let fruitBasket = ["Apple", "Peer"]

for fruit in fruitBasket {
  print(fruit)
}
```
<br>

fruitBasket라는 array의 모든 요소들이 print된다.  

이를 응용해서 titleLable의 Animation에서 글자가 하나씩 나오는 것을 구현 할 수 있다.

```swift
titleLable.text = ""
var charIndex = 0.0
let titleText = "TestLetter"

  for letter in titleText {
    Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats:false) {(timer) in  
    // Timer.schedule... 을 사용하는 이유는 for문안에 있는 것이 거의 한번에 append가 되기 때문에 시간차로 append 해줌
     
     self.titleLabel.text?append(letter) // self가 들어가는 이유는 closure안에 들어가기때문에.
    }
    charIndex += 1
  }
 ```
  
<br>

## Dictionary일때

```swift
let contact = ["A": 123, "B": 456, "C": 789]

for person in contact{

  print(person.key)
  // A B C
  print(person.value)
  // 123 456 789
  
}
```
<br>

## String 일때

```swift
let titleText = "👨‍💻Testletter"

for letter in titleText {
  print(letter)
}
```
```
👨‍💻
T
e
s
t
l
e
t
t
e
r
```
<br>

이모지도 포함이 돼서, titleText라는 것의 모든 내용이, 한줄씩 표현이 됨. 

<br>

## Set keyword

Set은 더욱 더 efficient 하게 collection을 표현하게 할 수 있게 한다. 하지만, 순서대로 나타나게 해주진 않는다.

```swift
let fruits: Set = ["Aple", "Peer", "Orange"]
let fruitss = ["Aple", "Peer", "Orange"]

for fruit in fruits{
  print(fruit)
}
// Orange Peer Apple 같이 순서가 뒤죽박죽. 하지만 좀 더 효과적으로 나타나게 해줌.

for fruit in fruitss{
  print(fruit)
}
// Apple Peer Orange순으로 나타나게 해줌.

```

<br>

## 범위를 주고 싶을 때

다 같은 말.

```swift

let numberRange = 1...5
let closedRange = 1..<6

for number in 1...5{
  print("Hello, \(number)")
}

for number in numberRange {
  print("Hello, \(number)")
}

for number in closedRange {
  print("Hello, \(number)")
}

```

# For loops

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
이모지도 포함이 돼서, titleText라는 것의 모든 내용이, 한줄씩 표현이 됨. 

```swift
let fruitBasket = ["Apple", "Peer"]

for fruit in fruitBasket {
  print(fruit)
}
```

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
  


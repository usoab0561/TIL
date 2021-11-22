## print 사용법

```swift 
func print(_ items: Any..., separator: String = default, terminator: String = default)
```

items에는 print할 item,  
separator에는 어떻게 item을 나눌것인지,  
terminator에는 어떻게 print문을 끝낼것인지.  

> separator은 item의 인자가 2개이상일때 발동된다. 

실제 사용 방법

* item 인자가 1개인데, separtor사용할때 
```swift
for n in 1...5{
  print(n, separator: "...", terminator:"\n")
}

// 1
// 2 
// 3 
// 4 
// 5
//
```

* item 인자가 2개인데, separtor사용할때 (item의 인자중 하나를 ""로 해줌)

```swift
for n in 1...5{
  print(n,"" , separator: "...", terminator:"\n")
}

// 1...
// 2...
// 3...
// 4...
// 5...
// 
```



[출처](https://zeddios.tistory.com/86)

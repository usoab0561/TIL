## UIKit, Foundation, Swift Standart Library 중 무엇을 사용할 것인가?  


```swift
import UIKit
```
<hr>

1. ```UIKit```을 import하면 ```Foundation```을 자동으로 import해준다. 
2. ```Foundation```을 import하면 ```Swift Standart Library```을 자동으로 import해준다. 
  
* ```UIKit```은 user interface, ```UITableViewController```, ```UIAlertController ``` 사용할때
*  ```Foundation```은 Strings, Dates를 사용할때, ```NSObject``` 클래스 계층구조 필요할때
*  ```Swift Standart Library```은 swift 기본 데이터타입만 사용해도 될때 사용한다.

[참고](https://daheenallwhite.github.io/ios/2019/07/17/UIKit-Foundation-SwiftStandardLibrary/)

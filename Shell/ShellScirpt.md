# ShellScript
* 리눅스 command 모아둔 ascii text파일  
* 실행 퍼미션이 있어야 실행이 된다.  

처음에 셔뱅, 해시뱅 해두야한다. 첫번째 파일에서  
```#!/bin/bash``` 해주면 됨.
스크립트를 실행할 sub shell의 이름이다.

  <br>
  
> subshell이란, 기본쉘이 로그인쉘이고, 사용할 쉘은 서브쉘이다.
  
기본쉘에서 /bin/bash로 하면 sub쉘로 들어간다.   
sub쉘이서 ```pwd```하면 ```/``` 가 나오고 ```exit```후 다시 ```pwd```하면 /bin/bash가 나온다.  

_셔뱅을 이용해서 스크립트를 작성하면, 그 파일을 실행할때 서브쉘로 실행이 됨._

tip : ```chomod +x 실행파일.sh```해야 읽기 권한 생겨서 파일 실행 가능하다

[참고](https://www.youtube.com/watch?v=onbFKxEEgHg)

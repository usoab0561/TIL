# make, makefile  

<br>

>```make```란, 파일 간 종속관계를 파악하여 Makefile(기술파일)에 적힌 대로 컴파일러에 명령하여 SHELL 명령이 실행되게함. <br><br>
>**자동화**를 통해 **시간 절약** 가능


```vi Makefile```로 Makefile만들고, ```make``` 명령어 해주면 명령 파일 만들어줌

<br>

## binaray 생성과정

<br>

* 소스파일 - *.c

* 목적파일 - *o

* 실행파일 - a.out 또는 *.exe
<br>

> gcc 컴파일러와 linker 통해 실행파일을 만든다.<br>
> 전처리 -> 컴파일 -> 어셈블리 -> 링킹

<br>

[binaray 생성과정](https://gracefulprograming.tistory.com/16)

<br>

## Source

<br>

```c
//main.h
#include <stdio.h>
void proc_kor();
void proc_usa();
```

```c
//main.c
#include "main.h"
int main(){
  printf("main");
  proc_kor();
  proc_usa();
}
```

```c
//kor.c
#include "main.h"
void proc_kor(){
printf("korea");
}
```
```c
//usa.c
#include "main.h"
void proc_kor(){
printf("usa");
}
```

<br>

## Basic commands

<br>

위 소스파일을 만든 다음, 

```
gcc -c main.c kor.c usa.c
// *.c로(소스파일) *.o(목적파일)생성
```
```
gcc -o app.out main.o kor.o usa.o
// *.o을 linker 과정을 통해 실행파일로 생성.
// app.out같이 실행파일 이름을 지정안해주면, a.out으로 자동 설정됨.
```

```
gcc -o app.out main.c kor.c usa.c
// 이렇게 o옵션을 가지고 c를 지정해주면 자동으로 목적파일없이 링커를 바로 만들어줌
// *.o 파일 없이 app.out이 바로 생성이 된다.
```

<br>

## Target, Dependancy, Command

### 기본형식

> TARGET: DEPENDENCY <br>
>   COMMAND.

<br>

Target 만드려면 Dependency, Command가 필요하다.  
Dependency는 Target만들기위해 선행되어야하는 Target들의 목록이다.

<br>



```shell

```

<br>

## 환경변수 config var

## $ 명령어

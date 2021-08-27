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
all: app.out

app.out: main.o kor.o usa.o

  gcc -o app.out main.o kor.o usa.o
  
main.out:
  gcc -c main.c
  
kor.o:
  gcc -c kor.c
  
usa.o:
  gcc -c usa.c
```

<br>

> app.out이 TARGET, main.o kor.o usa.o가 DEPENDENCY<br><br>
> main.out TARGET에서 DEPENDENCY가 없는 이유는 선행되어야 하는 TARGET이 없기 때문에 바로 생성 <br><br>
> all 옵션이 없으면 첫번째 TARGET만 실행시키고 종료하게 된다. 그래서 중간에 섞여있거나 그러면 위치를 찾지 못함.  

<br>

## 환경변수, 매크로

<br>

gcc 같은 컴파일러 명시를 안하고 변수화 가능하다.
그래서 c++이나 기타 등등 상황에 따라 바꿀 수 있고 이것은 환경변수로 바꿀 수 있다.

<br>

> CC, TARGET, OBJS가 매크로이름이고, $(매크로)로 사용 할 수 있다.

<br>

```
CC = gcc
TARGET = app.out
OBJS = main.o kor.o usa.o

all: $(TARGET)

$(TARGET): $(OBJS)
  $(CC) -o $(TARGET) $(OBJS)
  
main.o:
  &(CC) -c main.c

kor.o:
  &(CC) -c kor.c

usa.o:
  &(CC) -c usa.c
```

<br>

> $(TARGET) 그리고 $(OBJS)가 두번나오면, 단순하게 $@, $^로 표현 할 수 있다. <br>

<br>

```
CC = gcc
TARGET = app.out
OBJS = main.o kor.o usa.o

all: $(TARGET)

$(TARGET): $(OBJS)
  $(CC) -o $@ $^
  
main.o:
  &(CC) -c main.c

kor.o:
  &(CC) -c kor.c

usa.o:
  &(CC) -c usa.c
```

<br>

> .c.o을 TARGET으로 하면, Makefile의 *.c파일을 모두 다 *.o로 바꿔준다. <br><br>
> $@은 .o를 TARGET한다는 말이고, $<는 이를 위해 .c를 사용한다는 말.

```
CC = gcc
TARGET = app.out
OBJS = main.o kor.o usa.o

all: $(TARGET)

$(TARGET): $(OBJS)
  $(CC) -o $@ $^
  
.c.o:
  $(CC) -c -o $@ $<
```

<br>


## FLAG

<br>

> CFLAGS는 컴파일 옵션을 말하는 것이고, -Wall은 모든 에러, -g는 디버깅 모드 <br><br>
> LDFAGS는 링크옵션(obj + link로 *.out 또는 *.exe를 만든다.) -lc는 라이브러리 필요하다는 말 <br><br>

<br>

```
CC = gcc
TARGET = app.out
OBJS = main.o kor.o usa.o

CFLAGS= -Wall -g
LDFLAGS = -lc

all: $(TARGET)

$(TARGET): $(OBJS)
  $(CC) $(LFLASGS) -o $@ $^
  
.c.o:
  $(CC) $(CFLASGS) -c -o $@ $<
```

<br>

## clean:

> 쉽게 파일들 지워준다. ```make clean``` 해주면 됨

<br>

```
CC = gcc
TARGET = app.out
OBJS = main.o kor.o usa.o

CFLAGS= -Wall -g
LDFLAGS = -lc

all: $(TARGET)

$(TARGET): $(OBJS)
  $(CC) $(LFLASGS) -o $@ $^
  
.c.o:
  $(CC) $(CFLASGS) -c -o $@ $<

clean:
  rm -f $(OBJS) $(TARGET) 
```

<br>

## etc

<br>

> ```make``` 명령어를 사용할때는 수정된 파일만 컴파일해준다. <br><br>
> ```touch``` 명령어를 사용하면 time stamp가 바뀐다. 그래서 그 파일만 컴파일 해줌

<br>

```
make // 전체파일 Makefile에 따라 바꿔줌

touch main.c // time stamp 변해서 main.c가 컴파일러는 수정되었다고 인식

make // main.c 파일만 Makefile에 따라 컴파일해주고 binary(실행파일을) 만들어줌.
```

[Makefile 참고](https://www.youtube.com/watch?v=jnJL6ppn26Q)

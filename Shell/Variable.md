# Shell이란?

Shell이란 사용자 명령어 해석기 -> 입력한 명령어를 운영체제에 전달  
종류 : sh, csh&tcsh, ksh, bash  
 

* 사용 가능한 shell 리스트
```$ cat /etc/shells```  

* 현재 작업 shell 확인
```$ shell $SHELL```

* 로그인 Shell 변경
```
$ cat/etc/passwd
$ chsh
```
ㄴ 여기에서 sudo chsh [username] 해줘야 권한가지고 사용 할 수 있음.

<br>

# 변수

<br>

문자나 _로 시작한다.

* 변수 선언 : ```varname=value``` **(이렇게 띄워쓰기 x)**

* 변수 확인 하기 : ```echo $varname```

* 변수 전체 확인 : ```set | grep varname``` **(grep 파이프라인 사용해서 확인)**

* 변수 삭제 : ```unset $varname```

* 환경 변수 : ```export varName=value```

* 환경 변수 확인 : ```env```

<br>

> 기억해야할 환경변수  
>    
> PATH : 명령어 탐색 경로  
> HOME : 홈 디렉토리, cd명령어 사용  
> USER : 로그인 사용자 이름  
> SHELL : 로그인 shell의 이름  
 

 일반 변수는 앞으로 전달되는 명령어들에 영향을 주지 않지만, **환경 변수는 이외 실행되는 어플리케이션에 영향을 끼침.** 

[참고](https://www.youtube.com/playlist?list=PLApuRlvrZKog2XlvGJQh9KY8ePCvUG7Je)

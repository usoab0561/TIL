# Quoting Rule

메타문자 의미 제거하고 단순 문자로 변경하는 것. 
1. BackSlash(\) : 바로 뒤 문자 메타 문자는 특별한 의미 제거
2. Double Quotes("") : "" 내 모든 메타 문자 의미 제거. 단, $, " 은 제외
3. Single Quotes('') : '' 내 모든 메타문자의 의미를 제거  

<br>

* Metacharacter란
> Shell에서 특별히 의미를 정해놓은 문자들.  
> ``` \ ? () $ ... * {} [] ```

<br>

# Nesting commands
Command안에 또 하나의 Command 넣을때 사용 

ex) ```echo "Toady is $(date)"```  

위 처럼 date를 나타나게 해 준다.

> Single Quotes로 하면 Nesting commands 사용 불가능 하니 Double Quotes로 해준다

<br>

# Alias

Shell의 명령에 새로운 이름 부여하는 것

1. alias 등록 : ```alias name='command'```
2. alias 확인 : ```alias``` or ```alias name```
3. alias 삭제 : ```unalias name```

ex) ```alias c=clear``` 그리고 이제 ```c``` 입력 하면 ```clear``` 됨

 <br> 
 
# Prompt
PS1 변수를 사용해서 shell promt 모양 설정가능
 
1. \h : 호스트 이름
2. \u : 사용자 이름
3. \w : 작업 디렉토리 - 절대경로
4. \W : 작업 디렉토리 - 상대경로
5. \d : 오늘 날짜
6. \t : 현재 시간
7. \$ : $또는 #프롬트 모양

ex) ```PS1='[\u@\h \W]\$ ' ```

<br>

# Redirection
0 : stdin(키보드)
1 : stdout(terminal, 모니터)
2 : stderr(terminal, 모니터)

1. STDIN ```0<``` 또는 ```0<<``` : 입력을 키보드가 아닌 파일로 받을 수 있다.
2. STDOUt ```1>``` 또는 ```1>>``` : 표준 출력을 터미널이 아닌 파일로 출력가능.
3. STDERR ```2>``` 또는 ```2>>``` : 표준 에러 출력을 터미널이 아닌 파일로 가능.

ex) ```mailx -s "TEST MAIL" usoab0561@naver.com 0< message.txt```
메일을 보내는데 원래라면 키보드로 입력 받았어야 하지만, ```0< message.txt```로 인핸 message.txt 파일에 있는 파일로 메세지를 보내게 됨  

<br>

# Pipeline

명령 여러개 조합 사용 가능.
```command1 | command2 | command3```

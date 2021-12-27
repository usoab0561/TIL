# Commnad


```i``` 입력  
<br>
```:wq``` 저장후 종료  
<br>
```:q!``` 강제 종료  
<br>
```v``` 비주얼라인  
<br>
```:숫자```  원하는 행으로 이동    
<br>
```$``` 마지막 열로 이동  
<br>
```0``` 첫번째 열로 이동  
<br>
```f단어``` 같은열의 단어를 찾는다. 예를들어 f를 누르고 a를 누르면 그 줄의 a를 찾는다  
<br>
```dd``` 한줄 지우기  
<br>
```y``` 복사하기  
<br>
```p``` 붙여넣기   
<br>
```/단어``` 원하는 단어를 찾는다. 찾고 Enter누른다음 n으로 다음문자로 이동하고, N으로 이전문자로 이동한다.  
<br>
```:%s/단어1/단어2/g``` 단어1을 단어2로 global하게 바꾼다.  
<br>
```:줄1,줄2s/단어1/단어2/g``` 줄1~줄2까지 단어1을 단어2로 바꾼다.  
<br>
```u``` 되돌리기 (Ctrl+z)같이  
<br>
```Ctrl+r``` 앞으로 되돌리기 (Ctrl+shift+z)같이  
<br>
```[ 또는 ] ```  { , } 는 문단으로 이동  
<br>

# 기본설정
``` vi ~/.vimrc ``` 에서  
<br><br>
```set number``` 에디터에서 숫자보이게하기  
<br>
```syntax on``` 문법 syntax 보이게 하기  
<br>
__oh my zsh__   terminal 이쁘게 만들어주는 플러그인  
```sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"```

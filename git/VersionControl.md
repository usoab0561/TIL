# VersionControl  
<br></br>
**Working Directory** -> **Statging Area** -> **Local Repository** <br></br>
```git init```을 통해 Working Directory 설정하고,  
```git add```를 통해 Working Directory에서 Staging Area로 파일을 보내고,  
```git commit```을 통해 파일들을 Local Repository로 보낸다.  
```git checkout``` 을 통해서 Local Repository로 간 파일들을 revert할 수 있다. 
<br></br>
## Commands

```
git init
```

<br>

>git local repository 생성. 파일 변하는 것을 알 수 있음  
.git이라, (숨김파일) ls -a로 알 수 있음  

<br>

```
git status
```

<br>

> working directory에서 staging area(커밋전 중간단계)로 이동하지 않은 파일들 보여 준다.  
그래서 ```git add .```를 해줘야지 그 폴더에 있는 모든 파일들이 staging area로 이동하게 된다.

<br>

```
git commit -m "Whatever You Want"
```

<br>

> -m 옵션을 줘서 커밋을 해준다. 버전 컨트롤시 -m flag가 중요하다.  
보통 현재시제로 표현해야지 보기 좋다. ex) complete chapter 1

<br>

```
git log
```

<br>

> 깃허브 로그를 보여준다.

<br>

```git add 파일명```

<br>

> 따로따로 파일을 staging area로 이동하게 한다.   
> ```git add .``` 하면 현재 directory에 있는 모든 파일들을 staging area로 가게함.

<br>

```
git diff 파일명
```

<br>

> 파일이 변한 것을 알 수 있다.

<br>

```git checkout 파일명 ```

<br>

> 파일이 commit이나 add로 변했을때, 다시 원래 버젼으로 바꿔둘 수 있다. 

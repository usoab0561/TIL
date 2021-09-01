# Xcode에서 Version Control 하기

시작 : 파일을 만들때 Source Control에서  
Create Git repository on my Mac ☑️를 하면  ```git init``` 과 같이 된다  

<br>

**Source Controll Navigator**에서 branch와 commit들을 볼 수 있다

![image](https://user-images.githubusercontent.com/84604563/131642276-2c50cd15-2914-4837-963b-a15f83876c5f.png)  

그리고 commit과 최근의 변화를 보고 싶으면

![image](https://user-images.githubusercontent.com/84604563/131642837-8446f998-622c-42a5-9656-667de2d7cbe3.png)


위 사진처럼 들어가면, commit message를 작성하고나서 ```Commit Files```를 누르면 commit이 된다.  
그러면 **Source Controll Navigator**에 commit한 것들이 뜬다.

<br>

## 파일을 다시 돌리는 방법

```SourceControl```에서 ```DisCard All Changes```를 하면 바로 이전 commit 상태로 다 돌려놓는다.

<br>

## Branch And Merge

**Source Controll Navigation**에서 원하는 commit에 오른쪽클릭 후 ```Branch from...```을 누르면 특정 포인트에서 branch를 만들 수 있다.  
그래서 왼쪽 navigatior에서 branch가 따로 생기는 것을 확인 할 수 있다.  

그 후 왼쪽 navigatior에서 ```checkout```을 눌러서 특정 branch에서 작업이 가능하다.  
그곳에서 commit을 하면 특정 branch에서 commit이 된다.  
merge도 마찬가지로, 왼쪽 navigation에서 ```Merge ... into ...```을 클릭하면 원하는 곳에 merge 가능하다.

## 이전 commit들, branch들에서 코드들 비교하기

![image](https://user-images.githubusercontent.com/84604563/131645985-fab821ac-2e0e-409c-842b-8411608f3615.png)

위 사진을 누르면 다른 branch들과 commits들에서 코드들을 비교 할 수 있다.

# Xcode에서 github push

```Xcode```에서 ```Preferences``` 들어가서 Account를 github로 로그인한 후, SSH키 다 받은 다음  
<br>
**Source Controll Navigator** 왼쪽 navigator의 프로젝트 파일에서 오른쪽클릭 한 후 ``` Create ... Remote on Github```를 하면 Remote가 add 된다.  
 ```Source Contorll``` -> ```commit```할때 바로 Remote(Github)에 Push 할 수 있고, Push없이 Remote에만 넣을 수도 있고, 그냥 branch에 commit도 할 수 있다. 

# Pull 하는 방법

예를들어, Readme.md Github에서 파일같이 파일을 바꾸면 지금 프로젝트는 up to date Repository가 되어 push가 안 된다.  
그래서 일단 push 없이 commit을 하고, ```Source Contorll``` -> ```Pull``` 해서 Pull하면 된다.

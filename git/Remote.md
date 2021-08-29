# Remote(원격저장소)
<br></br>
**Working Directory** -> **Statging Area** -> **Local Repository** -> **Remote Repository** 
<br></br>
**Local Repository**와 **Remote Repository**는 완전하게 pararell하다.  
차이를 확인 할 수 있기도 하고, sync 할 수도 있다(sync하면 두개가 똑같아짐)  

**Local Repository**는 우리가 만든 Working Directory에 있는 **```.git```** 깃파일이다.  
**Remote Repository**는 우리의 변화와 코드들을 호스팅해주는 **GitHub**이다 

<br></br>

## Remote 하는 방법 
<br></br>
```git remote add origin 위치```

local git repository를 인터넷 어딘가에 remote하고, 모든 내 commit들을 그곳에 commit할 것이다  
```origin```은 이름을 아무거나 해도 된다. 예를들어 ```bacon``` 같이(보통은 origin한다)

<br></br>

``` git remote add origin https://github.com/usoab0561/TIL.git```

이렇게하면, 위 url에 remote가 생성이 되었고  
이제 origin이라고 불리는 remote repository를 push 할 수 있다.

<br></br> 

```git push -u origin master```


```-u``` flag는 나의 remote와 local repository를 link해준다.  
```orgin```은 remote의 이름이고
```master```은 branch의 이름이다. (default branch, master branch란 commit들의 main branch이다. (또는 save point라고도 함) )

[remote하다해서, 같은 네트워크라면 안된다는건 아님. 로컬에 있을 수 있음 - git remote documentation](https://git-scm.com/book/ko/v2/Git%EC%9D%98-%EA%B8%B0%EC%B4%88-%EB%A6%AC%EB%AA%A8%ED%8A%B8-%EC%A0%80%EC%9E%A5%EC%86%8C)

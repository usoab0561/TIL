# gitignore

원하지않는 파일 예를들어 secret key, api key.. etc 같은 것들을 무시하고 add하게 해준다  
```.gitignore``` 파일인데 hidden file이다. (```ls -a``` command통해 terminal에서 볼 수 있다)

<br></br>

예를들어 ```git add .```를 했다고 생각해보자.  
```git status```를 통해 staging area를 살펴보면,  
directory에는 ```.DS_Store```파일같이 (파일들의 정렬하는 것 등) 필요없는 파일들이 있을 것이다.


```git rm --cached -r .``` 이 명령어를 사용해서 stating area에 있는 파일들을 다 지우고,  
```.gitignore```파일을 열어서 새로운 라인마다 무시할 파일을 적어준다.  

<br>

ex)
```
.DS_Store
Secrets.txt
# this meant comment
*.txt #txt 파일은 모두 무시
```

### etc

<br>

[gitignore - github](github.com/github/gitignore)  
premade collection of useful gitignore templetes  
그래서 swift .gitignore을 검색하거나, object-C를 검색해서 그냥 copy하고 우리의 Xcode gitignore파일에 넣어도 됨

<br>

```git rm --cached -r .```

_rm --cached는 statging area에 있는 모든 파일들을 지운다._   
_-r은 recursive한 것이고, _     
_.은 현재 폴더에 있다는 말. _  



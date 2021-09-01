# Brach

![image](https://user-images.githubusercontent.com/84604563/131638620-0d3bcc62-7539-4467-a6f4-51d7680b8b00.png)

독립적으로 작업을 진행하기 위한 개념  
main인 master Brach가 만들고 있을때, 다른 Branch로 새로 만들다가, 중간에 merge 할 수 있다.  

<br>
<br>


## branch 만들고 checkout으로 바꾸기

위가 master branch라고 치고, 파란색인 아래가 test branch라고 하면  

``` git branch test ```  : test라고 하는 branch를 만든다

``` git branch ```  : 현재 만들어진 branch 들을 확인 할 수 있다. (master branch는 기본적으로 있으니 test와 master인 branch가 있을 것이다.)  

<br>

``` git checkout test ``` : test branch로 branch를 바꾸어 주고 

파일들을 수정해서 ```git add .``` 그리고 ``` git commit ``` 옵션을 해주면 test branch에서 commit을 했다.  

다시 ``` git checkout master ```로 master branch로 바꾸면 파일을 수정 한 것들이 없어져 보인다. 

<br>

# Merging

위에서 보면 test branch에서 파일을 수정했고, master branch에서는 파일을 수정 안 했다.  
그런데 master branch에 test branch에서 파일 수정된것들을 수정하고 싶으면  

```git merge test```을 통해 merge 하면 된다.  
``` git log ```를 보면 merge 된 기록을 볼 수 있다.




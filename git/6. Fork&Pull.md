# Fork
다른사람 Repository를 내 GitHub Account에 복사하는 기능.  
```git clone```은 Local machine에 바로 다운받는거라 다른 개념임.  

<br>

B라는 사람이 A라는 사람의 GitHub에서 fork해온다음, ```git clone```을 통해 Local machine에 파일들을 복사를 한다.  
그러고 파일들을 수정하고 commit 하고 push를 하면, B라는 사람의 GitHub에 push 할 수도 있고,  
A라는 사람에 GitHub에 **pull request**를 통해 A라는 사람의 Repository에 접근 할 수도 있다.  

> A가 permission 주지 않았다면 B는 오직 파일들을 read만 할 수 있다.  
>  따라서 pull Request를 통해 A가 comfirm해야 A의 GitHub가 변함.

<br>

## Pull

A라는 사람은 B가 만든 pull request를 수락을 하면 그 파일들을 merge 할 수 있다.  
B라는 사람이 fork 한 후, 파일을 변경하고 GitHub에서 ```New pull Request```를 클릭후 ```Create pull requset```를 하면  
A는 ```Pull requests```에서 코드를 리뷰하고, ```Review changes```에서 ```Approve```를 하면 ```Merge pull request```를 할 수 있다.

<br>

이 일련의 과정은 ```Insights```에서 ```Network```를 참고하면 볼 수 있다.





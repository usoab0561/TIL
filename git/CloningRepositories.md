# Cloning

**Wokring Directory** -> **Staging Area** -> **Local Repository** -> **Remote Repository**  

Cloning을 한다는 것은, 특정 Remote Repository에서 단계별로 commit 되어있는 것들과 version들을  
```git clone``` 명령을 통해  Woriking Directory로 pull down 하여 **파일에 저장하는 것**이다.  

<br>

## 사용법 

``` git clone URL ```

ex) ``` git clone https://github.com/appbrewery/BMI-Calculator-iOS13.git```

그 후에 ``` git log ```를 통해 clone한 project의 commit들을 볼 수 있다.  

<br>

## Xcode에서 주의점

project name에서 Identity -> Bundle Identifier과 Signing에서 Team을 바꾸어 주고 Simulator 실행해야 한다.




<h2>기본</h2>
  <br></br>
  
```pwd``` : 지금 경로 확인  
```ls``` : 디렉토리  
```ls -l``` : 디렉토리 + 파일명  
```ls -al``` : 디렉토리 + 숨김파일  
```mkdir``` : 폴더만들기  
```touch``` : 파일 만들기  
```rm -f``` : 파일 지우기  
```rm -r``` : 디렉토리 지우기  
```man 명령어``` : 명령어 옵션을 말해줌  
```man 3 함수or라이브러리``` : 함수나 라이브러리 말해줌  
```open -a Atom a.c``` : open에서 -a flag를 사용하면 원하는 에디터로 열 수 있다. 

<br></br>

**File**        
\- rwx rwx rwx  

**directory**  
d rwx r-x r-x  

**Link**   
l rwx r-- r--   

<br></br>
user group other  
rwx rwx rwx  
read, write, execute에  
3bit 사용  
<br></br>

<h2>모드 바꾸기</h2><br></br>

  
```chmod 664 a.out```

* rw- rw- r--   
* 왜? 3bit 사용하니까,  
* 6(110) 6(110) 4(100)
* rw- rw- r-- 됨.  

<br></br>


```chmond g-x a.out```  

* group의 execute권한 빼줌 

> 비트로 권한을 주기 힘들면, 위 처럼   
chmod u,g,o +- rwx 하면 된다.  
 
<br>
</br>

<h2>경로</h2>
<br></br>

```/```  : 가장 상위

```/home/guest1```  : 여기서 리눅스는 시작 

```/```  : 절대경로  

```./```  : 현재위치  

```../```  : 현재 위치 상위 (이전경로)  

``` ~/```  : Home 위치 기준   
<br></br>
절대경로 : ```cd /home/guest1/dir1``` 

현재 경로 : ```cd ./dir1```  

홈 경로 : ```cd ~/dir1```  

<br></br>


<h2>mv명령어</h2><br>

```mv source destination``` 

source를 destination으로 옮긴다.<br></br>

``` mv myfile ./dir2/.``` 

_myfile을 현재폴더에 넣어라. 

마지막에 ./은 의미없는 말이다. 

하지만 그 뒤 마지막 .은 현재위치라는 뜻이고, 
<br></br>

``` mv myfile ./dir2/.myfile ```

은 숨김파일이 된다  


```mv myfile ./dir2/myfile2```

은 내 파일 이름을 바꿀 수 있게 된다   

<br></br>

<h2>cp명령어 파일을 복사</h2>
<br></br>

```cp file2 file3```

file2를 file3으로 복사한다.<br></br>  
  
```cp file2 ./dir2/myfile2``` 

(file2를 dir2 디렉토리에 복사)
  
```cp -r dir2 dir3```

(dir2를 dir3에 복사)

<br><br>
<h2>softlink(filesystem)&hardlink </h2>

<br></br>

* 우리가 쓰는파일은 linkfile이다.  
* inode로 filesytem이랑 연결해준다.  

* linkfile과  hardlink는 inode로 연결되어있다. 그리고 filesystem에는 reference값이 있어서   
* 원본, 복사본과 같이 몇개의 파일이 filesystem과 linkfile에 연결되어있는지 알 수 있다.  

<br></br>
**softlink는 바로가기 만들기** 와 비슷한 개념.  
**softlink는 linkfile을 다시 link**하는것.  

<br></br>

<h3>소프트링크방법</h3>

```ln -s source target```
source를 target으로 softlink 한다.
 
```ln -s dir1 dir```
dir1을 dir2로 소프트링크를 한다.

<br></br>

```ln -s library.0.1.so library.so```

0.1버전을 소프트링크 하고,  

```ln -s library.0.2.so library.so```

다시 0.2버전을 소프트링크한다.   

즉 파일은 똑같은데 이런식으로 소프트링크 할 수 있다.  
그래서 개발자는 오픈소스 배포할때 library.so만 수정해도 된다.

<br></br>

<h3>하드링크방법</h3>

```ln source target```
<br></br>

```ls -li``` 로 하면 왼쪽에 inode가 표현이 된다.   

```ln file1 myfile```

file1을 수정해도 myfile 바뀌고, myfile바뀌어도 file1바뀐다.

<br></br>

<h3><span style= "color:red;">cat명령어</span></h3>  

<br></br>

```cat 파일이름``` : 파일 보여줌 (표준입력을 모니터라는 곳에 표줄출력)  
<br></br>

```cat 파일이름 | more``` : 좀더 보기편하게 해줌 (```|```이게 파이프라인인데, 병렬로사용가능)  
```cat source > target``` : 덮어써줌.(복사처럼, 없으면 만들어줌)   
```cat source >> target``` : 이어써줌<br></br>
ex) ```cat a.c > b.c```  

이렇게 사용 가능.

<br></br>

<h3>head&tail 명령어</h3>

```head filename``` : 앞 10라인 보여줌<br>
```tail filename``` : 뒤 10라인 보여줌<br>
```tail -f filename``` : 변화하면 나타남. 로그데이터 보여줄때 자주사용<br>
<br></br>

<h3>grep 명령어</h3>

```grep 문자열 파일이름``` : 문자열 있는지 검색함 <br></br>

ex) ```grep test \*.log```  

> test  
test2  
...  


<br></br>

ex) ```grep -H test \*.log``` : -H는 파일 이름도 보여주는 옵션  
> system.log test  
system.log test2  
...  

<br></br>

ex)``` grep -Hw test1 \*.log``` : -w옵션은 정확히 그 이름 갖는거 찾는 옵션  
> system.log test1  

<br></br>

<h3>less명령어</h3>

```less filename```

파일내용 보는용도 for memory down  

<br></br>

<h1>system관련 명령어</h1>
<br>
<h3>tar명령어</h3>
<br>
tar cvfz target.tar.gz ... ...<br>
ex)tar cvfz backupss.tar.gz ./dir3 ./file3 ./system.log<br>
압축하려는 이름 , 압축하려는  파일1,   파일2 ,    파일3<br>
<br><br>
ex) tar cvfz target.tar.gz * <br>
전체파일 압축<br>
<br><br>
tar xvfz filename<br>
파일 풀기<br>
<br>
<h3>root계정 관리하기 - 슈퍼관리자</h3>
<br>
ip, networ, webserver, reboo, halt, 인증서 등에 쓰인다.<br>
vi /etc/sudoers에서 바꾸면 됨.<br>
<br><br>
<h3>chown명령어</h3><br>
<br>
chown 파일 directory : 소유자, 그룹명 변경시켜줌<br>
ex) sudo chown user:group target<br>
새로운 사용자, 그룹, 타겟파일<br>
ex) sudo chown me:mygroup test.c<br>
<br><br>
<h2><span style= "color:red;">find명령어</span></h2><br>
<br><br>
찾고자하는 파일을 찾는데 필요한 명령어<br>
<br><br>
<h3> find 경로 조건 target</h3>
<br>
ex) find . -name system.log<br>
찾는다, 현재폴더기준으로, 파일이름을 찾을래, system.log라는 파일을<br>
<br><br>
<h3>which명령어</h3><br>
<br>
명령어의 위치를 알아낼 수 있는 명령어<br>
ex) which ls<br>
ex) which python3<br>
<br><br>
<h3>w, who 명령어</h3><br>
<br>
누가 접속했는지 알 수 있는 명령어<br>
<br>
<h3>ping domain이름</h3><br>
<br><br>
nsloopup domain<br>
둘다 핑, 도메인 관련 명령어<br>
<br>
<h3>ps명령어</h3><br>
<br><br>
processor은 cpu, process는 실행파일이 메모리에 업로드된 상태. 여기서 Ps는 당연히 process고, 실행중인 명령어를 나타냄<br>
<br><br>
ex) ps -ef : 전체 프로세스 검색<br>
ex) ps -ef | grep 문자열 : 전체 프로세스중, 내가 원하는 프로세스 검색. 파이프라인 이용<br>
<br><br>
<h3>kill 명령어 </h3><br>
<br>
원하는 프로세스 킬하기.<br>
ex) ps -ef | grep oracle : 오라클 관련된 프로세스 찾기, 핑번호 안다음<br>
kill -9 핑이름 : kill -9까지는 옵션<br>
<br><br>
<h3>adduser, deluser명령어</h3><br>
<br><br>
사용자 계정 추가, 삭제<br>
adduser 사용자ID<br>
ex) sudo adduser guest2<br>
ex) sudo deluser guest2<br>
<br><br>
su -l 사용자ID : 사용자 아이디로 로그인하는법<br>
exit : 사용자 해당 계정 나가기<br>
<br><br>
<h3>unname, hostname, reboot, halt</h3><br>
<br>
unname -a : 시스템정보<br>
hostname : 서버 별명<br>
sudo reboot : 재부팅<br>
sudo halt -p : 전원까지 싹다 시스템 shutdown<br>
<br><br>
<h2>환경변수 설정하기</h2><br>
<br>
내 컴퓨터에서 특정한 키워드가 어떠한 일을 하거나 경로를 저장할 수 있도록 만든다.<br>
export MY_DIR="dir1"<br>
<br><br>
설정된 모든 환경 변수를 보고 싶으면<br>
env<br>
<br><br>
env하면 위에 설정한 MY_DIR가 dir1이라고 설정이 된 것을 볼 수 있다. <br>
따라서, 터미널이나 내 컴퓨터에서 MY_DIR을 사용해서 dir1을 사용 할 수 있다.<br>
ex) cd $MY_DIR 하면 cd dir1으로 간다. (신기!)<br>
 <br><br>
만약 다시 환경 변수 없애고 싶으면<br>
unset MY_DIR<br>
면 된다 (wow!)<br>
<br><br>
환경변수는 보통 대문자로 만들고, 단어사이사이에 _ (underscore)를 넣는다.<br>	 
<br><br>

> tip : 파이프라이닝과 grep을 써서 좀더 쉽게 환경변수 찾을 수 있다.<br> 
ex) ```env | grep``` 원하는이름<br><br>
mac terminal 에서는 커맨드 입력시 커서가 ctrl+a가 맨 처음으로 가게하고, ctrl+e은 맨끝으로, ctrl+u는 커맨드를 다 삭제한다<br>



<br><br>
[원문 : boomerang velog](https://velog.io/write?id=235bc63b-48db-42a8-becb-12075f0d3987)<br>
[참고 - 시골개발자](https://www.youtube.com/watch?v=9_KIdQ8abH4)<br>
[참고 - 드림코딩by앨리](https://www.youtube.com/watch?v=EL6AQl-e3AQ)<br>

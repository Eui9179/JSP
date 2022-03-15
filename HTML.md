# HTML

## HTML 기본 구조

    <!DOCTYPE html>
    <!--주석문>
    <html>
        <head>
            문서 제목, 자바스크립트 코드, CSS 스타일 정의, 메타데이터 정의
        </head>
        <body>
            문서의 본문 텍스트, 이미지, 테이블, 자바스크립트 코드, 동영상 등
        </body>
    </html>

## HTML5 페이지의 필수 태그

    <!DOCTYPE html>: HTML5 문서임을 알리는 지시어
    <html>, <head>, <title>, <body> 태그

## HTML 태그의 특징

*  HTML 태그 구성
```
<img src="test.jpg" width="100" height="50" alt="test">
<태그이름 속성이름=속성값 속성=속성값 ...>" 
```

- 태그와 속성은 대소문자 구분 없음
- 속성값에 불필요한 공백 문자는 HTML5 표준에 어긋남

<br>

## 예제

### 1. 제목  
```
<!DOCTYPE html>
<html>
    <head>
        <title>첫 타이틀</title>
    </head>
    <body>
        <h1> 큰글자 </h1>
        <h2> 살짝 큰 글자 </h2>
        ...
        <h6> 가장 작은 글자 </h6>
    </body>
</html>
```

### 2. 툴팁
```
<!DOCTYPE html>
<html>
    <head>
        <title>툴팁 달기</title>
    </head>
    <body>
        <h1 title="큰글자 툴팁"> 
            큰글자 </h1>
    </body>
</html>
```

### 3. 새로운 줄 &lt;br&gt;, 단락 나누기 &lt;p&gt;
```
<!DOCTYPE html>
<html>
    <head>
        <title>단락 나누기</title>
    </head>
    <body>
        <h3> 단락 나누기 </h3>
        <p>단락 1<br>단락1 내용</p>
        <p>단락 2</p>
    </body>
</html>
```

### 4. 수평선 긋기 &lt;hr&gt; 
```
<!DOCTYPE html>
<html>
    <head>
        <title>수평선 긋기</title>
    </head>
    <body>
        <h3> 수평선 긋기</h3>
        <hr>
        <p> &lt/hr&gt;로 태그 표시</p>
    </body>
</html>
```

### 5. 특수 문자, 기호, 심볼
```
<!DOCTYPE html>
<html>
    <head>
        <title>문자, 기호, 심볼</title>
    </head>
    <body>
        <h3>기호 넣기</h3>
        <hr>
        띄어쓰기 &nbsp;<br>
        따옴표 &quuot;<br>
    </body>
</html>
```

### 6. 텍스트 꾸미기
```
<!DOCTYPE html>
<html>
    <head>
        <title>텍스트 꾸미기</title>
    </head>
    <body>
        <h3>텍스트 꾸미기</h3>
        <hr>
        <b>진하게</b><br>
        <strong>중요한</strong><br>
        <em>강조</em><br>
        <i>이탤릭으로 강조</i><br>
        <small>한 단계 작은 문자</small><br>
        <del>삭제</del><br>
        <ins>추가</ins><br>
        <sup>윗첨자</sup><br>
        <sub>아래첨자</sub><br>
        <mark>형광팬</mark><br>
        <span style="color:red">빨간 글자</span><br>
        <pre>적는 그대로 보이는 태그</pre><br>
    </body>
</html>
```
<br>

## 블록 태그와 인라인 태그
- 블록태그
    - 항상 새 라인에서 시작하여 출력
    - 양 옆에 다른 콘텐트를 배치하지 않고 한 라인 독점 사용
```
<p>, <h1>, <div>, <ul>
```

- 인라인 태그
    - 블록 속에 삽입되어 블록의 일부로 출력

<br>

---


## 메타 데이터 삽입
- 데이터를 설명하는 데이터
    - 사진: 장소, 시간
    - 오디오: 재생시간, 채널 수
    - 이미지: 이미지 폭, 높이, 해상도
- HTML 페이지에 대한 메타 태그
    - &lt;base&gt;,&lt;link&gt;,&lt;script&gt;,&lt;style&gt;&lt;title&gt;,&lt;meta&gt;

- 메타 태그들은 &lt;head&gt; 태그안에 저장
    - &lt;script&gt;는 body에도 사용 가능

<br>

## &lt;base&gt; 태그

- 사용 예: href 를 전역변수처럼 사용

```
<head>
    <base href="http://localhost/">
</head>
```

```
<a href="math.html">수학</a>
<a href="science.html>과학</a>
```
<br>

## &lt;link&gt; 태그와 &lt;meta&gt; 태그

- &lt;link&gt; 태그는 외부 자원 연결에 사용
```
<head>
    <link type="text/css" rel="stylesheet" href="mystyle.css">
</head>
```

- &lt;meta&gt; 태그는 다양한 메타 데이터 표현
    - 웹 페이지의 저작권, 문자 인코딩 방식 내용 등

<br>

## &lt;img&gt; 태그

- &lt;image&gt; 태그의 src 속성에 이미지 파일의 주소 지정
```
<img    src="이미지 파일의 URL"     -> 필수 속성
        alt="문자열"               -> 이미지를 출력할 수 없는 경우 문자열로 대체, 필수 속성
        width="이미지 폭"
        height="이미지 높이">
```

<br>

## 리스트 만들기

- 3가지 종류의 리스트
    - 순서 있는 리스트 &lt;ol&gt; &lt;/ol&gt;   -> A. B. ...
    - 순서 없는 리스트 &lt;ul&gt; &lt;/ul&gt;   -> 마커
    - 정의 리스트 &lt;dl&gt; &lt;/dl&gt;

- 리스트 아이템
    - &lt;li&gt; ... &lt;li&gt;
    - &lt;/li&gt; 생략 가능
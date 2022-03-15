# HTML
-----
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

## 예제 1
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

## 예제 2 - 툴팁
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

## 예제 3 - <br> 새로운 줄, <p> 단락 나누기
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

## 예제 4 - <hr> 수평선 긋기
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

## 예제 5 - 특수 문자, 기호, 심볼
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

## 예제 6 - 텍스트 꾸미기
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
    </body>
</html>
```

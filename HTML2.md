# HTML

## 표만들기, &lt;table&gt;
- &lt;table> : 표 전체를 담는 컨테이너
- &lt;caption> : 표 제목
- &lt;thead> : 헤딩 셀 그룹
- &lt;tfoot> : 바닥 셀 그룹
- &lt;tbody> : 데이터 셀 그룹
- &lt;tr> : 행. 여러 <td>, <th> 포함
- &lt;th> : 열 제목(헤딩) 셀
- &lt;td> : 데이터 셀

## 표 예
```
<!DOCTYPE html>
<html>
<head><title>기본 테이블 만들기</title></head>
<body>
<h3>기본 구조를 가진 표</h3>
<hr>
<table border="1">  -> border: 선
	<caption>1학기 성적</caption>
	<thead>
		<tr><th>이름</th><th>HTML</th><th>CSS</th></tr>
	</thead>
	<tfoot>
		<tr><th>합</th><th>225</th><th>230</th></tr>
	</tfoot>
	<tbody>
		<tr><td>황기태</td><td>80</td><td>70</td></tr>
		<tr><td>이재문</td><td>95</td><td>99</td></tr>
		<tr><td>이병은</td><td>40</td><td>61</td></tr>
	</tbody>
</table> 
</body>
</html>
```

## 하이퍼링크 &lt;a>
- 같은 웹 사이트에 있는 웹 페이지 연결
```
<a href="test.html">클릭하면 사진 페이지로 이동합니다.</a>
```
- 다른 웹 사이트의 웹 페이지 연결
```
<a href=“http://www.naver.com”>네이버</a>
<a href=“http://www.siter.com/login.html”>사이트 로그인</a>
```
- 이미지 하이퍼링크
```
<a href=“http://www.naver.com”>
	<img src=“naver.png” alt=“네이버사이트”>
</a>
```

## 다운로드 파일 링크 만들기 &lt; ... download>
```
<!DOCTYPE html>
<html>
<head><title>파일 다운로드</title></head>
<body>
<hr>
<ul>
	<li><a href="media/test.png" download>이미지 다운로드</a>
</ul>
</body>
</html>
```

## 인라인 프레임 만들기, &lt;iframe>

- HTML 페이지 내에 HTML 페이지 삽입
```
<!DOCTYPE html>
<html>
<head><title>iframe을 가지는 웹 페이지</title>
</head>
<body>
    <h3>2 개의 &lt;iframe&gt;을 가집니다.</h3>
    <hr>
    <iframe src="iframe1.html" width="200" height="150">
    </iframe>
    <iframe src="iframe2.html" width="200" height="100">
    </iframe>
</body>
</html>
```

## 미디어 삽입 &lt;audio>, &lt;video>
```
<!DOCTYPE html>
<html>
<head><title>비디오 삽입</title></head>
<body>
<h3>비디오 삽입</h3>
<hr>
<video src="media/test.mp4" 
		   width="320" height="240" 
			controls autoplay>
		브라우저가 video 태그를 지원하지 않습니다.
</video>
</body>
</html>
```
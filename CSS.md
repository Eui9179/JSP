# CSS

## CSS3 스타일 시트
- CSS
    - HTML 문서의 색이나 모양 등 외관을 꾸미는 언어
    - CSS로 작성된 코드를 스타일 시트(style sheet)라고 부름

<br>

## CSS 스타일 시트 만들기

### 1. &lt;style>&lt;/style> 태그에 스타일 시트 작성
```
<!DOCTYPE html>
<html>
<head>
	<style>
			body { background-color : mistyrose; }
			h3 { color : purple; }
			hr { border : 5px solid yellowgreen; }
			span { color : blue; font-size : 20px; }
	</style>	
</head>
</html>
```
<br>

### 2. style 속성에 스타일 시트 작성
```
<p style="color : magenta; font-size:30px"> 안녕하세요 </p>
```

<br>

### 3. 스타일 시트를 별도 파일로 작성

- &lt;link> 태그 이용
```
<head>
	<link href="mystyle.css" type="text/css" rel="stylesheet" >
</head>
```

<br>

- @import 이용
```
<style>
	@import url(mystyle.css);
    // import "mystyle.css;
</style>
```
## CSS 스타일로 태그에 동적 변화 만들기
- 애니메이션 (animation)
- 전환 (transition)
- 변환 (transform)
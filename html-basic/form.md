# form

- 사용자가 웹 브라우저를 통해 입력된 모든 데이터를 한 번에 웹 서버로 전송하는 양식
    - 전송한 데이터는 웹서버가 처리하고 처리 결과에 따라 다른 웹 페이지를 보여줌
- 사용자와 웹 애플리케이션이 상호 작용하는 중요한 기술 중 하나
- 사용자가 어떤 내용을 원하는지, 사용자의 요구 사항이 무엇인지 파악할 때 가장 많이 사용하는 웹 애플리케이션의 필수적인 요소

<br>

## form 태그의 기능과 사용법
- form 태그
    - 사용자 다양한 정보를 입력하고 서로 전달할 때 사용하는 태그

```
<form 속성1="값1" [속성2="값2" ...]>
// 다양한 입력 양식 태그<input>, <select>, <textarea>
</form>
```
<br>
<image src="image/formtag.png">

<br>
<br>

- form 태그 사용 예

```
...
<body>
    <form action="http://localhost:8080/ch06/process.jsp method="get" name="login" accept-charset="utf-8">
    ...(생략)...
    </form>
</body>
...
```

<br>

## input, select, textarea ... 태그의 기능과 사용법

## - input
- 사용자가 텍스트 입력이나 선택등을 다양하게 할 수 있도록 공간을 만드는 태그

    ```
    <input 속성1="값2" [속성2="값2" ...]>
    ```

<br>

<image src="image/inputtag.png">

<br>

## - select 태그
- 여러 개의 항목이 나타나는 목록 상자에서 항목을 선택하는 태그

```
<select 속성1="값1" [속성2="값2", ...]>
    <option 속성1="값1" [속성1]> 항목1 </option1>
    <option 속성2="값2" [속성2]> 항목2 </option1>

    ...(생략)...
</select>
```

<br>

<image src="image/selecttag.png">

<br>

## - textarea
- 여러 줄의 텍스트를 입력할 수 있는 태그

<image src="image/textareatag.png">

## 폼 데이터 처리하기

- request 내장 객체는 웹 브라우저가 서버로 보낸 요청에 대한 다양한 정보를 담고 있어 getPrameter() 메소드를 이용하여 요청 파라미터의 값을 얻을 수 있음
- name 속성을 똑같이 줄 경우, 배열로 넘어옴
```
<form action="form_test.jsp" name="member" method="post">
...(생략)...
    <p> 취미: 독서<input type="checkbox" name="hobby" value="독서" checked>
    운동<input type="checkbox" name="hobby" value="운동">
    영화<input type="checkbox" name="hobby" value="영화">


위에 같이 넘어올 경우, getParameterValues로 받는다.

String[] hobbyArray = request.getParameterValues("hobby");
```

- 요청 파라미터의 전체 값 받기
<image src="image/parameter.png">


## 파일 업로드
- 파일 업로드를 위한 JSP 페이지
    - 웹 브라우저에서 서버로 파일을 전송하기 위해 JSP 페이지에 폼 태그를 작성할 때 몇가지 중요한 규칙

```
<form action = "JSP file" method="POST" enctype="multipart/form-data">
    <input type="file" name="Request parameter name">
</form>
```

- form 태그의 method 속성은 반드시 POST 방식으로 설정
- form 태그의 enctype 속성은 반드시 multipart/form-data로 설정
- form 태그의 action 속성은 파일 업로드를 처리할 JSP파일로 설정
- 파일 업로드를 위해 input 태그의 type 속성을 file로 설정
    - 여러 파일이라면 어러 개를 만들어야 함

## MultipartRequest를 이용한 파일 업로드
- MultipartRequest 클래스 생성
<image src="image/multipart.png">
<image src="image/multipart-explain.png">
<image src="image/multipart-ex.png">

- 파일의 경우 getFileNames()로 받음
- MultipartRequest 메소드 종류
<image src="image/multiparts.png">


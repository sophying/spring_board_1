<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 제이쿼리 -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- 합쳐지고 최소화된 최신  css -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css" />
<!--합쳐지고 최소화된 최신 자바스크립트   -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js" />
<!-- 참고 사이트 : https://araikuma.tistory.com/56 -->
<style>
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
  margin: 0 auto;
  padding: 0;
  border: 0;
  font-size: 100%;
  font: inherit;
  vertical-align: baseline;
  outline: none;
  -webkit-font-smoothing: antialiased;
  -webkit-text-size-adjust: 100%;
  -ms-text-size-adjust: 100%;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

#inputDate {
	width:300px;
}

</style>
</head>
<body>
<div class="wrap">
<form>
  <div class="form-group row">
    <label for="staticUserId" class="col-sm-2 col-form-label">그룹장</label>
    <div class="col-sm-6">
      <input type="text" readonly class="form-control-plaintext" id="staticUserId" value="sophy">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputEmail" class="col-sm-2 col-form-label">이메일</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="inputEmail">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputCategory" class="col-sm-2 col-form-label">카테고리</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="inputCategory">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputTitle" class="col-sm-2 col-form-label">제목</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="inputTitle">
    </div>
  </div>
  <div class="form-group row  d-inline-block">
    <label for="inputDate" class="col-sm-2 col-form-label ">기간</label>
    <div class="col-sm-5">시작
      <input type="Date" class="form-control " id="inputDate">
    </div>
    <div class="col-sm-5">끝
      <input type="Date" class="form-control" id="inputDate">
    </div>
  </div>
    <div class="form-group row">
    <label for="inputTitle" class="col-sm-2 col-form-label">제목</label>
    <div class="col-sm-6">
      	<textarea id="content" name="content" class="form-control"></textarea>
    </div>
  </div>
</form>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Home</title>
<style type="text/css">
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

#enroll ,#modify {

	width: 300px;
	height:300px;
	border: 1px solid #F3B8B1;
	border-radius: 40px;
	background-color: #F3B8B1;

}

.abso-l-40{
	position: absolute;
	left: 40%	
}
.abso-l-55{
	position: absolute;
	left: 55%	
}

</style>
</head>
<body>
<div>
<ol>
<li>menu1</li>
<li>menu2</li>
<li>menu3</li>
</ol>
</div>
<div>
<button id="enroll" class="abso-l-40">스터디 등록</button>
<button id="login" class="abso-l-40">로그인</button>
<button id="modify" class="abso-l-55">스터디 수정</button>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		
		$('#login').click(function() {
			location.href="/member/register";
		});
		$('#enroll').click(function() {
			window.location.href="/member/study_enroll1";
		});
		
		$('#modify').click(function() {
			location.href="/member/modify";
		});
		
	});
</script>	
</body>
</html>

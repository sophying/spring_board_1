<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modify</title>
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

table{
	width: 1100px;
	height: 800px;
	border:1px solid;
	border-radius:10px;
	padding: 20px 20px 20px 20px;
}
#wrap{
	width: 1100px;
	
}
textarea{
resize: none; 
}

.enrollBtn{
	text-align: center;
}


/* title */

.title{
  text-align: center;
  width: 700px;
  height: 30px;
  line-height: 30px;
  font-size: 50pt;
  font-family:"맑은고딕" bold;
  margin-top: 5%;
  padding-bottom: 80px;
}
#contentTitle{
	  position: absolute;
	  top: 650px;
}

td{
	text-align: center;
}

th{
padding-left: 40px;
}

/* // title */

input{
	width:300px;
	margin:  5px 5px 5px 5px;
}

.detail{
	width: 400px;

}

.imageFile{
	border-right: 1px solid;
}

.enrollBtn{
	padding:10px 10px 10px 10px;
	position: absolute;
	top: 1000px;
	left: 1350px;
}

</style>


</head>
<body>
<div id="wrap">
	<div class="title">
      스터디 모집 수정
    </div>
    <form role="form" name="enrollForm" action="enroll" method="post">
      <table>
        <tr>
          <td rowspan="8" class="imageFile">
            <input id="photo" name="photo" type="file" name="fileUpload" value="">
          </td>
        </tr>
        <tr>
          <th>아이디</th>
          <td><input class="detail" id="userId" type="text" name="userId" value=""></td>
        </tr>
        <tr>
          <th>카테고리</th>
          <td><input class="detail" id="category" type="text" name="category" value=""></td>
        </tr>
        <tr>
          <th>제목</th>
          <td><input class="detail" id="title" type="text" name="title" value=""></td>
        </tr>
        <tr>
          <th>기간</th>
          <td><input class="detail" id="regDate" type="text" name="regDate" value=""></td>
        </tr>
        <tr>
          <th>장소</th>
          <td><input class="detail" id="place" type="text" name="place" value=""></td>
        </tr>
        <tr>
          <th id="contentTitle">상세내용</th>
          <td><textarea class="detail" id="content" name="content" rows="8" cols="50"></textarea></td>
        </tr>
      </table>
        	<button class="enrollBtn" type="submit">등록</button>
    </form>
</div>
</body>
</html>
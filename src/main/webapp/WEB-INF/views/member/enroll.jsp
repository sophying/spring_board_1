<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>enroll</title>
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

	text-align:center;
	width: 1100px;
	height: 900px;
	border:1px solid;
	border-radius:10px;
	padding: 40px 20px 20px 20px;
}
.calendar{
	display: inline-block;
	width: 200px;
	height: 200px;

}
#wrap{
	width: 1100px;
	display: inline-block;
}
textarea{
resize: none; 
padding-left: 20px;
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
	top: 840px;
	left: 927px;
}


td{
	text-align: left;
	padding-left: 20px;
}

th {
padding-left: 145px;
text-align: right;
}

/* //title */


input{
	width:200px;
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
	margin: a auto;
	width: 100px;
	height: 100px;
/* 	position: absolute;
	top: 1000px;
	left: 1350px; */
}

#title, #category, #userId, #place, #content{
	width: 570px;
	
}
#chk-mon,#chk-tue, #chk-wed,#chk-thu, #chk-fri, #chk-sat, #chk-sun {

	width:50px;
}
label{
	cursor:pointer;
}
</style>


</head>
<body>
<div id="wrap">
	<div class="title">
      스터디 등록
    </div>
    <form role="form" name="enrollForm" action="enroll" method="post">
      <table>
<!--         <tr>
          <td rowspan="9" class="imageFile">
            <input id="photo" name="photo" type="file" name="fileUpload" value="">
          </td>
        </tr> -->
        <tr>
          <th>아이디</th>
          <td colspan="2"><input class="detail" id="userId" type="text" name="userId" value="${userId}"></td>
        </tr>
        <tr>
          <th>카테고리</th>
          <td colspan="2"><input class="detail" id="category" type="text" name="category" value=""></td>
        </tr>
        <tr>
          <th>제목</th>
          <td colspan="2"><input class="detail" id="title" type="text" name="title" value=""></td>
        </tr>
        <tr>
          <th>기간</th>
          <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;시작
          	<input type="date" id="sDate" name="regDate" />
          	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;끝
          	<input type="date" id="eDate" name="regDate" />
          </td>
        </tr>  
        <tr>
        	<th>요일</th>
        	<td>
        		<label for="chk-mon" ><input type="checkbox" id="chk-mon" name="chk-info" value="mon"/>월</label>
        		<label for="chk-tue" ><input type="checkbox" id="chk-tue" name="chk-info" value="tue"/>화</label>
        		<label for="chk-wed" ><input type="checkbox" id="chk-wed" name="chk-info" value="wed"/>수</label>
        		<label for="chk-thu" ><input type="checkbox" id="chk-thu" name="chk-info" value="thu"/>목</label>
        		<label for="chk-fri" ><input type="checkbox" id="chk-fri" name="chk-info" value="fri"/>금</label>
        		<label for="chk-sat" ><input type="checkbox" id="chk-sat" name="chk-info" value="sat"/>토</label>
        		<label for="chk-sun" ><input type="checkbox" id="chk-sun" name="chk-info" value="sun"/>일</label>
        	</td>
        </tr>
        <tr>
          <th>장소</th>
          <td colspan="2">
          	<input class="detail" id="place" type="text" name="place">
          	<!-- <input type="button" id="defaultText" value="추후결정"/> -->
          </td>
        </tr>
        <tr>
          <th id="contentTitle">상세내용</th>
          <td colspan="2"><textarea class="detail" id="content" name="content" rows="8" cols="50"></textarea></td>
        </tr>
      </table>
              	<button class="enrollBtn" type="submit">등록</button>
    </form>
</div>
      <div class="calendar">
      <%@include file="./calendar.jsp" %>
      
      </div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	
	
/* window.onload = function () {
	var sYear = 2020
	var eYear = 2030
	var sMonth = 1
	var eMonth = 12
	var sDay =1
	var eDay = 31;
	
	var strYear="";
	var strMonth="";
	var strDay="";
	
	for(var i=sYear; i <= eYear; i++){
		strYear += "<option value="+i+">"+i+"</option>";
	}
	for(var i=sMonth; i <= eMonth; i++){
		strMonth += "<option value="+i+">"+i+"</option>";
	}
	for(var i=sDay; i <= eDay; i++){
		strDay += "<option value="+i+">"+i+"</option>";
	}
	document.getElementById("sYear").innerHTML = strYear
	document.getElementById("sMonth").innerHTML = strMonth
	document.getElementById("sDay").innerHTML = strDay
	
	document.getElementById("eYear").innerHTML = strYear
	document.getElementById("eMonth").innerHTML = strMonth
	document.getElementById("eDay").innerHTML = strDay
	
} */

	
/* 	$("input[name=chk-info]:checkbox").each(function(){
		var checkboxValue = $(this).val();
		console.log("checkboxValue="+ checkboxValue);
		
	}); */
	
	$("input[name=chk-info]:checked").each(function(){
		var checked = $(this).val();
		console.log(checked);
	});
	
	$("#defaultText").click(function(){
		document.getElementById("place").innerHTML = "<input value='추후결정'/>";
	});
});

</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	int board_num = (Integer) request.getAttribute("board_num");
String nowPage = (String) request.getAttribute("page");
%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- title image -->

<!-- reset -->
<link rel="stylesheet"
	href="https://meyerweb.com/eric/tools/css/reset/reset.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
<!-- text -->
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
</head>
<body>
	<!-- 2020/12/8 글 삭제 시작 -->
	<section id="passForm">
		<form name="deleteForm"
			action="boardDeletePro.do?board_num=<%=board_num%>" method="post">
			<input type="hidden" name="page" value="<%=nowPage%>" />
			<div class="form-col">
				<div class="form-group col-md-2">
					<label for="board_pass">글 비밀번호 : </label> <input name="board_pass"
						class="form-control" type="password" id="board_pass"
						required="required" /> 
					<input name="board_delete" class="form-control" id="board_delete" type="submit" value="삭제" />&nbsp;&nbsp; 
					<input name="board_return" class="form-control" id="board_return" type="button" value="돌아가기" onClick="javascript:history.go(-1)" />
				</div>
			</div>
		</form>
	</section>
	<!-- Optional JavaScript -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
	<script src="js/header.js"></script>
	<script src="js/main.js"></script>
</body>
</html>
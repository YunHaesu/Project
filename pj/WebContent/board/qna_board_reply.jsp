<%@page import="vo.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	BoardBean article = (BoardBean) request.getAttribute("article");
String nowPage = (String) request.getAttribute("page");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>
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
	<!-- 2020/12/8 강현우 게시판 글 답변 -->
	<section id="writeForm">
		<h2>ezCOM 댓글 달기</h2>
		<form action="boardReplyPro.do" method="post" name="boardform">
			<input type="hidden" name="page" value="<%=nowPage%>" /> <input
				type="hidden" name="board_num" value="<%=article.getBoard_num()%>">
			<input type="hidden" name="board_re_ref"
				value="<%=article.getBoard_re_ref()%>"> <input type="hidden"
				name="board_re_lev" value="<%=article.getBoard_re_lev()%>">
			<input type="hidden" name="board_re_seq"
				value="<%=article.getBoard_re_seq()%>">
			<div class="form-col">
				<div class="form-group col-md-2">
					<label for="board_name">글쓴이</label> <input type="text"
						name="board_name" id="board_name" />
				</div>
				<div class="form-group col-md-2">
					<label for="board_pass">비밀번호</label> <input name="board_pass"
						type="password" id="board_pass" />
				</div>
				<div class="form-group col-md-2">
					<label for="board_subject">제 목</label> <input name="board_subject"
						type="text" id="board_subject" />
				</div>
				<div class="form-group col-md-6">
					<label for="board_content">내 용</label>
					<textarea class="form-control is-invalid" id="validationTextarea"
						name="board_content" placeholder="내용을 적어 주세요." cols="40" rows="15"
						style="resize: none;"></textarea>
				</div>
			</div>
			<button type="submit" class="btn btn-primary">댓글 등록</button>
			<button type="reset" class="btn btn-info">다시 작성</button>
		</form>
	</section>
	<!-- 글 답변 끝 -->
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
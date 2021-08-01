<%@page import="com.spring.web.vo.PagingVO"%>
<%@page import="java.util.List"%>
<%@page import="com.spring.web.vo.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
List<BoardVO> boardList = (List) request.getAttribute("boardList");
%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.80.0">
<title>숙소, 체험, 장소를 모두 한 곳에서 - 에어비앤비</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.6/examples/album/">
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/cheatsheet/">


<!-- Bootstrap core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">



<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

nav {
	display: grid;
	grid-template-columns: auto auto;
	justify-content: space-between;
}

.logo {
	margin: 5px 0 20px 20px;
	color: rgb(255, 56, 92);
	font-size: 35px;
	font-weight: 800;
}

.menu ul {
	margin: 20px 20px 0 0;
	display: grid;
	grid-template-columns: auto auto auto auto;
	grid-gap: 30px;
	list-style: none;
	margin-right: 20px;
}

.menu ul a {
	text-decoration: none;
	color: rgb(34, 34, 34);
}

section {
	background-image: url("resources/images/airbnb.jpg");
	height: 500px;
	background-size: 100% 100%;
}

.headtext {
	font-size: 35px;
	font-weight: 800;
	color: white;
}

.search__input {
	height: 30px;
	width: 70px;
	color: rgb(100, 98, 98);
	font-size: 15px;
	border: 1px solid rgb(230, 227, 227);
}

.search__box {
	margin: 30px;
}

.search__button {
	background-color: #ff385c;
	color: white;
	padding: 5px 5px;
	width: 70px;
	font-weight: 700;
	border-radius: 6px;
	border: 0;
	cursor: pointer;
}

.search__button:hover {
	z-index: 2;
	color: #FF385C;
	text-decoration: none;
	background-color: white;
	border-color: gray;
}

.search__button:focus {
	z-index: 3;
	outline: 0;
	box-shadow: 0 0 0 0.2rem #FF385C;
}

a {
	text-decoration: none;
	font-weight: 400;
	color: black;
}

.pagination {
	width: 300px;
	margin-left: auto;
	margin-right: auto;
	 
}


.page-link {
	position: relative;
	display: block;
	padding: 0.5rem 0.75rem;
	margin-left: -1px;
	line-height: 1.25;
	color: #222222;
	background-color: #fff;
	border-color: #FF385C;
	
}

.page-link:hover {
	z-index: 2;
	color: white;
	text-decoration: none;
	background-color: #FF385C;
	border-color: #FF385C;
}

.page-link:focus {
	z-index: 3;
	outline: 0;
	box-shadow: 0 0 0 0.2rem #FF385C;
}


@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>


<!-- Custom styles for this template -->
<link href="resources/css/album.css" rel="stylesheet">
</head>
<nav>
	<div class="logo">
		<svg width="30" height="32" fill="currentcolor"
			style="display: inline-block;">
			<path
				d="M29.24 22.68c-.16-.39-.31-.8-.47-1.15l-.74-1.67-.03-.03c-2.2-4.8-4.55-9.68-7.04-14.48l-.1-.2c-.25-.47-.5-.99-.76-1.47-.32-.57-.63-1.18-1.14-1.76a5.3 5.3 0 00-8.2 0c-.47.58-.82 1.19-1.14 1.76-.25.52-.5 1.03-.76 1.5l-.1.2c-2.45 4.8-4.84 9.68-7.04 14.48l-.06.06c-.22.52-.48 1.06-.73 1.64-.16.35-.32.73-.48 1.15a6.8 6.8 0 007.2 9.23 8.38 8.38 0 003.18-1.1c1.3-.73 2.55-1.79 3.95-3.32 1.4 1.53 2.68 2.59 3.95 3.33A8.38 8.38 0 0022.75 32a6.79 6.79 0 006.75-5.83 5.94 5.94 0 00-.26-3.5zm-14.36 1.66c-1.72-2.2-2.84-4.22-3.22-5.95a5.2 5.2 0 01-.1-1.96c.07-.51.26-.96.52-1.34.6-.87 1.65-1.41 2.8-1.41a3.3 3.3 0 012.8 1.4c.26.4.45.84.51 1.35.1.58.06 1.25-.1 1.96-.38 1.7-1.5 3.74-3.21 5.95zm12.74 1.48a4.76 4.76 0 01-2.9 3.75c-.76.32-1.6.41-2.42.32-.8-.1-1.6-.36-2.42-.84a15.64 15.64 0 01-3.63-3.1c2.1-2.6 3.37-4.97 3.85-7.08.23-1 .26-1.9.16-2.73a5.53 5.53 0 00-.86-2.2 5.36 5.36 0 00-4.49-2.28c-1.85 0-3.5.86-4.5 2.27a5.18 5.18 0 00-.85 2.21c-.13.84-.1 1.77.16 2.73.48 2.11 1.78 4.51 3.85 7.1a14.33 14.33 0 01-3.63 3.12c-.83.48-1.62.73-2.42.83a4.76 4.76 0 01-5.32-4.07c-.1-.8-.03-1.6.29-2.5.1-.32.25-.64.41-1.02.22-.52.48-1.06.73-1.6l.04-.07c2.16-4.77 4.52-9.64 6.97-14.41l.1-.2c.25-.48.5-.99.76-1.47.26-.51.54-1 .9-1.4a3.32 3.32 0 015.09 0c.35.4.64.89.9 1.4.25.48.5 1 .76 1.47l.1.2c2.44 4.77 4.8 9.64 7 14.41l.03.03c.26.52.48 1.1.73 1.6.16.39.32.7.42 1.03.19.9.29 1.7.19 2.5z"></path></svg>
	</div>
	<div class="menu">
		<ul>
			<li><a href="indexUser.jsp">Home</a></li>
			<li><a href="insertBoard2.jsp">호스트 되기</a></li>
			<li><a href="login2.jsp">로그인</a></li>
			<li><a href="modifyUser.jsp">정보수정</a></li>
		</ul>
	</div>
</nav>
<body>

	<header> </header>

	<main role="main">

		<section class="jumbotron text-center">
			<div class="container">

				<p class="headtext">호스트 분들이 있기에 가능합니다.</p>

			</div>
		</section>

		<div class="album py-5 bg-light">
			<div class="container">

				<!-- Search -->
				<form action="getBoardList.do" name="formCheck" method="post">
					<div class="search__box">
						<select name="searchType" class="search__input">
							<option value="TITLE">Title</option>
							<option value="CONTENT">Content</option>
						</select> <input type="text" name="searchKeyword">
						<input id="submitBtn" type="submit" value="Search" class="search__button">
					</div>
				</form>

				<div class="row">
					<%
					for (BoardVO board : boardList) {
					%>
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">

							<img class="bd-placeholder-img card-img-top"
								src="resources/fileupload/<%=board.getFileName()%>" width="100%"
								height="225" xmlns="http://www.w3.org/2000/svg"
								aria-label="Placeholder: Thumbnail"
								preserveAspectRatio="xMidYMid slice" focusable="false">
							<rect width="100%" height="100%" fill="#55595c" />
							</img>

							<div class="card-body">
								<a class="card-text"
									href="getBoard.do?board_idx=<%=board.getBoard_idx()%>"><%=board.getBoard_title()%></a>
								<div class="d-flex justify-content-between align-items-center">
									<%=board.getBoard_nickname()%><br>
									<%=board.getBoard_reion()%><br> <small class="text-muted"><%=board.getCnt()%></small>
								</div>
							</div>

						</div>
					</div>
					<%
					}
					%>
					<!-- 여기가 한블럭 -->



				</div>
			</div>
		</div>
		<div>
			<%
		PagingVO paging = (PagingVO) request.getAttribute("pagingVO");

		int listCnt = paging.getListCnt();

		int curPage = paging.getPage(); // 현재 페이지
		int listSize = paging.getListCnt(); // 1page 목록 갯수

		int rangeSize = paging.getRangeSize();
		int range = paging.getRange();
		int startPage = paging.getStartPage(); //2
		int endPage = paging.getEndPage(); // 6
		boolean prev = paging.isPrev();
		boolean next = paging.isNext();
		%>
			<!--  start:
			<%=startPage%>
			/ end:
			<%=endPage%>
			/ 현재구간:
			<%=range%>
			/ 현재페이지:
			<%=curPage%><br>-->
			<div class="'pagingbox">
			<ul class="pagination">
				<li class="page-item">
					<%
		if (prev) {
		%> <a class="page-link"
					href="getBoardList.do?curPage=<%=startPage - rangeSize%>&range=<%=range - 1%>"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a>
				</li>
				<%
		}
		%>
				<%
		for (int i = startPage; i <= endPage; i++) {
		%>

				<li class="page-item"><a class="page-link"
					href="getBoardList.do?curPage=<%=i%>&range=<%=range%>"><%=i%> </a></li>

				<%
		}
		%>
				<%
		if (next) {
		%>
				<li class="page-item"><a class="page-link"
					href="getBoardList.do?curPage=<%=startPage + rangeSize%>&range=<%=range + 1%>"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
			</div>
			<%
		}
		%>
		</div>

	</main>



	<footer class="text-muted">
		<div class="container">
			<p class="float-right">
				<a href="#">Back to top</a>
			</p>
			<p>Album example is &copy; Bootstrap, but please download and
				customize it for yourself!</p>
			<p>
				New to Bootstrap? <a href="/">Visit the homepage</a> or read our <a
					href="../getting-started/introduction/">getting started guide</a>.
			</p>
		</div>
	</footer>

	<script>
var login_check = function () {
	var form = document.formCheck;
	if(form.searchKeyword.value.length == 0){
		alert("검색어를 입력해주세요")
		form.searchKeyword.focus();
		return;
	}
	form.submit();
}
window.onload = function () {
	var btn = document.querySelector("#submitBtn");
	btn.onclick = login_check;
}
</script>
	
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')
	</script>
	<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>

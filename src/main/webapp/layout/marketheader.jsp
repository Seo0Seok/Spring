<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="css/header.css" type="text/css">
		<link rel="stylesheet" href="css/headerfirstline.css" type="text/css">
		<link rel="stylesheet" href="css/headerblank.css" type="text/css">
		<link rel="stylesheet" href="css/headertext.css" type="text/css">
		<link rel="stylesheet" href="css/headerloginsignbtn.css" type="text/css">
		<link rel="stylesheet" href="css/headerusermenu.css" type="text/css">
		<link rel="stylesheet" href="css/headerusermenubtn.css" type="text/css">
		<style>
	        img {
			margin-right: 5px;
	        }
	        a {
    		color: rgb(33, 33, 33);
    		text-decoration: none;
    		cursor: pointer;
    		background-color: transparent;
			}
		</style>
	</head>
<body>
	<div class="header">
		<div class="headfirst">
			<a class="textblank"> <img src="img/marketlogo.png" width="136px"
				height="40px">
			</a> 
			<div>
				<input type="text" placeholder=" 상품 제목 입력" class="text1" value="">
				<a>
				<img src="img/selectimg.png" width="16" height="16" alt="검색 버튼 아이콘">
				</a>
			</div>
<!-- 			<a>
			<input type="text" placeholder=" 상품 제목 입력" class="text" value="">		
			
			</a> -->
			<button class="loginsignbtn">로그인/회원가입</button>
		</div>
	</div>
	<div class="headusermenu">
		<button class="headmymenubtn">
			<img src="img/userlogimg.png" width="23" height="24" alt="내정보버튼 이미지">
			내 정보
		</button>
		<button class="headmymenubtn">
			<img src="img/usersellimg.png" width="23" height="24" alt="물품등록버튼 이미지">
			물품등록
		</button>
		<button class="headmymenubtn">
			<img src="img/userchatimg.png" width="23" height="24" alt="쪽지버튼 이미지">
			쪽지
		</button>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script src="js/jquery.js"></script>
		<script src="js/vue.js"></script>
		<jsp:include page="/layout/marketheader.jsp"></jsp:include>
		<title>마켓이름 : 상품정보</title>
		<style>
			@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
	
	        * {
	            font-family: 'Noto Sans KR', sans-serif;
	        }
			.container{
				margin: auto;
				border: solid gray 1px;
				width: 1010px;
      		}
			.little{
				display: inline;
			}
			.content{
				margin-left: 50px;
				font-size: 25px;
			}
			.description{
				font-size: 20px;
			}
			.msgDiv{
				display: flex;
				justify-content: center;
				align-items: center;
				height: 100px;
			}
			.msg{
				width: 40%;
				height: 70%;
				font-size: 20px;
			}
			.imgDiv{
				display: flex;
				justify-content: center;
				align-items: center;
				margin-bottom: 30px;
			}
			.nick{
				font-size: 25px;
				margin-left: 30px;
			}
			.sub{
				padding: 10px;
			}
			.image{
				max-width: 80%;
			  	max-height: 80%;
			}
    	</style>
	</head>
	<body>
		<div class = container id = "app">
			<div class="imgDiv" v-for="(item, index) in list"><img :src="item.img" class="image"/></div>
			<div class="sub">
				<h2 class="little">닉네임</h2>
				<span class="nick">{{info.uNickName}}</span><br>
			</div>
			<div class="sub">
				<h2 class="little">장소</h2>
				<span class="content">{{info.uAddress}}</span>
			</div>
			<hr>
			<div class="sub">
				<h2 class="little">제목</h2>
				<span class="content">{{info.bTitle}}</span>
			</div>
			<div class="sub">
				<h2 class="little">가격</h2>
				<span class="content">{{info.pPrice}} 원</span>
			</div>
			<div class="sub">
				<h2>내용</h2>
				<span class="description">{{info.bContent}}</span>
			</div>
			<div class="msgDiv">
				<button class="msg">판매자에게 쪽지 보내기</button>
			</div>
		</div>
	</body>
</html>

<script type="text/javascript">
var app = new Vue({ 
    el: '#app',
    data: {
    	idx : "${map.boardIdx}",
    	userId : "${userId}",
    	userNickName : "${userNickName}",
    	info : {},
    	list : []
    }   
    , methods: {
    	fnGetItem : function(){
            var self = this;
            var nparmap = {boardIdx : self.idx};
            $.ajax({
                url:"/product/details.dox",
                dataType:"json",	
                type : "POST", 
                data : nparmap,
                success : function(data) {                                       
	                self.info = data.product;
	                self.list = data.list;
                }
            }); 
        },

    	
    }   
    , created: function () {
    	var self = this;
    	self.fnGetItem();
	}
});
</script>

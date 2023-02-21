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
				margin-bottom: 20px;
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
				width: 234px;
			    height: 250px;
			    border: 1px solid rgb(230, 229, 239);
			    margin-right: 1rem;
			    margin-bottom: 1rem;
			    display: inline-flex;
			}
			.nick{
				font-size: 25px;
				margin-left: 30px;
			}
			.sub{
				padding: 10px;
			}
			.recently{
				width: 120px;
				height: fit-content;
				position: fixed;
		    	top: 250px;
		    	right: calc(50% - 800px);
				border: solid lightgray 1px;
				display: flex;
				flex-direction: column;
				justify-content: center;
				align-items: center;
			  }
			  .recently_inner{
				padding: 5px;
				margin: 5px;
			  }
			  .miniImgDiv{
				  width: 95%;
				  height: 70px;
				  padding: 5px;
				  cursor: pointer;
			  }
    	</style>
	</head>
	<body>
		<div id="app">
		/*
		 * <div class="recently"v-if="reList.length>0" > <div class="recently_inner" >
		 * <div><span>최근 본 상품<br><hr></span> </div> <div class="recently_image"
		 * v-for="(item, index) in reList"> <div
		 * class="miniImgDiv" @click="fnViewItem(item)" > <img :src="item.img"
		 * class="itemimg"> </div> </div> </div> </div>
		 */
		<div class = container>
			<div>
			<span class="imgDiv" v-for="(item, index) in list"><img :src="item.img" class="image"/></span>
			</div>
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
				<span class="description"><pre>{{info.bContent}}</pre></span>
			</div>
			<div class="msgDiv">
				<button class="msg" onclick="window.open('writing.do','_blank', 'left='+(screen.availWidth-555)/2+',top='+(screen.availHeight-580)/2+', width=555px,height=580px');">
				판매자에게 쪽지 보내기
				</button>
			</div>
		</div>
		<mainsetfooter>
			<jsp:include page="/layout/marketfooter.jsp"></jsp:include>
		</mainsetfooter>
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
    	re : ${re},
    	reList : [],
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
    	fnViewItem : function(item){
     		var self = this;
     		self.pageChange("/productdetails.do", {boardIdx : item.boardIdx});
     	},
    	fnGetReList : function(item){
	        var self = this;
	        nparmap = {};
	        $.ajax({
	            url:"/main/recentlyview.dox",
	            dataType:"json",	
	            type : "POST", 
	            data : nparmap,
	            success : function(data) {                                       
	                self.reList = data.list;
	                console.log(self.re);
	                console.log(self.reList);
	            }
	        }); 
	    }

    	
    }   
    , created: function () {
    	var self = this;
    	self.fnGetItem();
    	if (self.re.length >= 1) {
            self.fnGetReList();
        }
    	
	}
});
</script>

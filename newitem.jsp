<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>농부의 아침</title>
<link rel="stylesheet" href="css/mainhome.css">
<script src="js/jquery.js"></script>
<script>

$(document).ready(function(){
	showMyInfo();
});

function showMyInfo()
{
	$.ajax({
		url: "myInfo",
		success: function(response)
		{
			console.log(response);
			if (response.code == "success")
			{				
				console.log(response.data.name);
				$(".user_name").html(response.data.name);
			}
			else
			{
				user = null;
			}
		}
	});
}

</script>
<style>
    .bestitem{
    text-align: center;
    display : flex;
    }
</style>
</head>
<body>
<div class="header">
        <div class="mini">
            <ul class="small">
                <li><a href ="join.html">회원가입</a></li>
                <li><span class="user_name"></span>님</li>
                <li><a href ="cstomer.html">고객센터</a></li>
            </ul>
        </div>

        <div class="img" onclick="location.href='home.jsp'">
            <img src ="picture/logo.png" />
        </div>
        <div class="bigger">
            <ul class="big">
                    <a href ="newitem.jsp"><li>신상품</li></a>
                    <a href ="bestitem.jsp"><li>베스트</li></a>
                    <a href ="donation.jsp"><li>기부현황</li></a>
                    <a href ="news.jsp"><li>소식</li></a>
            </ul>
        </div>
    </div>
    
    <div class="title">
            <span class="news">신상품</span>
	</div>
	
	<div class="bestitem">
		<div class=card>
	         <img src ="picture/단호박.png">
	         <p>유명산지 천도복숭아</p>
	         <h2>7,920원</h2>
	     </div>
	
	     <div class=card>
	         <img src ="picture/머스크멜론.png">
	         <p>머스크 멜론</p>
	         <h2>14,800원</h2>
	     </div>
	
	     <div class=card>
         <img src ="picture/밀크.png">
         <p>a2 밀크 오리지날 1L</p>
         <h2>6,800원</h2>
     </div>
	</div>
	<div class="bestitem">
	     <div class="card">
	         <img src ="picture/바나나.png">
	         <p>감숙왕 바나나 1입</p>
	         <h2>1,250원</h2>
	     </div>
	
	     <div class="card">
	         <img src ="picture/백도복숭아.png">
	         <p>백도 복숭아</p>
	         <h2>15,840원</h2>
	     </div>
	     
	     <div class="card">
         	<img src ="picture/블루베리.png">
         	<p>무농약 제주 레드비트즙</p>
         	<h2>12,720원</h2>
     	</div>
     </div>
     <div class="bestitem">
	     <div class="card">
	         <img src ="picture/생체리.png">
	         <p>미국산 블루베리 2종</p>
	         <h2>4,900원</h2>
	     </div>
	
	     <div class="card">
	         <img src ="picture/양배추.png">
	         <p>유기농 샐러드 양배추</p>
	         <h2>3,000원</h2>
	     </div>
	
	     <div class="card">
         	<img src ="picture/자두.png">
         	<p>스테비 후무사 자두</p>
         	<h2>14,500원</h2>
     	</div>
	 </div>
	 <div class="bestitem">
	     <div class="card">
	         <img src ="picture/젤리토마토.png">
	         <p>무농약 젤리 토마토</p>
	         <h2>3,500원</h2>
	     </div>
	
	     <div class="card">
	         <img src ="picture/찹쌀.png">
	         <p>유기농 찹쌀</p>
	         <h2>1,000원</h2>
	     </div>
	
	     <div class="card">
         	<img src ="picture/천도복숭아.png">
         	<p>유명산지 천도복숭아</p>
         	<h2>7,920원</h2>
     	</div>
	</div>
	 <div class="bestitem">
	     <div class="card">
	         <img src ="picture/통밀쌀.png">
	         <p>유기농 통밀쌀</p>
	         <h2>3,500원</h2>
	     </div>
	     <div class="card">
	         <img src ="picture/황금향.png">
	         <p>황금향 1kg</p>
	         <h2>11,840원</h2>
	     </div>
	
	     <div class="card">
        	 <img src ="picture/흙토마토.png">
         	<p>무농약 흙토마토</p>
         	<h2>6,500원</h2>
     	</div>
    </div>
</body>
</html>
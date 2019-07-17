<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>농부의 아침</title>
<link rel="stylesheet" href="css/mainhome.css">
<script src="js/jquery.js"></script>
<script>0

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
            <span class="news">베스트 상품</span>
	</div>
	
	<div class="bestitem">
		<div class=card>
	         <img src ="picture/케일.png">
	         <p>즙용 유기농케일</p>
	         <h2>1,870원</h2>
	     </div>
	
	     <div class=card>
	         <img src ="picture/참외.png">
	         <p>저탄소 인증 성주 참외</p>
	         <h2>8,960원</h2>
	     </div>
	
	     <div class=card>
         <img src ="picture/우유.png">
         <p>무항생제 제주 목초 우유</p>
         <h2>2,950원</h2>
     </div>
	</div>
	<div class="bestitem">
	     <div class="card">
	         <img src ="picture/방울토마토.png">
	         <p>마틸다 토마토</p>
	         <h2>12,800원</h2>
	     </div>
	
	     <div class="card">
	         <img src ="picture/고등어.png">
	         <p>Hello! 노르웨이 고등어</p>
	         <h2>3,320원</h2>
	     </div>
	     
	     <div class="card">
         	<img src ="picture/비트즙.png">
         	<p>무농약 제주 레드비트즙</p>
         	<h2>12,720원</h2>
     	</div>
     </div>
     <div class="bestitem">
	     <div class="card">
	         <img src ="picture/고구마.png">
	         <p>아이스 엿구마</p>
	         <h2>2,180원</h2>
	     </div>
	
	     <div class="card">
	         <img src ="picture/천도복숭아.png">
	         <p>유명산지 천도복숭아</p>
	         <h2>7,920원</h2>
	     </div>
	
	     <div class="card">
         	<img src ="picture/양배추.png">
         	<p>무농약 사보이 양배추</p>
         	<h2>3,510원</h2>
     	</div>
	 </div>
	 <div class="bestitem">
	     <div class="card">
	         <img src ="picture/생강식혜.png">
	         <p>생강식혜</p>
	         <h2>7,125원</h2>
	     </div>
	
	     <div class="card">
	         <img src ="picture/자두.png">
	         <p>후무사 자두</p>
	         <h2>6,750원</h2>
	     </div>
	
	     <div class="card">
         	<img src ="picture/아보카도.png">
         	<p>미국산 아보카도</p>
         	<h2>2,700원</h2>
     	</div>
	</div>
	 <div class="bestitem">
	     <div class="card">
	         <img src ="picture/진참치액.png">
	         <p>진참치액</p>
	         <h2>11,100원</h2>
	     </div>
	     <div class="card">
	         <img src ="picture/목살.png">
	         <p>한돈 목살 양념구이</p>
	         <h2>13,980원</h2>
	     </div>
	
	     <div class="card">
        	 <img src ="picture/대한약콩.png">
         	<p>대한약콩</p>
         	<h2>24,000원</h2>
     	</div>
    </div>
</body>
</html>
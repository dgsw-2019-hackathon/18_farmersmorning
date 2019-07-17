<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
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
<title>농부의 아침</title>
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

        <div class="img">
            <img src ="picture/logo.png" onclick="location.href='home.jsp'"/>
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
	<div class="story">
        <div class="title">
            <span class="news">소식</span>
        </div>
        <div class="subtitle">
            <span class="nothing">&emsp;&emsp;&emsp;&emsp;&emsp;</span>
            <span>이달의 농부</span>
            <span class="nothing">&emsp;&emsp;&emsp;&emsp;&emsp;</span>
            <br>
            <p>가장 많은 기부를 한 이달의 농부를 소개합니다.</p>
        </div>
        <div class="section">
            <span class="card">
                    <img style="width: 300px; height: 300px;
                    object-fit: cover;
                    border-radius: 50%;
                    margin-left: auto; margin-right: auto; display: block;
                    margin: 0 auto;"
                    src="picture/농부1.jpg"/>
                    <p>[달콤농장] 김호미 (73세)<br>양파기부 : 12,4526,90망</p>
            </span>
            <span class="card">
                    <img style="width: 300px; height: 300px;
                    object-fit: cover;
                    border-radius: 50%;
                    margin-left: auto; margin-right: auto; display: block;
                    margin: 0 auto;"
                    src="picture/농부2.jpg"/>
                <p>[싱싱목장] 박길동 (65세)<br>달걀기부 : 49,258,6알</p>
            </span>
            <span class="card">
                    <img style="width: 300px; height: 300px;
                    object-fit: cover;
                    border-radius: 50%;
                    margin-left: auto; margin-right: auto; display: block;
                    margin: 0 auto;"
                    src="picture/농부3.jpg"/>
                <p>[워싱턴 과수원] 제이슨 (67세)<br>강낭콩기부 : 15,1239,019알</p>
            </span>
        </div>
    </div>
</body>
</html>
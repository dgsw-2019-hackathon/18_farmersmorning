<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>농부의 아침</title>
    <link rel="stylesheet" href="css/mainhome.css">
    <script src="js/jquery.js"></script>
</head>

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
<body>
    <div class="header">
        <div class="mini">
            <ul class="small">
                 <li><a href ="join.html">회원가입</a></li>
                <li><span class="user_name"></span>님</li>
                <li><a href ="cstomer.html">고객센터</a></li>            </ul>
        </div>

        <div class="img" onclick="location.href='home.jsp'">
            <img src="picture/logo.png"/>
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

    <div class="write">
        <span id="remeber">
            <!-- <span id="remeberBox">"아침상자"</span> -->
            <img src="picture/moringbox.png" id="remeberBox">
            <br>
            한 상자로
            <br>
            행복을 전하세요
        </span>
        <img src="picture/vbox.jpg" alt="아침사장" id="vbox">
    </div>

    <div class="title">
        <h1 style="color: #26262693;">
            아침상자는 어디로 전달되나요?
        </h1>
    </div>
    <div class="intro">
        <div class="contents">
            <div class="one">
                <img src="picture/box.png" class="circle" style="margin-bottom: 30px;">
                <span class="plus">여러분의 소중한 아침상자는</span>
            </div>
            <!-- <div id="fromMoring">농부의 아침을 통해</div> -->
            <img src="picture/fromM.png" id="fromMoring">
            <div class="one">
                <img src="picture/leaf.jpg" class="circle" style="margin-bottom: 30px;">
                <span class="plus">저소득 소외계층에게 전달됩니다.</span>
            </div>
        </div>
    </div>
    <div class="donation">
        <div class="subtitle">
            <span
                class="nothing">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</span>
            <span>기부하기</span>
            <span
                class="nothing">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</span>
        </div>
        <div class="minititle">
            <span>아침 상자 기부</span>
            <p>
                작은 상자 하나에 오늘 또 하나의 희망이 자라납니다.
            </p>
        </div>
        <div class="step1">
            <div class="step">STEP1. 아침상자 선택하기</div>
            <div class="stepC">
                <button class="sel">크기 선택</button>
                
                    <input type="checkbox" name="size" value="big"> 대형(140cm)<br>
                    <input type="checkbox" name="size" value="mid"> 중형(100cm)<br>
                    <input type="checkbox" name="size" value="small"> 소형( 60cm)<br><br>

                    <button class="sel">개수 선택</button><br>
                    대형(140cm)<input type="number" name="num1" value="bignum" class="number" placeholder="0"> <br>
                    중형(100cm)<input type="number" name="num2" value="midnum" class="number" placeholder="0"> <br>
                    소형( 60cm) <input type="number" name="num3" value="smallnum" class="number" placeholder="0"> <br><br>
            </div>
        </div>
        <div class="step2">
            <div class="step">STEP2. 후원자 정보 입력</div>
            <div class="stepC">
            <form action="donationafter.jsp" method="post">        
                    <table>
                        <tr>
                            <td>후원인 구분</td>
                            <td> 
                                <select>
                                    <option value="private">개인</option>
                                    <option value="office">기업</option>
                                    <option value="group">단체</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>후원자명</td>
                            <td><input type="text" name="name"></td>
                        </tr>
                        <tr>
                            <td>연락처</td>
                            <td>
                                <input type="tel" name="tel" placeholder="00*-000*-0000"
                                 pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}">
                            </td>
                        </tr>
                        <tr>
                            <td>주소</td>
                            <td>
                                <input type="text" name="officeN"><button>우편번호</button><br>
                                <input type="text" name="address" style="width: 300px;">
                            </td>
                        </tr>
                    </table>
                   	<input type="submit" class="sell" >
                   </form>
            </div>
        </div>
    </div>
</body>
</html>
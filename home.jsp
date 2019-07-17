<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
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
	@font-face{
    font-family: ssflo;
    src: url('SSFLOWERROAD.ttf') format(ture); 
	}
	body{
	    font-family: 'ssflo';
	    min-width: 1600px;
	}
	.mainImg{
    width: 100%;
    height: 700px;
    background-image: url('picture/bb.png');
    background-repeat: no-repeat;
    background-size: cover;
    color: white;
    position: relative;
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

        <div class="img">
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

    <div class="mainImg">
        <div id="title">
            <h1>농부의 아침</h1>
            <p>아침처럼 상쾌하고 신선한 재료를 바로 만나보세요.</p>
            <img src="picture/icons8-search-24.png" alt="돋보기">
            <input type="text" id="serch">
        </div>
    </div>
    
    <div class="new">
        <div class="title">
            <span class="news">오늘의 신상품</span>
            <span class="btn">
                <a href="newitem.jsp">더보기</a>
            </span>
        </div>
        <div class="section">
                <span class="card" onclick="location.href='newitem.jsp'">
                    <img src="picture/egg.png" alt="사진" class="onetwo">
                    <p>
                        [NEW][설성목장] 동물복지 유정란
                        <br><span>16900원</span>
                    </p>
                </span>
                <span class="card" onclick="location.href='newitem.jsp'">
                    <img src="https://img-cf.kurly.com/shop/data/goods/1529907170994l0.jpg" alt="사진" class="onetwo">
                    <p>
                        [NEW][달콤농장] 초당옥수수
                        <br><span>17900원</span>
                    </p>
                </span>
                <span class="card" onclick="location.href='newitem.jsp'">
                    <img src="https://img-cf.kurly.com/shop/data/goods/1560839148401l0.jpg" alt="사진" class="onetwo">
                    <p>
                        [NEW]미국 위싱턴 생체리
                        <br><span>9900원</span>
                    </p>    
                </span>
            </div>
    </div>
    
    <div class="best">
       <div class="title">
           <span class="news">베스트 상품</span>
           <span class="btn">
                <a href="bestitem.jsp">더보기</a>
            </span>
        </div>
       <div class="section">
           <span class="card" onclick="location.href='bestitem.jsp'">
                <img src="https://img-cf.kurly.com/shop/data/goods/152836638432l0.jpg" alt="사진" class="oneBy">
                <p><span class="ti">과즙이 살아있는 생귤</span>
                    <br>제주농장의 생귤 후기 EVENT
                </p>   
           </span>
           <span class="card" onclick="location.href='bestitem.jsp'">
                <img src="https://img-cf.kurly.com/shop/data/goods/15572815474l0.jpg" alt="사진" class="oneBy">
                <p><span class="ti">여름엔 맛있는 하우스 수박</span>
                    <br>인기 과일 최대 20% 할인
                </p>   
           </span>
           <span class="card" onclick="location.href='bestitem.jsp'">
                <img src="https://img-cf.kurly.com/shop/data/goods/1463997072538l0.jpg" alt="사진" class="oneBy">
                <p><span class="ti">껍질채 먹을 수 있는 친환경 흙당근</span>
                    <br>흙당근 최대 30% 할인
                </p>   
           </span>
       </div>
    </div>
    <div class="donation">
        <div class="section">
            <div class="content">
                <img src="picture/heart.png" id="hand">
                <div class="info">
                    <h1>현재 기부상황</h1>
                    <p>
                        <span id="num">21,9034,5</span><br>
                         가정이 도움받고 있어요. <br>
                        저소득 소외계층에게 따스한손길을 전하세요.
                    </p>
                    <button id="donabtn" onclick="location.href='donation.jsp'">
                    	기부하러가기
                    </button>
                </div>
            </div>
        </div>
    </div>
    
    <div class="story">
        <div class="title">
            <span class="news">소식</span>
            <span class="btn">
                <a href="news.jsp" onclick="location.href='news.jsp'" >더보기</a>
            </span>
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
    
    <div class="slogan">
        <div class="con">
            <span>
                "농산물의 신선함을 전달하기 위해"<br>
                &nbsp;우리는 오늘도 노력합니다.
            </span>
            <img src="picture/logo2.png" id="logo2">
        </div>
        <div id="yellow"></div>
    </div>
    
    <div class="underbar">
        <p>
            법인명(상호) : 주식회사 농부의 아침 ㅣ 연락처 : 053-231-9240
            주소: 대구광역시 달성군 구지면 창리로 11길 93  ㅣ 대표이사 : 쇠스랑                
        </p>
    </div>
</body>
</html>
</body>
</html>
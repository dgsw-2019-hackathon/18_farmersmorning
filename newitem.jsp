<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����� ��ħ</title>
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
                <li><a href ="join.html">ȸ������</a></li>
                <li><span class="user_name"></span>��</li>
                <li><a href ="cstomer.html">������</a></li>
            </ul>
        </div>

        <div class="img" onclick="location.href='home.jsp'">
            <img src ="picture/logo.png" />
        </div>
        <div class="bigger">
            <ul class="big">
                    <a href ="newitem.jsp"><li>�Ż�ǰ</li></a>
                    <a href ="bestitem.jsp"><li>����Ʈ</li></a>
                    <a href ="donation.jsp"><li>�����Ȳ</li></a>
                    <a href ="news.jsp"><li>�ҽ�</li></a>
            </ul>
        </div>
    </div>
    
    <div class="title">
            <span class="news">�Ż�ǰ</span>
	</div>
	
	<div class="bestitem">
		<div class=card>
	         <img src ="picture/��ȣ��.png">
	         <p>������� õ��������</p>
	         <h2>7,920��</h2>
	     </div>
	
	     <div class=card>
	         <img src ="picture/�ӽ�ũ���.png">
	         <p>�ӽ�ũ ���</p>
	         <h2>14,800��</h2>
	     </div>
	
	     <div class=card>
         <img src ="picture/��ũ.png">
         <p>a2 ��ũ �������� 1L</p>
         <h2>6,800��</h2>
     </div>
	</div>
	<div class="bestitem">
	     <div class="card">
	         <img src ="picture/�ٳ���.png">
	         <p>������ �ٳ��� 1��</p>
	         <h2>1,250��</h2>
	     </div>
	
	     <div class="card">
	         <img src ="picture/�鵵������.png">
	         <p>�鵵 ������</p>
	         <h2>15,840��</h2>
	     </div>
	     
	     <div class="card">
         	<img src ="picture/��纣��.png">
         	<p>����� ���� �����Ʈ��</p>
         	<h2>12,720��</h2>
     	</div>
     </div>
     <div class="bestitem">
	     <div class="card">
	         <img src ="picture/��ü��.png">
	         <p>�̱��� ��纣�� 2��</p>
	         <h2>4,900��</h2>
	     </div>
	
	     <div class="card">
	         <img src ="picture/�����.png">
	         <p>����� ������ �����</p>
	         <h2>3,000��</h2>
	     </div>
	
	     <div class="card">
         	<img src ="picture/�ڵ�.png">
         	<p>���׺� �Ĺ��� �ڵ�</p>
         	<h2>14,500��</h2>
     	</div>
	 </div>
	 <div class="bestitem">
	     <div class="card">
	         <img src ="picture/�����丶��.png">
	         <p>����� ���� �丶��</p>
	         <h2>3,500��</h2>
	     </div>
	
	     <div class="card">
	         <img src ="picture/����.png">
	         <p>����� ����</p>
	         <h2>1,000��</h2>
	     </div>
	
	     <div class="card">
         	<img src ="picture/õ��������.png">
         	<p>������� õ��������</p>
         	<h2>7,920��</h2>
     	</div>
	</div>
	 <div class="bestitem">
	     <div class="card">
	         <img src ="picture/��н�.png">
	         <p>����� ��н�</p>
	         <h2>3,500��</h2>
	     </div>
	     <div class="card">
	         <img src ="picture/Ȳ����.png">
	         <p>Ȳ���� 1kg</p>
	         <h2>11,840��</h2>
	     </div>
	
	     <div class="card">
        	 <img src ="picture/���丶��.png">
         	<p>����� ���丶��</p>
         	<h2>6,500��</h2>
     	</div>
    </div>
</body>
</html>
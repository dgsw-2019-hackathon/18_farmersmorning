<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����� ��ħ</title>
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
            <span class="news">����Ʈ ��ǰ</span>
	</div>
	
	<div class="bestitem">
		<div class=card>
	         <img src ="picture/����.png">
	         <p>��� ���������</p>
	         <h2>1,870��</h2>
	     </div>
	
	     <div class=card>
	         <img src ="picture/����.png">
	         <p>��ź�� ���� ���� ����</p>
	         <h2>8,960��</h2>
	     </div>
	
	     <div class=card>
         <img src ="picture/����.png">
         <p>���׻��� ���� ���� ����</p>
         <h2>2,950��</h2>
     </div>
	</div>
	<div class="bestitem">
	     <div class="card">
	         <img src ="picture/����丶��.png">
	         <p>��ƿ�� �丶��</p>
	         <h2>12,800��</h2>
	     </div>
	
	     <div class="card">
	         <img src ="picture/����.png">
	         <p>Hello! �븣���� ����</p>
	         <h2>3,320��</h2>
	     </div>
	     
	     <div class="card">
         	<img src ="picture/��Ʈ��.png">
         	<p>����� ���� �����Ʈ��</p>
         	<h2>12,720��</h2>
     	</div>
     </div>
     <div class="bestitem">
	     <div class="card">
	         <img src ="picture/����.png">
	         <p>���̽� ������</p>
	         <h2>2,180��</h2>
	     </div>
	
	     <div class="card">
	         <img src ="picture/õ��������.png">
	         <p>������� õ��������</p>
	         <h2>7,920��</h2>
	     </div>
	
	     <div class="card">
         	<img src ="picture/�����.png">
         	<p>����� �纸�� �����</p>
         	<h2>3,510��</h2>
     	</div>
	 </div>
	 <div class="bestitem">
	     <div class="card">
	         <img src ="picture/��������.png">
	         <p>��������</p>
	         <h2>7,125��</h2>
	     </div>
	
	     <div class="card">
	         <img src ="picture/�ڵ�.png">
	         <p>�Ĺ��� �ڵ�</p>
	         <h2>6,750��</h2>
	     </div>
	
	     <div class="card">
         	<img src ="picture/�ƺ�ī��.png">
         	<p>�̱��� �ƺ�ī��</p>
         	<h2>2,700��</h2>
     	</div>
	</div>
	 <div class="bestitem">
	     <div class="card">
	         <img src ="picture/����ġ��.png">
	         <p>����ġ��</p>
	         <h2>11,100��</h2>
	     </div>
	     <div class="card">
	         <img src ="picture/���.png">
	         <p>�ѵ� ��� ��䱸��</p>
	         <h2>13,980��</h2>
	     </div>
	
	     <div class="card">
        	 <img src ="picture/���Ѿ���.png">
         	<p>���Ѿ���</p>
         	<h2>24,000��</h2>
     	</div>
    </div>
</body>
</html>
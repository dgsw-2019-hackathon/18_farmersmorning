<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>농부의 아침</title>
<link rel="stylesheet" type="text/css" href="css/main.css"/>
<link rel="stylesheet" type="text/css" href="css/common.css"/>
<link rel="stylesheet" type="text/css" href="css/uikit/uikit.min.css">
<link rel="stylesheet" type="text/css" href="css/farmweb.css">
<script src="js/uikit-icons.min.js"></script>
<script src="js/uikit.min.js"></script>
<script src="js/uikit-icons.js"></script>  
<script src="js/jquery.js"></script>
<script>
var user = null;

$(document).ready(function() {
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
				$(".login").hide();
				$(".logout").show();
				
				$("#user_name").html(response.data.name);
				
				user = response.data;
			}
			else
			{
				$(".login").show();
				$(".logout").hide();
				
				user = null;
			}
		}
	});
}

function doLogin()
{
	var id = $("input[name='id']").val();
	var password = $("input[name='password']").val();
	
	if (id.length == 0)
	{
		alert("아이디를 입력해 주세요.");
		$("input[name='id']").focus();
	}
	else if (password.length == 0)
	{
		alert("비밀번호를 입력해 주세요.");
		$("input[name='password']").focus();
	}
	else
	{
		var data = {
			id: id,
			password: password
		};
		
		$.ajax({
			url: "login.do",
			data: data,
			method: "post",
			success: function(response)
			{
				console.log(response);
				if (response.code == "success")
				{
					location.href = "home.jsp";
				}
				else
				{
					alert(response.message);
				}
			}
		});
	}
	
	console.log(id);
	console.log(password);
}

function doLogout()
{
	$.ajax({
		url: "logout.do",
		success: function(response)
		{
			showMyInfo();
		}
	});
}
</script>
<style>
	.uk-button
	{
		border-radius: 100px !important;
	}
	.logoimage {
	     position: relative;
	     left: 28%;
		 text-align: center;
   		 width: 150px;
 	  	 height: auto;
	}
</style>
</head>

<body>
	<c:if test="${not empty user}">
	<c:redirect url="join.html"/>
	</c:if>
		<div class="uk-section uk-section-muted uk-flex uk-flex-middle uk-animation-fade" uk-height-viewport>
			<div class="uk-width-1-1">
				<div class="uk-container">
					<div class="uk-grid-margin uk-grid uk-grid-stack" uk-grid>
						<div class="uk-width-1-1@m">
							<div class="uk-margin uk-width-large uk-margin-auto uk-card uk-card-default uk-card-body">
								<div class="logoimage">
									<img src="picture/logo.png" >
								</div>
								
								<form action="join.html" method="post">
									
									<div class="uk-margin">
										<div class="uk-inline uk-width-1-1">
											<span class="uk-form-icon" uk-icon="icon: user"></span>
											<input class="uk-input uk-form-large" type="text" name="id" class="login_input" placeholder="ID">
										</div>
									</div>
									
									<div class="uk-margin">
										<div class="uk-inline uk-width-1-1">
											<span class="uk-form-icon" uk-icon="icon: lock"></span>
											<input class="uk-input uk-form-large" type="password" name="password" class="login_input" placeholder="PW">
										</div>
									</div>
									
									<div class="uk-margin">
										<input type="button" class="container" value="로그인" onClick="doLogin();"></input>
									</div>
									
								</form>
								
								<form action="join.html" method="post">
									<input class="uk-button uk-button-default uk-button-large uk-width-1-1" type="submit" value="회원가입" >
								</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
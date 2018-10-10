<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Login</title>
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="shortcut icon" href="css/bootstrap.min.css">
<link rel="shortcut icon" href="css/font-awesome.min.css">
<link rel="shortcut icon" href="css/bootstrap-social.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
      $(document).ready(function () {
           var x_timer;
           $("#email").keyup(function (e) {
                clearTimeout(x_timer);
                var user_name = $(this).val();
                x_timer = setTimeout(function () {
                    check_username_ajax(user_name);
                }, 1000);
                });
 
           function check_username_ajax(username) {
                $("#user-result").html('<img src="images/404/ajax-loader.gif" />');
                $.post('CheckEmailServlet', {'username': username}, function (data) {
                    $("#user-result").html(data);
                 });
           }
       });
</script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	
	
	<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Đăng nhập tài khoản</h2>
						<form action="./LoginAction" method="post">
							<input type="text" name="username" placeholder="Tên đăng nhập" />
							<input type="password" name="password" placeholder="Password" />
							<span>
								<input type="checkbox" class="checkbox"> 
								Giữ đăng nhập tài khoản
							</span>
							<br><a href="#"> Quên Mật Khẩu?</a>
							<button type="submit" class="btn btn-default">Đăng nhập</button>
							<br><br>
							<br><br>
						<a
							href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/FoodStrory/LoginGoogleServlet&response_type=code
    &client_id=933769647275-j3iektbcr6rj5h7eqn0ddrab3hjsm71k.apps.googleusercontent.com&approval_prompt=force">
    <img alt="login google" src="images/icon/btn-google-login.png" width="300px" height="50px"></a>
    						<br><br>
    						<a href="#">
    						<img alt="login google" src="images/icon/login_face.png" width="300px" height="50px"></a>
					</form>
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">OR</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>Đăng ký người dùng mới!</h2>
						<form action="AccountRegisterAction" method="post">
							<input type="text" name="username" placeholder="Nhập usernam"/>
							<input type="text" name="fullname" size="30" placeholder="nhập họ tên"  />
							<input type="text" name="address" size="30" placeholder="Nhập địa chỉ"/>					
							<input type="email" name="email" placeholder="Nhập email"/>
							<input type="text" name="phone" size="30" maxlength="12" placeholder="Nhập phone"/>
							<span id="user-result"></span>
							<input type="password" name="pass" placeholder="Nhập mật khẩu"/>
							<input type="button" value="insert" name="command">
							<span></span>
							<button type="submit" class="btn btn-default">Đăng ký</button>
						</form>
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
		<br><br>
		<br><br>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
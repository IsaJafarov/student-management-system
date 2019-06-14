<%--
  Created by IntelliJ IDEA.
  User: elnurquluzade
  Date: 2019-03-13
  Time: 01:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>


<!-- Mirrored from radixtouch.in/templates/admin/smart/source/dark/forgot_password.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 12 Feb 2019 22:40:30 GMT -->
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta name="description" content="Responsive Admin Template" />
    <meta name="author" content="RedstarHospital" />
    <title>Smart University | Bootstrap Responsive Admin Template</title>
    <!-- google font -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all" rel="stylesheet" type="text/css" />
    <!-- icons -->
    <link href="./source/dark/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="./source/dark/assets/plugins/iconic/css/material-design-iconic-font.min.css">
    <!-- bootstrap -->
    <link href="./source/dark/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- style -->
    <link rel="stylesheet" href="./source/dark/assets/css/pages/extra_pages.css">
    <!-- favicon -->
    <link rel="shortcut icon" href="http://radixtouch.in/templates/admin/smart/source/assets/img/favicon.ico" />
    <style> #error{color:red;}</style>
</head>

<body>
<div class="limiter">
    <div class="container-login100 page-background">
        <div class="wrap-login100">
            <form   class="login100-form validate-form" action="sendCode" method="post">
					<span class="login100-form-logo">
						<img alt="" src="./source/dark/assets/img/logo-2.png">
					</span>
                <!-- <span class="login100-form-title  p-t-27">
                    Forgot Your Password?
                </span> -->








                <div class="wrap-input100 validate-input" data-validate="Enter username">
                    <input class="input100" type="text" name="email" placeholder="Emailinizi daxil edin">
                    <span class="focus-input100" data-placeholder="&#xf207;"></span>
                </div>

                <p id ="error">
                    ${requestScope.get("incorrectEmail")}
                </p>


                <div class="container-login100-form-btn">
                    <button type="submit" class="login100-form-btn">
                        Gonder
                    </button>
                </div>
                <div class="text-center p-t-27">
                    <a class="txt1" href="login.jsp">
                        Daxil ol
                    </a>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- start js include path -->
<script src="./source/dark/assets/plugins/jquery/jquery.min.js"></script>
<!-- bootstrap -->
<script src="./source/dark/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="./source/dark/assets/js/pages/extra-pages/pages.js"></script>
<!-- end js include path -->
</body>


<!-- Mirrored from radixtouch.in/templates/admin/smart/source/dark/forgot_password.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 12 Feb 2019 22:40:30 GMT -->
</html>
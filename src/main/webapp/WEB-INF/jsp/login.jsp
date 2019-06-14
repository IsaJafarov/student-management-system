<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta name="description" content="Responsive Admin Template" />
    <meta name="author" content="RedstarHospital" />
    <title>Log in</title>
    <!-- google font -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all" rel="stylesheet" type="text/css" />
    <!-- icons -->
    <link href="../assets/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../assets/plugins/iconic/css/material-design-iconic-font.min.css">
    <!-- bootstrap -->
    <link href="../assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- style -->
    <link rel="stylesheet" href="../assets/css/pages/extra_pages.css">
    <!-- favicon -->
    <link rel="shortcut icon" href="http://radixtouch.in/templates/admin/smart/source/assets/img/favicon.ico" />
</head>
<body>



    <div class="limiter">
        <div class="container-login100 page-background">
            <div class="wrap-login100">
                <form action="/login/submit" method="post" class="login100-form validate-form">
					<span class="login100-form-logo">
						<img alt="" src="../assets/img/logo-2.png">
					</span>
                    <span class="login100-form-title p-b-34 p-t-27">
						Log in
					</span>
                    <%--Username--%>
                    <div class="wrap-input100 validate-input" data-validate="Enter username">
                        <input class="input100" type="text" name="username" placeholder="Username">
                        <span class="focus-input100" data-placeholder="&#xf207;"></span>
                    </div>
                    <%--Password--%>
                    <div class="wrap-input100 validate-input" data-validate="Enter password">
                        <input class="input100" type="password" name="password" placeholder="Password">
                        <span class="focus-input100" data-placeholder="&#xf191;"></span>
                    </div>
                    <%--Error message--%>
                    <c:if test="${isFailed==true}" >
                        <p style="color: red; text-align: center;"> Authentication error occurred </p>
                    </c:if>
                    <%--Remember me--%>
                    <div class="contact100-form-checkbox">
                        <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                        <label class="label-checkbox100" for="ckb1">
                            Remember me
                        </label>
                    </div>
                    <%--csrf--%>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    <%--Button--%>
                    <div class="container-login100-form-btn">
                        <button class="login100-form-btn">
                            Login
                        </button>
                    </div>
                    <%--Forget password?--%>
                    <div class="text-center p-t-30">
                        <a class="txt1" href="forgot_password.html">
                            Forgot Password?
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- start js include path -->
    <script src="../assets/plugins/jquery/jquery.min.js"></script>
    <!-- bootstrap -->
    <script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/js/pages/extra-pages/pages.js"></script>
    <!-- end js include path -->

</body>
</html>

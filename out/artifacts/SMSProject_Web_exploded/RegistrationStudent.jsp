<%--
  Created by IntelliJ IDEA.
  User: elnurquluzade
  Date: 2019-02-16
  Time: 02:18
  To change this template use File | Settings | File Templates.

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration Student</title>
</head>
<body>


<form action="registrationstudent" method="post">

    Ad:<br>
  <input  type ="text" name="name"><br>
    Soyad:<br>
    <input type="text" name="surname"><br>
    Ata adı:<br>
    <input  type ="text" name="father_name"><br>
    Doğulduğu tarix:<br>
    <input type="datetime-local" name="birth_date"><br>
    Doğulduğu yer:<br>
    <input  type ="text" name="birth_place"><br>
    Ysayis yeri:<br>
    <input type="text" name="living_adress"><br>
    Sexsiyyet vesiqesinin nomresi:<br>
    <input  type ="text" name="id_card_number"><br>
    Sexsiyyet vesiqesinin pin kodu:<br>
    <input type="text" name="id_card_pin_code"><br>
    Daxil oldugu bal:<br>
    <input  type ="text" name="entry_score"><br>
    Daxil oldugu fakulte:<br>
    <input type="text" name="faculty"><br>
    Daxil oldugu ixtisas:<br>
    <input type="text" name="profession"><br>
    Bolme:<br>
    <input type="text" name="section"><br>
    <input type="submit" value="Qeydiyyat" >





</form>


</body>
</html>
--%>


<!DOCTYPE html>
<html lang="en">
<!-- BEGIN HEAD -->


<!-- Mirrored from radixtouch.in/templates/admin/smart/source/dark/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 12 Feb 2019 22:27:29 GMT -->
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta content="width=device-width, initial-scale=1" name="viewport" />
  <meta name="description" content="Responsive Admin Template" />
  <meta name="author" content="SmartUniversity" />
  <title>Baku State University</title>
  <!-- google font -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet" type="text/css" />
  <!-- icons -->
  <link href="./source/dark/fonts/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
  <link href="./source/dark/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="./source/dark/fonts/material-design-icons/material-icon.css" rel="stylesheet" type="text/css" />
  <!--bootstrap -->
  <link href="./source/dark/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
  <link href="./source/dark/assets/plugins/summernote/summernote.css" rel="stylesheet">
  <!-- Material Design Lite CSS -->
  <link rel="stylesheet" href="./source/dark/assets/plugins/material/material.min.css">
  <link rel="stylesheet" href="./source/dark/assets/css/material_style.css">
  <!-- inbox style -->
  <link href="./source/dark/assets/css/pages/inbox.min.css" rel="stylesheet" type="text/css" />
  <!-- Theme Styles -->
  <link href="./source/dark/assets/css/theme/dark/theme_style.css" rel="stylesheet" id="rt_style_components" type="text/css" />
  <link href="./source/dark/assets/css/plugins.min.css" rel="stylesheet" type="text/css" />
  <link href="./source/dark/assets/css/theme/dark/style.css" rel="stylesheet" type="text/css" />
  <link href="./source/dark/assets/css/responsive.css" rel="stylesheet" type="text/css" />
  <link href="./source/dark/assets/css/theme/dark/theme-color.css" rel="stylesheet" type="text/css" />
  <!-- favicon -->
  <link rel="shortcut icon" href="http://radixtouch.in/templates/admin/smart/source/assets/img/favicon.ico" />
</head>
<!-- END HEAD -->

<body class="page-header-fixed sidemenu-closed-hidelogo page-content-white page-md header-dark dark-sidebar-color logo-dark dark-theme">
<div class="page-wrapper">
  <!-- start header -->
  <div class="page-header navbar navbar-fixed-top">
    <div class="page-header-inner ">
      <!-- logo start -->
      <div class="page-logo">
        <a href="index.html">
          <span class="logo-icon material-icons fa-rotate-45">school</span>
          <span class="logo-default">BDU</span> </a>
      </div>
      <!-- logo end -->
      <ul class="nav navbar-nav navbar-left in">
        <li><a href="#" class="menu-toggler sidebar-toggler"><i class="icon-menu"></i></a></li>
      </ul>
      <form class="search-form-opened" action="#" method="GET">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Search..." name="query">
          <span class="input-group-btn">
							<a href="javascript:;" class="btn submit">
								<i class="icon-magnifier"></i>
							</a>
						</span>
        </div>
      </form>
      <!-- start mobile menu -->
      <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
        <span></span>
      </a>
      <!-- end mobile menu -->
      <!-- start header menu -->
      <div class="top-menu">
        <ul class="nav navbar-nav pull-right">
          <li><a href="javascript:;" class="fullscreen-btn"><i class="fa fa-arrows-alt"></i></a></li>
          <!-- start language menu -->
          <li class="dropdown language-switch">
            <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> <img src="./source/dark/assets/img/flags/gb.png"
                                                                                          class="position-left" alt=""> English <span class="fa fa-angle-down"></span>
            </a>
            <ul class="dropdown-menu">
              <li>
                <a class="deutsch"><img src="./source/dark/assets/img/flags/de.png" alt=""> Deutsch</a>
              </li>
              <li>
                <a class="ukrainian"><img src="./source/dark/assets/img/flags/ua.png" alt=""> Українська</a>
              </li>
              <li>
                <a class="english"><img src="./source/dark/assets/img/flags/gb.png" alt=""> English</a>
              </li>
              <li>
                <a class="espana"><img src="./source/dark/assets/img/flags/es.png" alt=""> España</a>
              </li>
              <li>
                <a class="russian"><img src="./source/dark/assets/img/flags/ru.png" alt=""> Русский</a>
              </li>
            </ul>
          </li>
          <!-- end language menu -->
          <!-- start notification dropdown -->
          <li class="dropdown dropdown-extended dropdown-notification" id="header_notification_bar">
            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
              <i class="fa fa-bell-o"></i>
              <span class="badge headerBadgeColor1"> 6 </span>
            </a>
            <ul class="dropdown-menu">
              <li class="external">
                <h3><span class="bold">Notifications</span></h3>
                <span class="notification-label purple-bgcolor">New 6</span>
              </li>
              <li>
                <ul class="dropdown-menu-list small-slimscroll-style" data-handle-color="#637283">
                  <li>
                    <a href="javascript:;">
                      <span class="time">just now</span>
                      <span class="details">
													<span class="notification-icon circle deepPink-bgcolor"><i class="fa fa-check"></i></span>
													Congratulations!. </span>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <span class="time">3 mins</span>
                      <span class="details">
													<span class="notification-icon circle purple-bgcolor"><i class="fa fa-user o"></i></span>
													<b>John Micle </b>is now following you. </span>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <span class="time">7 mins</span>
                      <span class="details">
													<span class="notification-icon circle blue-bgcolor"><i class="fa fa-comments-o"></i></span>
													<b>Sneha Jogi </b>sent you a message. </span>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <span class="time">12 mins</span>
                      <span class="details">
													<span class="notification-icon circle pink"><i class="fa fa-heart"></i></span>
													<b>Ravi Patel </b>like your photo. </span>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <span class="time">15 mins</span>
                      <span class="details">
													<span class="notification-icon circle yellow"><i class="fa fa-warning"></i></span> Warning! </span>
                    </a>
                  </li>
                  <li>
                    <a href="javascript:;">
                      <span class="time">10 hrs</span>
                      <span class="details">
													<span class="notification-icon circle red"><i class="fa fa-times"></i></span> Application error. </span>
                    </a>
                  </li>
                </ul>
                <div class="dropdown-menu-footer">
                  <a href="javascript:void(0)"> All notifications </a>
                </div>
              </li>
            </ul>
          </li>
          <!-- end notification dropdown -->
          <!-- start message dropdown -->
          <li class="dropdown dropdown-extended dropdown-inbox" id="header_inbox_bar">
            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
              <i class="fa fa-envelope-o"></i>
              <span class="badge headerBadgeColor2"> 2 </span>
            </a>
            <ul class="dropdown-menu">
              <li class="external">
                <h3><span class="bold">Messages</span></h3>
                <span class="notification-label cyan-bgcolor">New 2</span>
              </li>
              <li>
                <ul class="dropdown-menu-list small-slimscroll-style" data-handle-color="#637283">
                  <li>
                    <a href="#">
												<span class="photo">
													<img src="./source/dark/assets/img/prof/prof2.jpg" class="img-circle" alt=""> </span>
                      <span class="subject">
													<span class="from"> Sarah Smith </span>
													<span class="time">Just Now </span>
												</span>
                      <span class="message"> Jatin I found you on LinkedIn... </span>
                    </a>
                  </li>
                  <li>
                    <a href="#">
												<span class="photo">
													<img src="./source/dark/assets/img/prof/prof3.jpg" class="img-circle" alt=""> </span>
                      <span class="subject">
													<span class="from"> John Deo </span>
													<span class="time">16 mins </span>
												</span>
                      <span class="message"> Fwd: Important Notice Regarding Your Domain Name... </span>
                    </a>
                  </li>
                  <li>
                    <a href="#">
												<span class="photo">
													<img src="./source/dark/assets/img/prof/prof1.jpg" class="img-circle" alt=""> </span>
                      <span class="subject">
													<span class="from"> Rajesh </span>
													<span class="time">2 hrs </span>
												</span>
                      <span class="message"> pls take a print of attachments. </span>
                    </a>
                  </li>
                  <li>
                    <a href="#">
												<span class="photo">
													<img src="./source/dark/assets/img/prof/prof8.jpg" class="img-circle" alt=""> </span>
                      <span class="subject">
													<span class="from"> Lina Smith </span>
													<span class="time">40 mins </span>
												</span>
                      <span class="message"> Apply for Ortho Surgeon </span>
                    </a>
                  </li>
                  <li>
                    <a href="#">
												<span class="photo">
													<img src="./source/dark/assets/img/prof/prof5.jpg" class="img-circle" alt=""> </span>
                      <span class="subject">
													<span class="from"> Jacob Ryan </span>
													<span class="time">46 mins </span>
												</span>
                      <span class="message"> Request for leave application. </span>
                    </a>
                  </li>
                </ul>
                <div class="dropdown-menu-footer">
                  <a href="#"> All Messages </a>
                </div>
              </li>
            </ul>
          </li>
          <!-- end message dropdown -->
          <!-- start manage user dropdown -->
          <li class="dropdown dropdown-user">
            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
               <img alt="" class="img-circle " src="./source/dark/assets/img/dp.jpg" />
              <span class="username username-hide-on-mobile"> Aygun </span>
              <i class="fa fa-angle-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-menu-default">
              <li>
                <a href="user_profile.html">
                  <i class="icon-user"></i> Profile </a>
              </li>
              <li>
                <a href="#">
                  <i class="icon-settings"></i> Settings
                </a>
              </li>
              <li>
                <a href="#">
                  <i class="icon-directions"></i> Help
                </a>
              </li>
              <li class="divider"> </li>
              <li>
                <a href="lock_screen.html">
                  <i class="icon-lock"></i> Lock
                </a>
              </li>
              <li>
                <a href="login.html">
                  <i class="icon-logout"></i> Log Out </a>
              </li>
            </ul>
          </li>
          <!-- end manage user dropdown -->
          <li class="dropdown dropdown-quick-sidebar-toggler">
            <a id="headerSettingButton" class="mdl-button mdl-js-button mdl-button--icon pull-right" data-upgraded=",MaterialButton">
              <i class="material-icons">more_vert</i>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <!-- end header -->
  <!-- start color quick setting -->
  <div class="quick-setting-main">
    <button class="control-sidebar-btn btn" data-toggle="control-sidebar"><i class="fa fa-cog fa-spin"></i></button>
    <div class="quick-setting display-none">
      <ul id="themecolors">
        <li>
          <p class="selector-title">Main Layouts</p>
        </li>
        <li class="complete">
          <div class="theme-color layout-theme">
            <a href="http://radixtouch.in/templates/admin/smart/source/light/index.html" data-theme="light"><span class="head"></span><span class="cont"></span></a>
            <a href="#" data-theme="dark"><span class="head"></span><span class="cont"></span></a>
          </div>
        </li>
        <li>
          <p class="selector-title">Sidebar Color</p>
        </li>
        <li class="complete">
          <div class="theme-color sidebar-theme">
            <a href="#" data-theme="white"><span class="head"></span><span class="cont"></span></a>
            <a href="#" data-theme="dark"><span class="head"></span><span class="cont"></span></a>
            <a href="#" data-theme="blue"><span class="head"></span><span class="cont"></span></a>
            <a href="#" data-theme="indigo"><span class="head"></span><span class="cont"></span></a>
            <a href="#" data-theme="cyan"><span class="head"></span><span class="cont"></span></a>
            <a href="#" data-theme="green"><span class="head"></span><span class="cont"></span></a>
            <a href="#" data-theme="red"><span class="head"></span><span class="cont"></span></a>
          </div>
        </li>
        <li>
          <p class="selector-title">Header Brand color</p>
        </li>
        <li class="theme-option">
          <div class="theme-color logo-theme">
            <a href="#" data-theme="logo-white"><span class="head"></span><span class="cont"></span></a>
            <a href="#" data-theme="logo-dark"><span class="head"></span><span class="cont"></span></a>
            <a href="#" data-theme="logo-blue"><span class="head"></span><span class="cont"></span></a>
            <a href="#" data-theme="logo-indigo"><span class="head"></span><span class="cont"></span></a>
            <a href="#" data-theme="logo-cyan"><span class="head"></span><span class="cont"></span></a>
            <a href="#" data-theme="logo-green"><span class="head"></span><span class="cont"></span></a>
            <a href="#" data-theme="logo-red"><span class="head"></span><span class="cont"></span></a>
          </div>
        </li>
        <li>
          <p class="selector-title">Header color</p>
        </li>
        <li class="theme-option">
          <div class="theme-color header-theme">
            <a href="#" data-theme="header-white"><span class="head"></span><span class="cont"></span></a>
            <a href="#" data-theme="header-dark"><span class="head"></span><span class="cont"></span></a>
            <a href="#" data-theme="header-blue"><span class="head"></span><span class="cont"></span></a>
            <a href="#" data-theme="header-indigo"><span class="head"></span><span class="cont"></span></a>
            <a href="#" data-theme="header-cyan"><span class="head"></span><span class="cont"></span></a>
            <a href="#" data-theme="header-green"><span class="head"></span><span class="cont"></span></a>
            <a href="#" data-theme="header-red"><span class="head"></span><span class="cont"></span></a>
          </div>
        </li>
      </ul>
    </div>
  </div>
  <!-- end color quick setting -->
  <!-- start page container -->
  <div class="page-container">
    <!-- start sidebar menu -->
    <div class="sidebar-container">
      <div class="sidemenu-container navbar-collapse collapse fixed-menu">
        <div id="remove-scroll" class="left-sidemenu">
          <ul class="sidemenu  page-header-fixed slimscroll-style" data-keep-expanded="false" data-auto-scroll="true"
              data-slide-speed="200" style="padding-top: 20px">
            <li class="sidebar-toggler-wrapper hide">
              <div class="sidebar-toggler">
                <span></span>
              </div>
            </li>
            <li class="sidebar-user-panel">
              <div class="user-panel">
                <div class="pull-left image">
                   <img src=".source/assets/img/dp.jpg" class="img-circle user-img-circle" alt="User Image" />
                </div>
                <div class="pull-left info">
                  <p> Aygün Məmmədli</p>
                  <a href="#"><i class="fa fa-circle user-online"></i><span class="txtOnline"> Tutor</span></a>
                </div>
              </div>
            </li>
            <!-- <li class="nav-item start active open">
                <a href="#" class="nav-link nav-toggle">
                    <i class="material-icons">dashboard</i>
                    <span class="title">Dashboard</span>
                    <span class="selected"></span>
                    <span class="arrow open"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item active">
                        <a href="index.html" class="nav-link ">
                            <span class="title">Dashboard 1</span>
                            <span class="selected"></span>
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a href="dashboard2.html" class="nav-link ">
                            <span class="title">Dashboard 2</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="dashboard3.html" class="nav-link ">
                            <span class="title">Dashboard 3</span>
                        </a>
                    </li>
                </ul>
            </li> -->
            <li class="nav-item">
              <a href="event.html" class="nav-link nav-toggle"> <i class="material-icons">event</i>
                <span class="title">Event Management</span>
              </a>
            </li>
            <!-- <li class="nav-item">
                <a href="#" class="nav-link nav-toggle"> <i class="material-icons">person</i>
                    <span class="title">Professors</span> <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item">
                        <a href="all_professors.html" class="nav-link "> <span class="title">All Professors</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="add_professor.html" class="nav-link "> <span class="title">Add Professor</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="add_professor_bootstrap.html" class="nav-link "> <span class="title">Add Professor Bootstrap</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="edit_professor.html" class="nav-link "> <span class="title">Edit Professor</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="professor_profile.html" class="nav-link "> <span class="title">About Professor</span>
                        </a>
                    </li>
                </ul>
            </li> -->
            <li class="nav-item active open">
              <a href="all_students.jsp" class="nav-link nav-toggle"><i class="material-icons">group</i>
                <span class="title">Tələbələr</span><span class="arrow"></span></a>
              <ul class="sub-menu">
                <li class="nav-item">
                  <a href="all_students.jsp" class="nav-link "> <span class="title">Bütün tələbələr </span>
                  </a>
                </li>
                <li class="nav-item active open">
                  <a href="add_student.jsp" class="nav-link "> <span class="title">Tələbə əlavə et</span>
                  </a>
                </li>
                <!-- <li class="nav-item">
                    <a href="add_student_bootstrap.html" class="nav-link "> <span class="title">Add Student Bootstrap</span>
                    </a>
                </li> -->
                <li class="nav-item">
                  <a href="edit_student.html" class="nav-link "> <span class="title">Tənzimlə</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="student_profile.html" class="nav-link "> <span class="title">Tələbə haqqında</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link nav-toggle"> <i class="material-icons">school</i>
                <span class="title">Qruplar</span> <span class="arrow"></span>
                <span class="label label-rouded label-menu label-success">new</span>
              </a>
              <ul class="sub-menu">
                <li class="nav-item">
                  <a href="all_courses.html" class="nav-link "> <span class="title">Bütün qruplar</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="add_course.html" class="nav-link "> <span class="title">Qrup yarad</span>
                  </a>
                </li>

                <!-- <li class="nav-item">
                    <a href="edit_course.html" class="nav-link "> <span class="title">Edit Course</span>
                    </a>
                </li> -->
                <!-- <li class="nav-item">
                    <a href="course_details.html" class="nav-link "> <span class="title">About Course</span>
                    </a>
                </li> -->
              </ul>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link nav-toggle"> <i class="material-icons">local_library</i>
                <span class="title">Library</span> <span class="arrow"></span>
              </a>
              <ul class="sub-menu">
                <li class="nav-item">
                  <a href="all_assets.html" class="nav-link "> <span class="title">All Library Assets</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="add_library.html" class="nav-link "> <span class="title">Add Library Asset</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="add_library_bootstrap.html" class="nav-link "> <span class="title">Add Asset Bootstrap</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="edit_library.html" class="nav-link "> <span class="title">Edit Asset</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link nav-toggle"> <i class="material-icons">business</i>
                <span class="title">Departments</span> <span class="arrow"></span>
              </a>
              <ul class="sub-menu">
                <li class="nav-item">
                  <a href="all_department.html" class="nav-link "> <span class="title">All Departments</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="add_department.html" class="nav-link "> <span class="title">Add Department</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="add_department_bootstrap.html" class="nav-link "> <span class="title">Add Department Bootstrap</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="edit_department.html" class="nav-link "> <span class="title">Edit Department</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link nav-toggle"> <i class="material-icons">face</i>
                <span class="title">Staff</span> <span class="arrow"></span>
              </a>
              <ul class="sub-menu">
                <li class="nav-item">
                  <a href="all_staffs.html" class="nav-link "> <span class="title">All Staff</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="add_staff.html" class="nav-link "> <span class="title">Add Staff</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="add_staff_bootstrap.html" class="nav-link "> <span class="title">Add Staff Bootstrap</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="edit_staff.html" class="nav-link "> <span class="title">Edit Staff</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="staff_profile.html" class="nav-link "> <span class="title">Staff Profile</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link nav-toggle"> <i class="material-icons">airline_seat_individual_suite</i>
                <span class="title">Holiday</span> <span class="arrow"></span>
              </a>
              <ul class="sub-menu">
                <li class="nav-item">
                  <a href="all_holidays.html" class="nav-link "> <span class="title">All Holiday</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="add_holiday.html" class="nav-link "> <span class="title">Add Holiday</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="add_holiday_bootstrap.html" class="nav-link "> <span class="title">Add Holiday Bootstrap</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="edit_holiday.html" class="nav-link "> <span class="title">Edit Holiday</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="holiday_calendar.html" class="nav-link "> <span class="title">Holiday Calendar</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link nav-toggle">
                <i class="material-icons">email</i>
                <span class="title">Email</span>
                <span class="arrow"></span>
                <span class="label label-rouded label-menu label-danger">new</span>
              </a>
              <ul class="sub-menu">
                <li class="nav-item">
                  <a href="email_inbox.html" class="nav-link ">
                    <span class="title">Inbox</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="email_view.html" class="nav-link ">
                    <span class="title">View Mail</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="email_compose.html" class="nav-link ">
                    <span class="title">Compose Mail</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link nav-toggle"> <i class="material-icons">monetization_on</i>
                <span class="title">Fees</span> <span class="arrow"></span>
              </a>
              <ul class="sub-menu">
                <li class="nav-item">
                  <a href="fees_collection.html" class="nav-link "> <span class="title">Fees Collection</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="add_fees.html" class="nav-link "> <span class="title">Add Fees </span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="add_fees_bootstrap.html" class="nav-link "> <span class="title">Add Fees Bootstrap</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="fees_receipt.html" class="nav-link "> <span class="title">Fee Receipt</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="widget.html" class="nav-link nav-toggle"> <i class="material-icons">widgets</i>
                <span class="title">Widget</span>
              </a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link nav-toggle">
                <i class="material-icons">dvr</i>
                <span class="title">UI Elements</span>
                <span class="label label-rouded label-menu label-warning">new</span>
                <span class="arrow"></span>
              </a>
              <ul class="sub-menu">
                <li class="nav-item">
                  <a href="ui_buttons.html" class="nav-link ">
                    <span class="title">Buttons</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="ui_tabs_accordions_navs.html" class="nav-link ">
                    <span class="title">Tabs &amp; Accordions</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="ui_typography.html" class="nav-link ">
                    <span class="title">Typography</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="notification.html" class="nav-link ">
                    <span class="title">Notification</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="ui_icons.html" class="nav-link ">
                    <span class="title">Icons</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="ui_panels.html" class="nav-link ">
                    <span class="title">Panels</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="ui_grid.html" class="nav-link ">
                    <span class="title">Grids</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="calendar.html" class="nav-link ">
                    <span class="title">Calender</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="ui_tree.html" class="nav-link ">
                    <span class="title">Tree View</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="ui_carousel.html" class="nav-link ">
                    <span class="title">Carousel</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link nav-toggle">
                <i class="material-icons">store</i>
                <span class="title">Material Elements</span>
                <span class="arrow"></span>
              </a>
              <ul class="sub-menu">
                <li class="nav-item">
                  <a href="material_button.html" class="nav-link ">
                    <span class="title">Buttons</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="material_tab.html" class="nav-link ">
                    <span class="title">Tabs</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="material_chips.html" class="nav-link ">
                    <span class="title">Chips</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="material_grid.html" class="nav-link ">
                    <span class="title">Grid</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="material_icons.html" class="nav-link ">
                    <span class="title">Icon</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="material_form.html" class="nav-link ">
                    <span class="title">Form</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="material_datepicker.html" class="nav-link ">
                    <span class="title">DatePicker</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="material_select.html" class="nav-link ">
                    <span class="title">Select Item</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="material_loading.html" class="nav-link ">
                    <span class="title">Loading</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="material_menu.html" class="nav-link ">
                    <span class="title">Menu</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="material_slider.html" class="nav-link ">
                    <span class="title">Slider</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="material_tables.html" class="nav-link ">
                    <span class="title">Tables</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="material_toggle.html" class="nav-link ">
                    <span class="title">Toggle</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="material_badges.html" class="nav-link ">
                    <span class="title">Badges</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="javascript:;" class="nav-link nav-toggle">
                <i class="material-icons">subtitles</i>
                <span class="title">Forms </span>
                <span class="arrow"></span>
              </a>
              <ul class="sub-menu">
                <li class="nav-item">
                  <a href="layouts_form.html" class="nav-link ">
                    <span class="title">Form Layout</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="advance_form.html" class="nav-link ">
                    <span class="title">Advance Component</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="wizard.html" class="nav-link ">
                    <span class="title">Form Wizard</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="validation_form.html" class="nav-link ">
                    <span class="title">Form Validation</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="editable_form.html" class="nav-link ">
                    <span class="title">Editor</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="javascript:;" class="nav-link nav-toggle">
                <i class="material-icons">list</i>
                <span class="title">Data Tables</span>
                <span class="arrow"></span>
              </a>
              <ul class="sub-menu">
                <li class="nav-item">
                  <a href="basic_table.html" class="nav-link ">
                    <span class="title">Basic Tables</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="advanced_table.html" class="nav-link ">
                    <span class="title">Advance Tables</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="export_table.html" class="nav-link ">
                    <span class="title">Export Tables</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="child_row_table.html" class="nav-link ">
                    <span class="title">Child Row Tables</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="group_table.html" class="nav-link ">
                    <span class="title">Grouping</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="tableData.html" class="nav-link ">
                    <span class="title">Tables With Sourced Data</span>
                  </a>
                </li>
              </ul>
            </li>

            <li class="nav-item">
              <a href="javascript:;" class="nav-link nav-toggle">
                <i class="material-icons">timeline</i>
                <span class="title">Charts</span>
                <span class="arrow"></span>
              </a>
              <ul class="sub-menu">
                <li class="nav-item">
                  <a href="charts_echarts.html" class="nav-link ">
                    <span class="title">eCharts</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="charts_morris.html" class="nav-link ">
                    <span class="title">Morris Charts</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="charts_chartjs.html" class="nav-link ">
                    <span class="title">Chartjs</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="javascript:;" class="nav-link nav-toggle">
                <i class="material-icons">map</i>
                <span class="title">Maps</span>
                <span class="arrow"></span>
              </a>
              <ul class="sub-menu">
                <li class="nav-item">
                  <a href="google_maps.html" class="nav-link ">
                    <span class="title">Google Maps</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="vector_maps.html" class="nav-link ">
                    <span class="title">Vector Maps</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="javascript:;" class="nav-link nav-toggle"> <i class="material-icons">description</i>
                <span class="title">Extra pages</span>
                <span class="arrow"></span>
              </a>
              <ul class="sub-menu">
                <li class="nav-item  ">
                  <a href="login.html" class="nav-link "> <span class="title">Login</span>
                  </a>
                </li>
                <li class="nav-item  ">
                  <a href="sign_up.html" class="nav-link "> <span class="title">Sign Up</span>
                  </a>
                </li>
                <li class="nav-item  ">
                  <a href="forgot_password.html" class="nav-link "> <span class="title">Forgot Password</span>
                  </a>
                </li>
                <li class="nav-item"><a href="user_profile.html" class="nav-link "><span class="title">Profile</span>
                </a>
                </li>
                <li class="nav-item">
                  <a href="contact.html" class="nav-link "> <span class="title">Contact Us</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="lock_screen.html" class="nav-link "> <span class="title">Lock Screen</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="page-404.html" class="nav-link "> <span class="title">404 Page</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="page-500.html" class="nav-link "> <span class="title">500 Page</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="blank_page.html" class="nav-link "> <span class="title">Blank Page</span>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item">
              <a href="javascript:;" class="nav-link nav-toggle">
                <i class="material-icons">slideshow</i>
                <span class="title">Multi Level Menu</span>
                <span class="arrow "></span>
              </a>
              <ul class="sub-menu">
                <li class="nav-item">
                  <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="fa fa-university"></i> Item 1
                    <span class="arrow"></span>
                  </a>
                  <ul class="sub-menu">
                    <li class="nav-item">
                      <a href="javascript:;" class="nav-link nav-toggle">
                        <i class="fa fa-bell-o"></i> Arrow Toggle
                        <span class="arrow "></span>
                      </a>
                      <ul class="sub-menu">
                        <li class="nav-item">
                          <a href="javascript:;" class="nav-link">
                            <i class="fa fa-calculator"></i> Sample Link 1</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link">
                            <i class="fa fa-clone"></i> Sample Link 2</a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link">
                            <i class="fa fa-cogs"></i> Sample Link 3</a>
                        </li>
                      </ul>
                    </li>
                    <li class="nav-item">
                      <a href="#" class="nav-link">
                        <i class="fa fa-file-pdf-o"></i> Sample Link 1</a>
                    </li>
                    <li class="nav-item">
                      <a href="#" class="nav-link">
                        <i class="fa fa-rss"></i> Sample Link 2</a>
                    </li>
                    <li class="nav-item">
                      <a href="#" class="nav-link">
                        <i class="fa fa-hdd-o"></i> Sample Link 3</a>
                    </li>
                  </ul>
                </li>
                <li class="nav-item">
                  <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="fa fa-gavel"></i> Arrow Toggle
                    <span class="arrow"></span>
                  </a>
                  <ul class="sub-menu">
                    <li class="nav-item">
                      <a href="#" class="nav-link">
                        <i class="fa fa-paper-plane"></i> Sample Link 1</a>
                    </li>
                    <li class="nav-item">
                      <a href="#" class="nav-link">
                        <i class="fa fa-power-off"></i> Sample Link 1</a>
                    </li>
                    <li class="nav-item">
                      <a href="#" class="nav-link">
                        <i class="fa fa-recycle"></i> Sample Link 1
                      </a>
                    </li>
                  </ul>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="fa fa-volume-up"></i> Item 3 </a>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!-- end sidebar menu -->
    <!-- start page content -->

    <div class="page-content-wrapper">
      <div class="page-content">
        <div class="page-bar">
          <div class="page-title-breadcrumb">
            <div class=" pull-left">
              <div class="page-title">Telebe elave et</div>
            </div>
            <!-- <ol class="breadcrumb page-breadcrumb pull-right">
                <li><i class="fa fa-home"></i>&nbsp;<a class="parent-item" href="index.html">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
                </li>
                <li><a class="parent-item" href="#">Student</a>&nbsp;<i class="fa fa-angle-right"></i>
                </li>
                <li class="active">Add Student</li>
            </ol> -->
          </div>
        </div>

        <div class="row">
          <div class="col-sm-12">
            <div class="card-box">


              <div class="card-head">
                <header>Baza Melumatlar</header>

                <!-- <button id="panel-button" class="mdl-button mdl-js-button mdl-button--icon pull-right" data-upgraded=",MaterialButton">
                    <i class="material-icons">more_vert</i>
                </button>
                <ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect" data-mdl-for="panel-button">
                    <li class="mdl-menu__item"><i class="material-icons">assistant_photo</i>Action</li>
                    <li class="mdl-menu__item"><i class="material-icons">print</i>Another action</li>
                    <li class="mdl-menu__item"><i class="material-icons">favorite</i>Something else here</li>
                </ul> -->
              </div>





                <form action="registrationstudent" method="post">

                  <div class="col-lg-6 p-t-20">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                      <input class="mdl-textfield__input" type="text" name="txtFirstName">
                      <label class="mdl-textfield__label">Ad</label>
                    </div>
                  </div>


                  <div class="col-lg-6 p-t-20">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                      <input class="mdl-textfield__input" type="text" name="txtLasttName">
                      <label class="mdl-textfield__label">Soyad</label>
                    </div>
                  </div>



                  <div class="col-lg-6 p-t-20">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                      <input class="mdl-textfield__input" type="text" name="txtRollNo1">
                      <label class="mdl-textfield__label">Ata adi</label>
                    </div>
                  </div>



                  <div class="col-lg-6 p-t-20">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                      <input class="mdl-textfield__input" type="text" name="txtRollNo2">
                      <label class="mdl-textfield__label">Dogum yeri</label>
                    </div>
                  </div>



                  <div class="col-lg-6 p-t-20">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                      <input class="mdl-textfield__input" type="datetime-local" name="txtRollNo3">
                      <label class="mdl-textfield__label">Dogum tarixi</label>
                    </div>
                  </div>



                  <div class="col-lg-6 p-t-20">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                      <input class="mdl-textfield__input" type="text" name="txtRollNo4">
                      <label class="mdl-textfield__label">Seriya</label>
                    </div>
                  </div>



                  <div class="col-lg-6 p-t-20">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                      <input class="mdl-textfield__input" type="text" name="txtRollNo5">
                      <label class="mdl-textfield__label">Fin kod</label>
                    </div>
                  </div>



                  <div class="col-lg-6 p-t-20">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                      <input class="mdl-textfield__input" type="text" name="txtFaculty">
                      <label class="mdl-textfield__label">Fakulte</label>

                    </div>
                  </div>


                  <div class="col-lg-6 p-t-20">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label getmdl-select getmdl-select__fix-height txt-full-width">
                      <input class="mdl-textfield__input" type="text" name = "list2" id="list2" value="" readonly tabIndex="-1">
                      <label for ="list2" class="pull-right margin-0">
                        <i class="mdl-icon-toggle__label material-icons">keyboard_arrow_down</i>
                      </label>
                      <label for="list2" class="mdl-textfield__label">Ixtisas</label>
                      <ul data-mdl-for="list2" class="mdl-menu mdl-menu--bottom-left mdl-js-menu">
                        <li class="mdl-menu__item" data-val="DE">Fizik</li>
                        <li class="mdl-menu__item" data-val="BY">Fizika muellimliyi</li>
                      </ul>
                    </div>
                  </div>



                  <div class="col-lg-6 p-t-20">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                      <input class="mdl-textfield__input" type="number" name="txtnumber">
                      <label class="mdl-textfield__label">Giris bali</label>
                    </div>



                    <div class="col-lg-6 p-t-20">
                      <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label getmdl-select getmdl-select__fix-height txt-full-width">
                        <input class="mdl-textfield__input" type="text" name = "list3" id="list3" value="" readonly tabIndex="-1">
                        <label for="list3" class="pull-right margin-0">
                          <i class="mdl-icon-toggle__label material-icons">keyboard_arrow_down</i>
                        </label>
                        <label for="list3" class="mdl-textfield__label">Bolme</label>
                        <ul data-mdl-for="list3" class="mdl-menu mdl-menu--bottom-left mdl-js-menu">
                          <li class="mdl-menu__item" data-val="DE">Azerbaycan</li>
                          <li class="mdl-menu__item" data-val="BY">Ingilis</li>
                        </ul>
                      </div>
                    </div>



                    <div class="col-lg-6 p-t-20">
                      <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label getmdl-select getmdl-select__fix-height txt-full-width">
                        <input class="mdl-textfield__input" type="text"  name = "sample2" id="sample2" value="" readonly tabIndex="-1">
                        <label for="sample2" class="pull-right margin-0">
                          <i class="mdl-icon-toggle__label material-icons">keyboard_arrow_down</i>
                        </label>
                        <label for="sample2" class="mdl-textfield__label">Cinsiyyet</label>
                        <ul data-mdl-for="sample2" class="mdl-menu mdl-menu--bottom-left mdl-js-menu">
                          <li class="mdl-menu__item" data-val="DE">Kisi</li>
                          <li class="mdl-menu__item" data-val="BY">Qadin</li>
                        </ul>
                      </div>
                    </div>



                    <div class="col-lg-6 p-t-20">
                      <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                        <input class="mdl-textfield__input" type="text" name ="number1"  id ="text5">
                        <label class="mdl-textfield__label" for="text5">Elaqe nomresi 1</label>
                      </div>
                    </div>


                    <div class="col-lg-6 p-t-20">
                      <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                        <input class="mdl-textfield__input" type="text" name ="number2"  id ="text6">
                        <label class="mdl-textfield__label" for="text6">Elaqe nomresi 2</label>
                      </div>
                    </div>



                    <!-- <div class="col-lg-6 p-t-20">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                            <input class="mdl-textfield__input" type="text" id="txtParentName">
                            <label class="mdl-textfield__label">Parents Name</label>
                        </div>
                    </div>
                    <div class="col-lg-6 p-t-20">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                            <input class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="txtPNo">
                            <label class="mdl-textfield__label" for="txtPNo">Parents Mobile Number</label>
                            <span class="mdl-textfield__error">Number required!</span>
                        </div>
                    </div> -->
                    <!-- <div class="col-lg-6 p-t-20">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                            <input class="mdl-textfield__input" type="text" id="dateOfBirth">
                            <label class="mdl-textfield__label">Birth Date</label>
                        </div>
                    </div> -->
                    <!-- <div class="col-lg-6 p-t-20">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                            <input class="mdl-textfield__input" type="text" id="txtBloodGroup">
                            <label class="mdl-textfield__label">Blood Group</label>
                        </div>
                    </div> -->

                    <div class="col-lg-12 p-t-20">
                      <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label txt-full-width">
                        <input class="mdl-textfield__input" type="text" name ="text7">
                        <label class="mdl-textfield__label">Addres</label>
                      </div>
                    </div>



                    <!-- <div class="col-lg-12 p-t-20">
                        <label class="control-label col-md-3">Foto
                        </label>
                        <div class="col-md-12">
                            <div id="id_dropzone" class="dropzone"></div>
                        </div>
                    </div> -->



                    <div class="col-lg-12 p-t-20 text-center">
                      <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect m-b-10 m-r-20 btn-pink">Elave et</button>
                      <button type="button" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect m-b-10 btn-default">Legv et</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- end page content -->
  <!-- start chat sidebar -->
  <div class="chat-sidebar-container" data-close-on-body-click="false">
    <div class="chat-sidebar">
      <ul class="nav nav-tabs">
        <li class="nav-item">
          <a href="#quick_sidebar_tab_1" class="nav-link active tab-icon" data-toggle="tab"> <i class="material-icons">chat</i>Chat
            <span class="badge badge-danger">4</span>
          </a>
        </li>
        <li class="nav-item">
          <a href="#quick_sidebar_tab_3" class="nav-link tab-icon" data-toggle="tab"> <i class="material-icons">settings</i>
            Settings
          </a>
        </li>
      </ul>
      <div class="tab-content">
        <!-- Start User Chat -->
        <div class="tab-pane active chat-sidebar-chat in active show" role="tabpanel" id="quick_sidebar_tab_1">
          <div class="chat-sidebar-list">
            <div class="chat-sidebar-chat-users slimscroll-style" data-rail-color="#ddd" data-wrapper-class="chat-sidebar-list">
              <div class="chat-header">
                <h5 class="list-heading">Online</h5>
              </div>
              <ul class="media-list list-items">
                <li class="media"><img class="media-object" src="./source/dark/assets/img/prof/prof3.jpg" width="35" height="35" alt="...">
                  <i class="online dot"></i>
                  <div class="media-body">
                    <h5 class="media-heading">John Deo</h5>
                    <div class="media-heading-sub">Spine Surgeon</div>
                  </div>
                </li>
                <li class="media">
                  <div class="media-status">
                    <span class="badge badge-success">5</span>
                  </div> <img class="media-object" src="./source/dark/assets/img/prof/prof1.jpg" width="35" height="35" alt="...">
                  <i class="busy dot"></i>
                  <div class="media-body">
                    <h5 class="media-heading">Rajesh</h5>
                    <div class="media-heading-sub">Director</div>
                  </div>
                </li>
                <li class="media"><img class="media-object" src="./source/dark/assets/img/prof/prof5.jpg" width="35" height="35" alt="...">
                  <i class="away dot"></i>
                  <div class="media-body">
                    <h5 class="media-heading">Jacob Ryan</h5>
                    <div class="media-heading-sub">Ortho Surgeon</div>
                  </div>
                </li>
                <li class="media">
                  <div class="media-status">
                    <span class="badge badge-danger">8</span>
                  </div> <img class="media-object" src="./source/dark/assets/img/prof/prof4.jpg" width="35" height="35" alt="...">
                  <i class="online dot"></i>
                  <div class="media-body">
                    <h5 class="media-heading">Kehn Anderson</h5>
                    <div class="media-heading-sub">CEO</div>
                  </div>
                </li>
                <li class="media"><img class="media-object" src="./source/dark/assets/img/prof/prof2.jpg" width="35" height="35" alt="...">
                  <i class="busy dot"></i>
                  <div class="media-body">
                    <h5 class="media-heading">Sarah Smith</h5>
                    <div class="media-heading-sub">Anaesthetics</div>
                  </div>
                </li>
                <li class="media"><img class="media-object" src="./source/dark/assets/img/prof/prof7.jpg" width="35" height="35" alt="...">
                  <i class="online dot"></i>
                  <div class="media-body">
                    <h5 class="media-heading">Vlad Cardella</h5>
                    <div class="media-heading-sub">Cardiologist</div>
                  </div>
                </li>
              </ul>
              <div class="chat-header">
                <h5 class="list-heading">Offline</h5>
              </div>
              <ul class="media-list list-items">
                <li class="media">
                  <div class="media-status">
                    <span class="badge badge-warning">4</span>
                  </div> <img class="media-object" src="./source/dark/assets/img/prof/prof6.jpg" width="35" height="35" alt="...">
                  <i class="offline dot"></i>
                  <div class="media-body">
                    <h5 class="media-heading">Jennifer Maklen</h5>
                    <div class="media-heading-sub">Nurse</div>
                    <div class="media-heading-small">Last seen 01:20 AM</div>
                  </div>
                </li>
                <li class="media"><img class="media-object" src="./source/dark/assets/img/prof/prof8.jpg" width="35" height="35" alt="...">
                  <i class="offline dot"></i>
                  <div class="media-body">
                    <h5 class="media-heading">Lina Smith</h5>
                    <div class="media-heading-sub">Ortho Surgeon</div>
                    <div class="media-heading-small">Last seen 11:14 PM</div>
                  </div>
                </li>
                <li class="media">
                  <div class="media-status">
                    <span class="badge badge-success">9</span>
                  </div> <img class="media-object" src="./source/dark/assets/img/prof/prof9.jpg" width="35" height="35" alt="...">
                  <i class="offline dot"></i>
                  <div class="media-body">
                    <h5 class="media-heading">Jeff Adam</h5>
                    <div class="media-heading-sub">Compounder</div>
                    <div class="media-heading-small">Last seen 3:31 PM</div>
                  </div>
                </li>
                <li class="media"><img class="media-object" src="./source/dark/assets/img/prof/prof10.jpg" width="35" height="35" alt="...">
                  <i class="offline dot"></i>
                  <div class="media-body">
                    <h5 class="media-heading">Anjelina Cardella</h5>
                    <div class="media-heading-sub">Physiotherapist</div>
                    <div class="media-heading-small">Last seen 7:45 PM</div>
                  </div>
                </li>
              </ul>
            </div>
          </div>
          <div class="chat-sidebar-item">
            <div class="chat-sidebar-chat-user">
              <div class="page-quick-sidemenu">
                <a href="javascript:;" class="chat-sidebar-back-to-list">
                  <i class="fa fa-angle-double-left"></i>Back
                </a>
              </div>
              <div class="chat-sidebar-chat-user-messages">
                <div class="post out">
                  <img class="avatar" alt="" src="source/dark/assets/img/dp.jpg" />
                  <div class="message">
                    <span class="arrow"></span> <a href="javascript:;" class="name">Kiran Patel</a> <span class="datetime">9:10</span>
                    <span class="body-out"> could you send me menu icons ? </span>
                  </div>
                </div>
                <div class="post in">
                  <img class="avatar" alt="" src="./source/dark/assets/img/prof/prof5.jpg" />
                  <div class="message">
                    <span class="arrow"></span> <a href="javascript:;" class="name">Jacob Ryan</a> <span class="datetime">9:10</span>
                    <span class="body"> please give me 10 minutes. </span>
                  </div>
                </div>
                <div class="post out">
                  <img class="avatar" alt="" src="./source/dark/assets/img/dp.jpg" />
                  <div class="message">
                    <span class="arrow"></span> <a href="javascript:;" class="name">Kiran Patel</a> <span class="datetime">9:11</span>
                    <span class="body-out"> ok fine :) </span>
                  </div>
                </div>
                <div class="post in">
                  <img class="avatar" alt="" src="./source/dark/assets/img/prof/prof5.jpg" />
                  <div class="message">
                    <span class="arrow"></span> <a href="javascript:;" class="name">Jacob Ryan</a> <span class="datetime">9:22</span>
                    <span class="body">Sorry for
													the delay. i sent mail to you. let me know if it is ok or not.</span>
                  </div>
                </div>
                <div class="post out">
                  <img class="avatar" alt="" src="./source/dark/assets/img/dp.jpg" />
                  <div class="message">
                    <span class="arrow"></span> <a href="javascript:;" class="name">Kiran Patel</a> <span class="datetime">9:26</span>
                    <span class="body-out"> it is perfect! :) </span>
                  </div>
                </div>
                <div class="post out">
                  <img class="avatar" alt="" src="./source/dark/assets/img/dp.jpg" />
                  <div class="message">
                    <span class="arrow"></span> <a href="javascript:;" class="name">Kiran Patel</a> <span class="datetime">9:26</span>
                    <span class="body-out"> Great! Thanks. </span>
                  </div>
                </div>
                <div class="post in">
                  <img class="avatar" alt="" src="./source/dark/assets/img/prof/prof5.jpg" />
                  <div class="message">
                    <span class="arrow"></span> <a href="javascript:;" class="name">Jacob Ryan</a> <span class="datetime">9:27</span>
                    <span class="body"> it is my pleasure :) </span>
                  </div>
                </div>
              </div>
              <div class="chat-sidebar-chat-user-form">
                <div class="input-group">
                  <input type="text" class="form-control" placeholder="Type a message here...">
                  <div class="input-group-btn">
                    <button type="button" class="btn deepPink-bgcolor">
                      <i class="fa fa-arrow-right"></i>
                    </button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- End User Chat -->
        <!-- Start Setting Panel -->
        <div class="tab-pane chat-sidebar-settings" role="tabpanel" id="quick_sidebar_tab_3">
          <div class="chat-sidebar-settings-list slimscroll-style">
            <div class="chat-header">
              <h5 class="list-heading">Layout Settings</h5>
            </div>
            <div class="chatpane inner-content ">
              <div class="settings-list">
                <div class="setting-item">
                  <div class="setting-text">Sidebar Position</div>
                  <div class="setting-set">
                    <select class="sidebar-pos-option form-control input-inline input-sm input-small ">
                      <option value="left" selected="selected">Left</option>
                      <option value="right">Right</option>
                    </select>
                  </div>
                </div>
                <div class="setting-item">
                  <div class="setting-text">Header</div>
                  <div class="setting-set">
                    <select class="page-header-option form-control input-inline input-sm input-small ">
                      <option value="fixed" selected="selected">Fixed</option>
                      <option value="default">Default</option>
                    </select>
                  </div>
                </div>
                <div class="setting-item">
                  <div class="setting-text">Sidebar Menu </div>
                  <div class="setting-set">
                    <select class="sidebar-menu-option form-control input-inline input-sm input-small ">
                      <option value="accordion" selected="selected">Accordion</option>
                      <option value="hover">Hover</option>
                    </select>
                  </div>
                </div>
                <div class="setting-item">
                  <div class="setting-text">Footer</div>
                  <div class="setting-set">
                    <select class="page-footer-option form-control input-inline input-sm input-small ">
                      <option value="fixed">Fixed</option>
                      <option value="default" selected="selected">Default</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="chat-header">
                <h5 class="list-heading">Account Settings</h5>
              </div>
              <div class="settings-list">
                <div class="setting-item">
                  <div class="setting-text">Notifications</div>
                  <div class="setting-set">
                    <div class="switch">
                      <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-1">
                        <input type="checkbox" id="switch-1" class="mdl-switch__input" checked>
                      </label>
                    </div>
                  </div>
                </div>
                <div class="setting-item">
                  <div class="setting-text">Show Online</div>
                  <div class="setting-set">
                    <div class="switch">
                      <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-7">
                        <input type="checkbox" id="switch-7" class="mdl-switch__input" checked>
                      </label>
                    </div>
                  </div>
                </div>
                <div class="setting-item">
                  <div class="setting-text">Status</div>
                  <div class="setting-set">
                    <div class="switch">
                      <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-2">
                        <input type="checkbox" id="switch-2" class="mdl-switch__input" checked>
                      </label>
                    </div>
                  </div>
                </div>
                <div class="setting-item">
                  <div class="setting-text">2 Steps Verification</div>
                  <div class="setting-set">
                    <div class="switch">
                      <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-3">
                        <input type="checkbox" id="switch-3" class="mdl-switch__input" checked>
                      </label>
                    </div>
                  </div>
                </div>
              </div>
              <div class="chat-header">
                <h5 class="list-heading">General Settings</h5>
              </div>
              <div class="settings-list">
                <div class="setting-item">
                  <div class="setting-text">Location</div>
                  <div class="setting-set">
                    <div class="switch">
                      <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-4">
                        <input type="checkbox" id="switch-4" class="mdl-switch__input" checked>
                      </label>
                    </div>
                  </div>
                </div>
                <div class="setting-item">
                  <div class="setting-text">Save Histry</div>
                  <div class="setting-set">
                    <div class="switch">
                      <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-5">
                        <input type="checkbox" id="switch-5" class="mdl-switch__input" checked>
                      </label>
                    </div>
                  </div>
                </div>
                <div class="setting-item">
                  <div class="setting-text">Auto Updates</div>
                  <div class="setting-set">
                    <div class="switch">
                      <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-6">
                        <input type="checkbox" id="switch-6" class="mdl-switch__input" checked>
                      </label>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- end chat sidebar -->
</div>
<!-- end page container -->
<!-- start footer -->
<!-- <div class="page-footer">
    <div class="page-footer-inner"> 2017 &copy; Smart University Theme By
        <a href="mailto:redstartheme@gmail.com" target="_top" class="makerCss">Redstar Theme</a>
    </div>
    <div class="scroll-to-top">
        <i class="icon-arrow-up"></i>
    </div>
</div> -->
<!-- end footer -->
</div>
<!-- start js include path -->
<script src="./source/dark/assets/plugins/jquery/jquery.min.js"></script>
<script src="./source/dark/assets/plugins/popper/popper.js"></script>
<script src="./source/dark/assets/plugins/jquery-blockui/jquery.blockui.min.js"></script>
<script src="./source/dark/assets/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>
<!-- bootstrap -->
<script src="./source/dark/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- Common js-->
<script src="./source/dark/assets/js/app.js"></script>
<script src="./source/dark/assets/js/layout.js"></script>
<script src="./source/dark/assets/js/theme-color.js"></script>
<!-- Material -->
<script src="./source/dark/assets/plugins/material/material.min.js"></script>
<script src="./source/dark/assets/js/pages/material-select/getmdl-select.js"></script>
<script src="./source/dark/assets/plugins/material-datetimepicker/moment-with-locales.min.js"></script>
<script src="./source/dark/assets/plugins/material-datetimepicker/bootstrap-material-datetimepicker.js"></script>
<script src="./source/dark/assets/plugins/material-datetimepicker/datetimepicker.js"></script>
<!-- dropzone -->
<script src="./source/dark/assets/plugins/dropzone/dropzone.js"></script>
<script src="./source/dark/assets/plugins/dropzone/dropzone-call.js"></script>
<!-- end js include path -->
</body>


<!-- Mirrored from radixtouch.in/templates/admin/smart/source/dark/add_student.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 12 Feb 2019 22:33:57 GMT -->
</html>
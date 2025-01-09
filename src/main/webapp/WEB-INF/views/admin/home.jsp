<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@include file="/WEB-INF/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Gentelella Alela! | </title>

    <!-- Bootstrap -->
    <link href="/assetsadmin/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/assetsadmin/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/assetsadmin/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="/assetsadmin/vendors/iCheck/skins/flat/green.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/assetsadmin/build/css/custom.min.css" rel="stylesheet">
    <style type="text/css">
        .pagination {
            display: inline-block;
        }

        .pagination a {
            color: black;
            float: left;
            padding: 8px 16px;
            text-decoration: none;
            transition: background-color .3s;
        }

        .pagination a.active {
            background-color: #4CAF50;
            color: white;
            border-radius: 5px;
        }

        .pagination a:hover:not(.active) {
            background-color: #ddd;
            border-radius: 5px;
        }
    </style>
</head>
<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Gentelella Alela!</span></a>
                </div>

                <div class="clearfix"></div>

                <!-- menu profile quick info -->
                <div class="profile clearfix">
                    <div class="profile_pic">
                        <img src="/assetsadmin/production/images/img.jpg" alt="/assetsadmin." class="img-circle profile_img">
                    </div>
                    <div class="profile_info">
                        <span>Welcome, ${user.email}</span>
                    </div>
                </div>
                <!-- /menu profile quick info -->

                <br />

                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">
                        <h3>General</h3>
                        <ul class="nav side-menu">
                            <li><a><i class="fa fa-edit"></i> Quản lý user <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="/admin?key=&page=1">Tìm kiếm user</a></li>
                                    <li><a href="/admin/edit">Thêm user</a></li>
                                </ul>
                            </li>

                            <li><a><i class="fa fa-edit"></i>Quản lý post<span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="/admin/postReport">Danh sách post bị report</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-table"></i> Thống kê <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="/admin/statistic">Thống kê</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>

                </div>
                <!-- /sidebar menu -->

                <!-- /menu footer buttons -->
                <div class="sidebar-footer hidden-small">
                    <a data-toggle="tooltip" data-placement="top" title="Settings">
                        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                        <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Lock">
                        <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                    </a>
                    <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                    </a>
                </div>
                <!-- /menu footer buttons -->
            </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <div class="nav toggle">
                    <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                </div>
                <nav class="nav navbar-nav">
                    <ul class=" navbar-right">
                        <li class="nav-item dropdown open" style="padding-left: 15px;">
                            <a href="javascript:;" class="user-profile dropdown-toggle" aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">
                                <img src="/assetsadmin/production/images/img.jpg" alt="">${user.email}
                            </a>
                            <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item"  href="javascript:;"> Profile</a>
                                <a class="dropdown-item"  href="javascript:;">
                                    <span class="badge bg-red pull-right">50%</span>
                                    <span>Settings</span>
                                </a>
                                <a class="dropdown-item"  href="javascript:;">Help</a>
                                <a class="dropdown-item"  href="/logout"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                            </div>
                        </li>

                        <li role="presentation" class="nav-item dropdown open">
                            <a href="javascript:;" class="dropdown-toggle info-number" id="navbarDropdown1" data-toggle="dropdown" aria-expanded="false">
                                <i class="fa fa-envelope-o"></i>
                                <span class="badge bg-green">6</span>
                            </a>
                            <ul class="dropdown-menu list-unstyled msg_list" role="menu" aria-labelledby="navbarDropdown1">
                                <li class="nav-item">
                                    <a class="dropdown-item">
                                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                                        <span>
                            <span>John Smith</span>
                            <span class="time">3 mins ago</span>
                          </span>
                                        <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where/assetsadmin.
                          </span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="dropdown-item">
                                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                                        <span>
                            <span>John Smith</span>
                            <span class="time">3 mins ago</span>
                          </span>
                                        <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where/assetsadmin.
                          </span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="dropdown-item">
                                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                                        <span>
                            <span>John Smith</span>
                            <span class="time">3 mins ago</span>
                          </span>
                                        <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where/assetsadmin.
                          </span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="dropdown-item">
                                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                                        <span>
                            <span></span>
                            <span class="time">3 mins ago</span>
                          </span>
                                        <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where/assetsadmin.
                          </span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <div class="text-center">
                                        <a class="dropdown-item">
                                            <strong>See All Alerts</strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <div class="page-title">
                    <div class="title_left">
                        <h3>Tìm kiếm user</h3>
                    </div>

                    <div class="title_right">
                        <div class="col-md-5 col-sm-5   form-group pull-right top_search">
                            <form action="/admin?page=1" method="get">
                                <div class="input-group">
                                    <input type="text" class="form-control" name="key" value="" placeholder="Search for/.">
                                    <span class="input-group-btn">
	                      <button class="btn btn-default" type="submit">Go!</button>
	                    </span>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="clearfix"></div>

                <div class="row" style="display: block;">

                    <div class="clearfix"></div>

                    <div class="col-md-12 col-sm-12  ">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Danh sách user</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item" href="#">Settings 1</a>
                                            <a class="dropdown-item" href="#">Settings 2</a>
                                        </div>
                                    </li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>

                            <div class="x_content">

                                <div class="table-responsive">
                                    <table class="table table-striped jambo_table bulk_action">
                                        <thead>
                                        <tr class="headings">
                                            <th>
                                                <input type="checkbox" id="check-all" class="flat">
                                            </th>
                                            <th class="column-title">Id </th>
                                            <th class="column-title">Email</th>
                                            <th class="column-title">First Name</th>
                                            <th class="column-title">Last Name</th>
                                            <th class="column-title">Phone Number</th>
                                            <th class="column-title">Date of Birth</th>
                                            <th class="column-title">Role</th>
                                            <th class="column-title">Enable</th>
                                            <th class="column-title no-link last"><span class="nobr">Action</span>
                                            </th>
                                            <th class="bulk-actions" colspan="7">
                                                <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                                            </th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        <c:forEach items="${listUser.content}" var="item">
                                            <tr class="even pointer">
                                                <td class="a-center ">
                                                    <input type="checkbox" class="flat">
                                                </td>
                                                <td class=" "> ${item.id}</td>
                                                <td class=" "> ${item.email}</td>
                                                <td class=" "> ${item.firstName}</td>
                                                <td class=" "> ${item.lastName}</td>
                                                <td class=" "> ${item.phoneNumber}</td>
                                                <td class=" "> ${item.dateOfBirth}</td>
                                                <td class=" "> ${item.role}</td>
                                                <td class=" last"><input type="checkbox" class="flat" ${item.enable==true?"":"checked"}>
                                                <td class=" last"><a href="/admin/edit?id=${item.id}">Edit</a>
                                                </td>
                                            </tr>
                                        </c:forEach>


                                        </tbody>
                                    </table>
                                    <div class="ln_solid col-md-12" style="height: 100%;">
                                        <div class="form-group col-md-12" style="text-align: right">
                                            <div class="pagination">
                                                <c:if test="${listUser.number>0}">
                                                    <a href="/admin?key=${param.key}&page=${listUser.number}">&laquo;</a>
                                                </c:if>
                                                <c:forEach var="i" begin="1" end="${listUser.totalPages}">
                                                    <a style="color:#0b2e13" class="${i==page?'active':''}" href="/admin?key=${param.key}&page=${i}">${i}</a>
                                                </c:forEach>
                                                <c:if test="${listUser.number<listUser.totalPages-1}">
                                                    <a href="/admin?key=${param.key}&page=${listUser.number+2}">&raquo;</a>
                                                </c:if>
                                            </div>
                                        </div>
<%--                                        <div class="form-group col-md-12">--%>
<%--                                            <form action="" id="fxoa">--%>
<%--                                                <div style="width: 100%;text-align: right;">--%>
<%--                                                    <button type='submit' class="btn btn-danger">Xóa loại sách</button>--%>
<%--                                                </div>--%>
<%--                                            </form>--%>
<%--                                        </div>--%>
                                    </div>

                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
            <div class="pull-right">
                Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
            </div>
            <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
    </div>
</div>

<!-- jQuery -->
<script src="/assetsadmin/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="/assetsadmin/vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<!-- FastClick -->
<script src="/assetsadmin/vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="/assetsadmin/vendors/nprogress/nprogress.js"></script>
<!-- iCheck -->
<script src="/assetsadmin/vendors/iCheck/icheck.min.js"></script>

<!-- Custom Theme Scripts -->
<script src="/assetsadmin/build/js/custom.min.js"></script>
</body>
</html>
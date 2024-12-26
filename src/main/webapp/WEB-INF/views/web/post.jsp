<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en" class="no-js">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/png" href="/assets/images/logo-16x16.png"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Argon - Social Network</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Major+Mono+Display" rel="stylesheet">
    <link href="/assets/css/boxicons.min.css" rel="stylesheet">

    <!-- Styles -->
    <link href="/assets/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="/assets/css/style.css" rel="stylesheet">
    <link href="/assets/css/components.css" rel="stylesheet">
    <link href="/assets/css/media.css" rel="stylesheet">
    <link href="/assets/css/chat.css" rel="stylesheet">
    <link href="https://vjs.zencdn.net/7.4.1/video-js.css" rel="stylesheet">
    <script src="https://vjs.zencdn.net/ie8/1.1.2/videojs-ie8.min.js" type="text/javascript"></script>
    <script src="/assets/js/load.js" type="text/javascript"></script>
    <style>
        .likeIcon{
            color: #007bff;
        }
    </style>
</head>

<body class="newsfeed">
<div class="container-fluid" id="wrapper">
    <div class="row newsfeed-size">
        <div class="col-md-12 newsfeed-right-side">
            <nav id="navbar-main" class="navbar navbar-expand-lg shadow-sm sticky-top">
                <div class="w-100 justify-content-md-center">
                    <ul class="nav navbar-nav enable-mobile px-2">
                        <li class="nav-item">
                            <button type="button" class="btn nav-link p-0"><img
                                    src="/assets/images/icons/theme/post-image.png" class="f-nav-icon"
                                    alt="Quick make post"></button>
                        </li>
                        <li class="nav-item w-100 py-2">
                            <form action="" method="" class="d-inline form-inline w-100 px-4">
                                <div class="input-group">
                                    <input name="" type="text" class="form-control search-input"
                                           placeholder="Search for people, companies, events and more..."
                                           aria-label="Search" aria-describedby="search-addon">
                                    <div class="">
                                        <button class="btn search-button" type="submit"><i class='bx bx-search'></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </li>
                        <li class="nav-item">
                            <a href="messages.html" class="nav-link nav-icon nav-links message-drop drop-w-tooltip"
                               data-placement="bottom" data-title="Messages">
                                <img src="/assets/images/icons/navbar/message.png" class="message-dropdown f-nav-icon"
                                     alt="navbar icon">
                            </a>
                        </li>
                    </ul>
                    <ul class="navbar-nav mr-5 flex-row" id="main_menu">
                        <a class="navbar-brand nav-item mr-lg-5" href="index.html"><img
                                src="/assets/images/logo-64x64.png" width="40" height="40" class="mr-3" alt="Logo"></a>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <form action="/searchuser" method="get" class="w-30 mx-2 my-auto d-inline form-inline mr-5 search-form">
                            <div class="input-group" aria-haspopup="true" aria-expanded="false"
                                 id="searchDropdown">
                                <input type="text" name="key" data-toggle="dropdown" class="form-control search-input w-75 dropdown"
                                       placeholder="Search for people, companies, events and more..."
                                       aria-label="Search" aria-describedby="search-addon">
                                <div class="input-group-append">
                                    <button class="btn search-button" type="submit"><i class='bx bx-search'></i>
                                    </button>
                                </div>
                            </div>
                            <ul class="dropdown-menu notify-drop nav-drop shadow-sm" aria-labelledby="searchDropdown">
                                <div class="notify-drop-title">
                                    <div class="row">
                                        <div class="col-md-6 col-sm-6 col-xs-6 fs-8">Search Results <span
                                                class="badge badge-pill badge-primary ml-2">29</span></div>
                                    </div>
                                </div>
                                <!-- end notify title -->
                                <!-- notify content -->
                                <div class="drop-content">
                                    <h6 class="dropdown-header">Peoples</h6>
                                    <li class="dropdown-item">
                                        <div class="col-md-2 col-sm-2 col-xs-2">
                                            <div class="notify-img">
                                                <img src="${user.linkImgAvatar}" alt="Search result">
                                            </div>
                                        </div>
                                        <div class="col-md-10 col-sm-10 col-xs-10">
                                            <a href="#" class="notification-user">Susan P. Jarvis</a>
                                            <a href="#"
                                               class="btn btn-quick-link join-group-btn border text-right float-right">
                                                Add Friend
                                            </a>
                                            <p class="time">6 Mutual friends</p>
                                        </div>
                                    </li>
                                    <li class="dropdown-item">
                                        <div class="col-md-2 col-sm-2 col-xs-2">
                                            <div class="notify-img">
                                                <img src="/assets/images/users/user-5.png" alt="Search result">
                                            </div>
                                        </div>
                                        <div class="col-md-10 col-sm-10 col-xs-10">
                                            <a href="#" class="notification-user">Ruth D. Greene</a>
                                            <a href="#"
                                               class="btn btn-quick-link join-group-btn border text-right float-right">
                                                Add Friend
                                            </a>
                                        </div>
                                    </li>
                                    <h6 class="dropdown-header">Groups</h6>
                                    <li class="dropdown-item">
                                        <div class="col-md-2 col-sm-2 col-xs-2">
                                            <div class="notify-img">
                                                <img src="/assets/images/groups/group-2.jpg" alt="Search result">
                                            </div>
                                        </div>
                                        <div class="col-md-10 col-sm-10 col-xs-10">
                                            <a href="#" class="notification-user">Tourism</a>
                                            <a href="#"
                                               class="btn btn-quick-link join-group-btn border text-right float-right">
                                                Join
                                            </a>
                                            <p class="time">2.5k Members 35+ post a week</p>
                                        </div>
                                    </li>
                                    <li class="dropdown-item">
                                        <div class="col-md-2 col-sm-2 col-xs-2">
                                            <div class="notify-img">
                                                <img src="/assets/images/groups/group-1.png" alt="Search result">
                                            </div>
                                        </div>
                                        <div class="col-md-10 col-sm-10 col-xs-10">
                                            <a href="#" class="notification-user">Argon Social Network <img
                                                    src="/assets/images/theme/verify.png" width="10px" class="verify"
                                                    alt="Group verified"></a>
                                            <a href="#"
                                               class="btn btn-quick-link join-group-btn border text-right float-right">
                                                Join
                                            </a>
                                            <p class="time">10k Members 20+ post a week</p>
                                        </div>
                                    </li>
                                </div>
                                <div class="notify-drop-footer text-center">
                                    <a href="#">See More</a>
                                </div>
                            </ul>
                        </form>
                        <li class="nav-item s-nav dropdown d-mobile">
                            <a href="#" class="nav-link nav-icon nav-links drop-w-tooltip" data-toggle="dropdown"
                               data-placement="bottom" data-title="Create" role="button" aria-haspopup="true"
                               aria-expanded="false">
                                <img src="/assets/images/icons/navbar/create.png" alt="navbar icon">
                            </a>
                            <div class="dropdown-menu dropdown-menu-right nav-dropdown-menu">
                                <a href="#" class="dropdown-item" aria-describedby="createGroup">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <i class='bx bx-group post-option-icon'></i>
                                        </div>
                                        <div class="col-md-10">
                                            <span class="fs-9">Group</span>
                                            <small id="createGroup" class="form-text text-muted">Find people with shared
                                                interests</small>
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="dropdown-item" aria-describedby="createEvent">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <i class='bx bx-calendar post-option-icon'></i>
                                        </div>
                                        <div class="col-md-10">
                                            <span class="fs-9">Event</span>
                                            <small id="createEvent" class="form-text text-muted">bring people together
                                                with a public or private event</small>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                        <li class="nav-item s-nav dropdown message-drop-li">
                            <a href="#" class="nav-link nav-links message-drop drop-w-tooltip" data-toggle="dropdown"
                               data-placement="bottom" data-title="Messages" role="button" aria-haspopup="true"
                               aria-expanded="false">
                                <img src="/assets/images/icons/navbar/message.png" class="message-dropdown"
                                     alt="navbar icon"> <span class="badge badge-pill badge-primary">1</span>
                            </a>
                            <ul class="dropdown-menu notify-drop dropdown-menu-right nav-drop shadow-sm">
                                <div class="notify-drop-title">
                                    <div class="row">
                                        <div class="col-md-6 col-sm-6 col-xs-6 fs-8">Messages | <a href="#">Requests</a>
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-xs-6 text-right">
                                            <a href="#" class="notify-right-icon">
                                                Mark All as Read
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <!-- end notify title -->
                                <!-- notify content -->
                                <div class="drop-content">
                                    <li>
                                        <div class="col-md-2 col-sm-2 col-xs-2">
                                            <div class="notify-img">
                                                <img src="/assets/images/users/user-6.png" alt="notification user image">
                                            </div>
                                        </div>
                                        <div class="col-md-10 col-sm-10 col-xs-10">
                                            <a href="#" class="notification-user">Susan P. Jarvis</a>
                                            <a href="#" class="notify-right-icon">
                                                <i class='bx bx-radio-circle-marked'></i>
                                            </a>
                                            <p class="time">
                                                <i class='bx bx-check'></i> This party is going to have a DJ, food, and
                                                drinks.
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="col-md-2 col-sm-2 col-xs-2">
                                            <div class="notify-img">
                                                <img src="/assets/images/users/user-5.png" alt="notification user image">
                                            </div>
                                        </div>
                                        <div class="col-md-10 col-sm-10 col-xs-10">
                                            <a href="#" class="notification-user">Ruth D. Greene</a>
                                            <a href="#" class="notify-right-icon">
                                                <i class='bx bx-radio-circle-marked'></i>
                                            </a>
                                            <p class="time">
                                                Great, I’ll see you tomorrow!.
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="col-md-2 col-sm-2 col-xs-2">
                                            <div class="notify-img">
                                                <img src="/assets/images/users/user-7.png" alt="notification user image">
                                            </div>
                                        </div>
                                        <div class="col-md-10 col-sm-10 col-xs-10">
                                            <a href="#" class="notification-user">Kimberly R. Hatfield</a>
                                            <a href="#" class="notify-right-icon">
                                                <i class='bx bx-radio-circle-marked'></i>
                                            </a>
                                            <p class="time">
                                                yeah, I will be there.
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="col-md-2 col-sm-2 col-xs-2">
                                            <div class="notify-img">
                                                <img src="/assets/images/users/user-8.png" alt="notification user image">
                                            </div>
                                        </div>
                                        <div class="col-md-10 col-sm-10 col-xs-10">
                                            <a href="#" class="notification-user">Joe S. Feeney</a>
                                            <a href="#" class="notify-right-icon">
                                                <i class='bx bx-radio-circle-marked'></i>
                                            </a>
                                            <p class="time">
                                                I would really like to bring my friend Jake, if...
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="col-md-2 col-sm-2 col-xs-2">
                                            <div class="notify-img">
                                                <img src="/assets/images/users/user-9.png" alt="notification user image">
                                            </div>
                                        </div>
                                        <div class="col-md-10 col-sm-10 col-xs-10">
                                            <a href="#" class="notification-user">William S. Willmon</a>
                                            <a href="#" class="notify-right-icon">
                                                <i class='bx bx-radio-circle-marked'></i>
                                            </a>
                                            <p class="time">
                                                Sure, what can I help you with?
                                            </p>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="col-md-2 col-sm-2 col-xs-2">
                                            <div class="notify-img">
                                                <img src="/assets/images/users/user-10.png"
                                                     alt="notification user image">
                                            </div>
                                        </div>
                                        <div class="col-md-10 col-sm-10 col-xs-10">
                                            <a href="#" class="notification-user">Sean S. Smith</a>
                                            <a href="#" class="notify-right-icon">
                                                <i class='bx bx-radio-circle-marked'></i>
                                            </a>
                                            <p class="time">
                                                Which of those two is best?
                                            </p>
                                        </div>
                                    </li>
                                </div>
                                <div class="notify-drop-footer text-center">
                                    <a href="#">See More</a>
                                </div>
                            </ul>
                        </li>
                        <li class="nav-item s-nav dropdown notification">
                            <a href="#" class="nav-link nav-links rm-drop-mobile drop-w-tooltip" data-toggle="dropdown"
                               data-placement="bottom" data-title="Notifications" role="button" aria-haspopup="true"
                               aria-expanded="false">
                                <img src="/assets/images/icons/navbar/notification.png" class="notification-bell"
                                     alt="navbar icon"> <span class="badge badge-pill badge-primary">${notificationCnt}</span>
                            </a>
                            <ul class="dropdown-menu notify-drop dropdown-menu-right nav-drop shadow-sm">
                                <div class="notify-drop-title">
                                    <div class="row">
                                        <div class="col-md-6 col-sm-6 col-xs-6 fs-8">Notifications <span
                                                class="badge badge-pill badge-primary ml-2">${notificationCnt}</span></div>
                                        <div class="col-md-6 col-sm-6 col-xs-6 text-right">
                                            <a href="#" class="notify-right-icon">
                                                Mark All as Read
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <!-- end notify title -->
                                <!-- notify content -->
                                <div class="drop-content">
                                    <c:forEach items="${listNotification.content}" var="item">
                                        <li ${item.seen==0?'style="background-color:#f2f4f5;cursor:pointer"':'style="cursor:pointer"'} onclick="redir(`${item.link}`,${item.id})">
                                            <div class="col-md-2 col-sm-2 col-xs-2">
                                                <div class="notify-img">
                                                    <img src="${item.linkImgAvatar}"
                                                         alt="notification user image">
                                                </div>
                                            </div>
                                            <div class="col-md-10 col-sm-10 col-xs-10">
                                                <a href="#" class="notification-user">${item.firstName} ${item.lastName}</a> <span
                                                    class="notification-type">
                                                     <c:if test="${item.type==0}">đã theo dõi bạn</c:if>
                                                     <c:if test="${item.type==1}">đã bình luận vào bài viết của bạn </c:if>
                                                     <c:if test="${item.type==2}">đã thích bài viết của bạn</c:if>
                                                     </span>
                                                <div href="#" class="notify-right-icon">
                                                    <i class='bx bx-radio-circle-marked'></i>
                                                </div>
                                            </div>
                                        </li>
                                    </c:forEach>
                                </div>
                                <div class="notify-drop-footer text-center">
                                    <a href="#">See More</a>
                                </div>
                            </ul>
                        </li>
                        <li class="nav-item s-nav dropdown d-mobile">
                            <a href="#" class="nav-link nav-links nav-icon drop-w-tooltip" data-toggle="dropdown"
                               data-placement="bottom" data-title="Pages" role="button" aria-haspopup="true"
                               aria-expanded="false">
                                <img src="/assets/images/icons/navbar/flag.png" alt="navbar icon">
                            </a>
                            <div class="dropdown-menu dropdown-menu-right nav-drop">
                                <a class="dropdown-item" href="newsfeed-2.html">Newsfeed 2</a>
                                <a class="dropdown-item" href="sign-in.html">Sign in</a>
                                <a class="dropdown-item" href="sign-up.html">Sign up</a>
                            </div>
                        </li>
                        <li class="nav-item s-nav d-mobile">
                            <a href="marketplace.html" class="nav-link nav-links nav-icon drop-w-tooltip"
                               data-placement="bottom" data-title="Marketplace">
                                <img src="/assets/images/icons/navbar/market.png" alt="navbar icon">
                            </a>
                        </li>
                        <li class="nav-item s-nav">
                            <a href="/myprofile" class="nav-link nav-links">
                                <div class="menu-user-image">
                                    <img src="${user.linkImgAvatar}" class="menu-user-img ml-1"
                                         alt="Menu Image">
                                </div>
                            </a>
                        </li>
                        <li class="nav-item s-nav nav-icon dropdown">
                            <a href="settings.html" data-toggle="dropdown" data-placement="bottom" data-title="Settings"
                               class="nav-link settings-link rm-drop-mobile drop-w-tooltip" id="settings-dropdown"><img
                                    src="/assets/images/icons/navbar/settings.png" class="nav-settings"
                                    alt="navbar icon"></a>
                            <div class="dropdown-menu dropdown-menu-right settings-dropdown shadow-sm"
                                 aria-labelledby="settings-dropdown">
                                <a class="dropdown-item" href="#">
                                    <img src="/assets/images/icons/navbar/help.png" alt="Navbar icon"> Help Center</a>
                                <a class="dropdown-item d-flex align-items-center dark-mode"
                                   onClick="event.stopPropagation();" href="#">
                                    <img src="/assets/images/icons/navbar/moon.png" alt="Navbar icon"> Dark Mode
                                    <button type="button" class="btn btn-lg btn-toggle ml-auto" data-toggle="button"
                                            aria-pressed="false" autocomplete="off">
                                        <div class="handle"></div>
                                    </button>
                                </a>
                                <a class="dropdown-item" href="#">
                                    <img src="/assets/images/icons/navbar/gear-1.png" alt="Navbar icon"> Settings</a>
                                <a class="dropdown-item logout-btn" href="/logout">
                                    <img src="/assets/images/icons/navbar/logout.png" alt="Navbar icon"> Log Out</a>
                            </div>
                        </li>
                        <button type="button" class="btn nav-link" id="menu-toggle"><img
                                src="/assets/images/icons/theme/navs.png" alt="Navbar navs"></button>
                    </ul>

                </div>

            </nav>
            <div class="row newsfeed-right-side-content mt-3">
                <div class="col-md-3 newsfeed-left-side sticky-top shadow-sm" id="sidebar-wrapper">
                    <div class="card newsfeed-user-card h-100">
                        <ul class="list-group list-group-flush newsfeed-left-sidebar">
                            <li class="list-group-item">
                                <h6>Home</h6>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center sd-active">
                                <a href="index.html" class="sidebar-item"><img
                                        src="/assets/images/icons/left-sidebar/newsfeed.png" alt="newsfeed"> News
                                    Feed</a>
                                <a href="#" class="newsfeedListicon"><i class='bx bx-dots-horizontal-rounded'></i></a>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <a href="messages.html" class="sidebar-item"><img
                                        src="/assets/images/icons/left-sidebar/message.png" alt="message"> Messages</a>
                                <span class="badge badge-primary badge-pill">2</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <a href="groups.html" class="sidebar-item"><img
                                        src="/assets/images/icons/left-sidebar/group.png" alt="group"> Groups</a>
                                <span class="badge badge-primary badge-pill">17</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <a href="events.html" class="sidebar-item"><img
                                        src="/assets/images/icons/left-sidebar/event.png" alt="event"> Events</a>
                                <span class="badge badge-primary badge-pill">3</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center">
                                <a href="find-friends.html" class="sidebar-item"><img
                                        src="/assets/images/icons/left-sidebar/find-friends.png" alt="find-friends"> Find
                                    Friends</a>
                                <span class="badge badge-primary badge-pill"><i class='bx bx-chevron-right'></i></span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center newsLink">
                                <a href="https://github.com/ArtMin96/argon-social" target="_blank" class="sidebar-item"><img
                                        src="/assets/images/icons/left-sidebar/news.png" alt="find-friends"> News</a>
                                <span class="badge badge-primary badge-pill"><i class='bx bx-chevron-right'></i></span>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-6 second-section" id="page-content-wrapper">
                    <ul class="list-unstyled" style="margin-bottom: 0;">
                        <li class="media post-form w-shadow">
                        </li>
                    </ul>

                    <!-- Posts -->
                    <div class="posts-section mb-5" id="postContent">
<%--                        <div class="post border-bottom p-3 bg-white w-shadow">--%>
<%--                            <div class="media text-muted pt-3">--%>
<%--                                <img src="assets/images/users/user-1.jpg" alt="Online user"--%>
<%--                                     class="mr-3 post-user-image">--%>
<%--                                <div class="media-body pb-3 mb-0 small lh-125">--%>
<%--                                    <div class="d-flex justify-content-between align-items-center w-100">--%>
<%--                                        <a href="#" class="text-gray-dark post-user-name">John Michael</a>--%>
<%--                                        <div class="dropdown">--%>
<%--                                            <a href="#" class="post-more-settings" role="button" data-toggle="dropdown"--%>
<%--                                               id="postOptions" aria-haspopup="true" aria-expanded="false">--%>
<%--                                                <i class='bx bx-dots-horizontal-rounded'></i>--%>
<%--                                            </a>--%>
<%--                                            <div class="dropdown-menu dropdown-menu-right dropdown-menu-lg-left post-dropdown-menu">--%>
<%--                                                <a href="#" class="dropdown-item" aria-describedby="savePost">--%>
<%--                                                    <div class="row">--%>
<%--                                                        <div class="col-md-2">--%>
<%--                                                            <i class='bx bx-bookmark-plus post-option-icon'></i>--%>
<%--                                                        </div>--%>
<%--                                                        <div class="col-md-10">--%>
<%--                                                            <span class="fs-9">Save post</span>--%>
<%--                                                            <small id="savePost" class="form-text text-muted">Add this--%>
<%--                                                                to your saved items</small>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>
<%--                                                </a>--%>
<%--                                                <a href="#" class="dropdown-item" aria-describedby="hidePost">--%>
<%--                                                    <div class="row">--%>
<%--                                                        <div class="col-md-2">--%>
<%--                                                            <i class='bx bx-hide post-option-icon'></i>--%>
<%--                                                        </div>--%>
<%--                                                        <div class="col-md-10">--%>
<%--                                                            <span class="fs-9">Hide post</span>--%>
<%--                                                            <small id="hidePost" class="form-text text-muted">See fewer--%>
<%--                                                                posts like this</small>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>
<%--                                                </a>--%>
<%--                                                <a href="#" class="dropdown-item" aria-describedby="snoozePost">--%>
<%--                                                    <div class="row">--%>
<%--                                                        <div class="col-md-2">--%>
<%--                                                            <i class='bx bx-time post-option-icon'></i>--%>
<%--                                                        </div>--%>
<%--                                                        <div class="col-md-10">--%>
<%--                                                            <span class="fs-9">Snooze Lina for 30 days</span>--%>
<%--                                                            <small id="snoozePost" class="form-text text-muted">Temporarily--%>
<%--                                                                stop seeing posts</small>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>
<%--                                                </a>--%>
<%--                                                <a href="#" class="dropdown-item" aria-describedby="reportPost">--%>
<%--                                                    <div class="row">--%>
<%--                                                        <div class="col-md-2">--%>
<%--                                                            <i class='bx bx-block post-option-icon'></i>--%>
<%--                                                        </div>--%>
<%--                                                        <div class="col-md-10">--%>
<%--                                                            <span class="fs-9">Report</span>--%>
<%--                                                            <small id="reportPost" class="form-text text-muted">I'm--%>
<%--                                                                concerned about this post</small>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>
<%--                                                </a>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <span class="d-block">3 hours ago <i class='bx bx-globe ml-3'></i></span>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="mt-3">--%>
<%--                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis voluptatem veritatis--%>
<%--                                    harum, tenetur, quibusdam voluptatum, incidunt saepe minus maiores ea atque sequi--%>
<%--                                    illo veniam sint quaerat corporis totam et. Culpa?</p>--%>
<%--                            </div>--%>
<%--                            <div class="d-block mt-3">--%>
<%--                                <img src="https://scontent.fevn1-2.fna.fbcdn.net/v/t1.0-9/56161887_588993861570433_2896723195090436096_n.jpg?_nc_cat=103&_nc_eui2=AeFI0UuTq3uUF_TLEbnZwM-qSRtgOu0HE2JPwW6b4hIki73-2OWYhc7L1MPsYl9cYy-w122CCak-Fxj0TE1a-kjsd-KXzh5QsuvxbW_mg9qqtg&_nc_ht=scontent.fevn1-2.fna&oh=ea44bffa38f368f98f0553c5cef8e455&oe=5D050B05"--%>
<%--                                     class="post-content" alt="post image">--%>
<%--                            </div>--%>
<%--                            <div class="mb-3">--%>
<%--                                <!-- Reactions -->--%>
<%--                                <div class="argon-reaction">--%>
<%--                                        <span class="like-btn">--%>
<%--                                            <a href="#" class="post-card-buttons" id="reactions"><i--%>
<%--                                                    class='bx bxs-like mr-2'></i> 67</a>--%>
<%--                                            <ul class="reactions-box dropdown-shadow">--%>
<%--                                                <li class="reaction reaction-like" data-reaction="Like"></li>--%>
<%--                                                <li class="reaction reaction-love" data-reaction="Love"></li>--%>
<%--                                                <li class="reaction reaction-haha" data-reaction="HaHa"></li>--%>
<%--                                                <li class="reaction reaction-wow" data-reaction="Wow"></li>--%>
<%--                                                <li class="reaction reaction-sad" data-reaction="Sad"></li>--%>
<%--                                                <li class="reaction reaction-angry" data-reaction="Angry"></li>--%>
<%--                                            </ul>--%>
<%--                                        </span>--%>
<%--                                </div>--%>
<%--                                <a href="javascript:void(0)" class="post-card-buttons" id="show-comments"><i--%>
<%--                                        class='bx bx-message-rounded mr-2'></i> 5</a>--%>

<%--                            </div>--%>
<%--                            <div class="border-top pt-3 hide-comments" style="display: none;">--%>
<%--                                <div class="row bootstrap snippets">--%>
<%--                                    <div class="col-md-12">--%>
<%--                                        <div class="comment-wrapper">--%>
<%--                                            <div class="panel panel-info">--%>
<%--                                                <div class="panel-body">--%>
<%--                                                    <ul class="media-list comments-list">--%>
<%--                                                        <li class="media comment-form">--%>
<%--                                                            <a href="#" class="pull-left">--%>
<%--                                                                <img src="assets/images/users/user-4.jpg" alt=""--%>
<%--                                                                     class="img-circle">--%>
<%--                                                            </a>--%>
<%--                                                            <div class="media-body">--%>
<%--                                                                <form action="" method="" role="form">--%>
<%--                                                                    <div class="row">--%>
<%--                                                                        <div class="col-md-12">--%>
<%--                                                                            <div class="input-group">--%>
<%--                                                                                <input type="text"--%>
<%--                                                                                       class="form-control comment-input"--%>
<%--                                                                                       placeholder="Write a comment...">--%>
<%--                                                                                <input type="button" value="send"--%>
<%--                                                                                       class="btn-primary"--%>
<%--                                                                                       style="border-radius: 10px; margin-left: 20px;">--%>
<%--                                                                            </div>--%>
<%--                                                                        </div>--%>
<%--                                                                    </div>--%>
<%--                                                                </form>--%>
<%--                                                            </div>--%>
<%--                                                        </li>--%>
<%--                                                        <li class="media">--%>
<%--                                                            <a href="#" class="pull-left">--%>
<%--                                                                <img src="assets/images/users/user-2.jpg" alt=""--%>
<%--                                                                     class="img-circle">--%>
<%--                                                            </a>--%>
<%--                                                            <div class="media-body">--%>
<%--                                                                <div class="d-flex justify-content-between align-items-center w-100">--%>
<%--                                                                    <strong class="text-gray-dark"><a href="#"--%>
<%--                                                                                                      class="fs-8">Karen--%>
<%--                                                                        Minas</a></strong>--%>
<%--                                                                    <a href="#"><i--%>
<%--                                                                            class='bx bx-dots-horizontal-rounded'></i></a>--%>
<%--                                                                </div>--%>
<%--                                                                <span class="d-block comment-created-time">30 min ago</span>--%>
<%--                                                                <p class="fs-8 pt-2">--%>
<%--                                                                    Lorem ipsum dolor sit amet, consectetur adipiscing--%>
<%--                                                                    elit.--%>
<%--                                                                    Lorem ipsum dolor sit amet, <a href="#">#consecteturadipiscing </a>.--%>
<%--                                                                </p>--%>
<%--                                                                <div class="commentLR">--%>
<%--                                                                    <button type="button" class="btn btn-link fs-8">--%>
<%--                                                                        Like--%>
<%--                                                                    </button>--%>
<%--                                                                    <button type="button" class="btn btn-link fs-8">--%>
<%--                                                                        Reply--%>
<%--                                                                    </button>--%>
<%--                                                                </div>--%>
<%--                                                            </div>--%>
<%--                                                        </li>--%>
<%--                                                        <li class="media">--%>
<%--                                                            <a href="#" class="pull-left">--%>
<%--                                                                <img src="https://bootdey.com/img/Content/user_2.jpg"--%>
<%--                                                                     alt="" class="img-circle">--%>
<%--                                                            </a>--%>
<%--                                                            <div class="media-body">--%>
<%--                                                                <div class="d-flex justify-content-between align-items-center w-100">--%>
<%--                                                                    <strong class="text-gray-dark"><a href="#"--%>
<%--                                                                                                      class="fs-8">Lia--%>
<%--                                                                        Earnest</a></strong>--%>
<%--                                                                    <a href="#"><i--%>
<%--                                                                            class='bx bx-dots-horizontal-rounded'></i></a>--%>
<%--                                                                </div>--%>
<%--                                                                <span class="d-block comment-created-time">2 hours ago</span>--%>
<%--                                                                <p class="fs-8 pt-2">--%>
<%--                                                                    Lorem ipsum dolor sit amet, consectetur adipiscing--%>
<%--                                                                    elit.--%>
<%--                                                                    Lorem ipsum dolor sit amet, <a href="#">#consecteturadipiscing </a>.--%>
<%--                                                                </p>--%>
<%--                                                                <div class="commentLR">--%>
<%--                                                                    <button type="button" class="btn btn-link fs-8">--%>
<%--                                                                        Like--%>
<%--                                                                    </button>--%>
<%--                                                                    <button type="button" class="btn btn-link fs-8">--%>
<%--                                                                        Reply--%>
<%--                                                                    </button>--%>
<%--                                                                </div>--%>
<%--                                                            </div>--%>
<%--                                                        </li>--%>
<%--                                                        <li class="media">--%>
<%--                                                            <a href="#" class="pull-left">--%>
<%--                                                                <img src="https://bootdey.com/img/Content/user_3.jpg"--%>
<%--                                                                     alt="" class="img-circle">--%>
<%--                                                            </a>--%>
<%--                                                            <div class="media-body">--%>
<%--                                                                <div class="d-flex justify-content-between align-items-center w-100">--%>
<%--                                                                    <strong class="text-gray-dark"><a href="#"--%>
<%--                                                                                                      class="fs-8">Rusty--%>
<%--                                                                        Mickelsen</a></strong>--%>
<%--                                                                    <a href="#"><i--%>
<%--                                                                            class='bx bx-dots-horizontal-rounded'></i></a>--%>
<%--                                                                </div>--%>
<%--                                                                <span class="d-block comment-created-time">17 hours ago</span>--%>
<%--                                                                <p class="fs-8 pt-2">--%>
<%--                                                                    Lorem ipsum dolor sit amet, consectetur adipiscing--%>
<%--                                                                    elit.--%>
<%--                                                                    Lorem ipsum dolor sit amet, <a href="#">#consecteturadipiscing </a>.--%>
<%--                                                                </p>--%>
<%--                                                                <div class="commentLR">--%>
<%--                                                                    <button type="button" class="btn btn-link fs-8">--%>
<%--                                                                        Like--%>
<%--                                                                    </button>--%>
<%--                                                                    <button type="button" class="btn btn-link fs-8">--%>
<%--                                                                        Reply--%>
<%--                                                                    </button>--%>
<%--                                                                </div>--%>
<%--                                                            </div>--%>
<%--                                                        </li>--%>
<%--                                                        <li class="media">--%>
<%--                                                            <div class="media-body">--%>
<%--                                                                <div class="comment-see-more text-center">--%>
<%--                                                                    <button type="button" class="btn btn-link fs-8">See--%>
<%--                                                                        More--%>
<%--                                                                    </button>--%>
<%--                                                                </div>--%>
<%--                                                            </div>--%>
<%--                                                        </li>--%>
<%--                                                    </ul>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>

<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
                                    <div class="post border-bottom p-3 bg-white w-shadow">
                                            <div class="media text-muted pt-3">
                                                <img src="${post.user.linkImgAvatar}" alt="Online user"
                                                     class="mr-3 post-user-image">
                                                <div class="media-body pb-3 mb-0 small lh-125">
                                                    <div class="d-flex justify-content-between align-items-center w-100">
                                                        <span class="post-type text-muted"><a href="#"
                                                                                              class="text-gray-dark post-user-name mr-2">${post.user.firstName} ${post.user.lastName}</a></span>

                                                    </div>
                                                    <span class="d-block">${post.date_created }<i
                                                            class='bx bx-globe ml-3'></i></span>
                                                </div>
                                            </div>
                                            <div class="mt-3">
                                                <p>${post.text}</p>
                                            </div>
                                            <div class="d-block mt-3">
                                                <c:if test="${post.linkImgPost!=null}">
                                                    <img src="${post.linkImgPost}" class="w-100 mb-3"
                                                     alt="post image">
                                                </c:if>
                                            </div>
                                            <div class="mb-2">

                                                <!-- Reactions -->
                                                <div class="argon-reaction">
                                                        <span class="like-btn">
                                                            <a class="post-card-buttons" id="reactionsText_${post.id}"><i
                                                                    class='bx bxs-like mr-2 ${post.isLike==1?"likeIcon":" "}' id="reactions_${post.id}" onclick="onLike(${user.id},${post.id},${post.user.id})"></i> ${post.numberOfLike}</a>

                                                        </span>
                                                </div>

                                                <a href="javascript:void(0)" class="post-card-buttons"
                                                   ><i class='bx bx-message-rounded mr-2'></i> 5</a>

                                            </div>
                                            <div class="border-top pt-3 hide-comments" style="">
                                                <div class="row bootstrap snippets">
                                                    <div class="col-md-12">
                                                        <div class="comment-wrapper">
                                                            <div class="panel panel-info">
                                                                <div class="panel-body">
                                                                    <ul class="media-list comments-list">
                                                                        <li class="media comment-form">
                                                                            <a href="#" class="pull-left">
                                                                                <img src="${user.linkImgAvatar}"
                                                                                     alt="" class="img-circle">
                                                                            </a>
                                                                            <div class="media-body">
                                                                                <form action="" method="" role="form">
                                                                                    <div class="row">
                                                                                        <div class="col-md-12">
                                                                                            <div class="input-group">
                                                                                                <input type="text"
                                                                                                       class="form-control comment-input"
                                                                                                       placeholder="Write a comment..." id="wcomment_${post.id}">

                                                                                                <div class="input-group-btn">
                                                                                                    <div
                                                                                                            class="btn"
                                                                                                            onclick="creComment(${post.id}, ${post.user.id})"
                                                                                                            >
                                                                                                        <i class='bx bxs-smiley-happy'></i>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </form>
                                                                            </div>
                                                                        </li>
                                                                        <li class="media">
                                                                            <div class="media-body">
                                                                                <div class="comment-see-more text-center" id="seemore_${post.id}">
                                                                                    <button onclick="showMoreComment(${post.id},${post.comments.number+1})" type="button"
                                                                                            class="btn btn-link fs-8">
                                                                                        See More
                                                                                    </button>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <div id="content_${post.id}">
                                                                            <c:forEach items="${post.comments.content}" var="icmt">
                                                                                <li class="media">
                                                                                    <a href="#" class="pull-left">
                                                                                        <img src="${icmt.linkImgAvatar}"
                                                                                             alt="" class="img-circle">
                                                                                    </a>

                                                                                    <div class="media-body">
                                                                                        <div class="d-flex justify-content-between align-items-center w-100">
                                                                                            <strong class="text-gray-dark"><a
                                                                                                    href="#" class="fs-8">${icmt.firstName} ${icmt.lastName}</a></strong>
                                                                                            <a href="#"><i
                                                                                                    class='bx bx-dots-horizontal-rounded'></i></a>
                                                                                        </div>
                                                                                        <p class="fs-8 pt-2">
                                                                                            ${icmt.text}
                                                                                        </p>
                                                                                    </div>
                                                                                </li>
                                                                            </c:forEach>
                                                                        </div>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                    </div>
                </div>
                <div class="col-md-3 third-section">
                    <div class="card shadow-sm">
                        <div class="card-body">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modals -->
<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" id="postModal" aria-labelledby="postModal"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-body post-body">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-7 post-content">
                            <img src="https://scontent.fevn1-2.fna.fbcdn.net/v/t1.0-9/56161887_588993861570433_2896723195090436096_n.jpg?_nc_cat=103&_nc_eui2=AeFI0UuTq3uUF_TLEbnZwM-qSRtgOu0HE2JPwW6b4hIki73-2OWYhc7L1MPsYl9cYy-w122CCak-Fxj0TE1a-kjsd-KXzh5QsuvxbW_mg9qqtg&_nc_ht=scontent.fevn1-2.fna&oh=ea44bffa38f368f98f0553c5cef8e455&oe=5D050B05"
                                 alt="post-image">
                        </div>
                        <div class="col-md-5 pr-3">
                            <div class="media text-muted pr-3 pt-3">
                                <img src="/assets/images/users/user-1.jpg" alt="user image"
                                     class="mr-3 post-modal-user-img">
                                <div class="media-body">
                                    <div class="d-flex justify-content-between align-items-center w-100 post-modal-top-user fs-9">
                                        <a href="#" class="text-gray-dark">John Michael</a>
                                        <div class="dropdown">
                                            <a href="#" class="postMoreSettings" role="button" data-toggle="dropdown"
                                               id="postOptions" aria-haspopup="true" aria-expanded="false">
                                                <i class='bx bx-dots-horizontal-rounded'></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right dropdown-menu-lg-left postDropdownMenu">
                                                <a href="#" class="dropdown-item" aria-describedby="savePost">
                                                    <div class="row">
                                                        <div class="col-md-2">
                                                            <i class='bx bx-bookmark-plus postOptionIcon'></i>
                                                        </div>
                                                        <div class="col-md-10">
                                                            <span class="postOptionTitle">Save post</span>
                                                            <small id="savePost" class="form-text text-muted">Add this
                                                                to your saved items</small>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <span class="d-block fs-8">3 hours ago <i class='bx bx-globe ml-3'></i></span>
                                </div>
                            </div>
                            <div class="mt-3 post-modal-caption fs-9">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quis voluptatem veritatis
                                    harum, tenetur, quibusdam voluptatum, incidunt saepe minus maiores ea atque sequi
                                    illo veniam sint quaerat corporis totam et. Culpa?</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Call modal -->
<div id="callModal" class="modal fade call-modal" tabindex="-1" role="dialog" aria-labelledby="callModalLabel"
     aria-hidden="true">
    <div class="modal-dialog call-modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header align-items-center">
                <div class="call-status">
                    <h1 id="callModalLabel" class="modal-title mr-3">Connected</h1>
                    <span class="online-status bg-success"></span>
                </div>
                <div class="modal-options d-flex align-items-center">
                    <button type="button" class="btn btn-quick-link" id="minimize-call-window">
                        <i class='bx bx-minus'></i>
                    </button>
                </div>
            </div>
            <div class="modal-body">
                <div class="row h-100">
                    <div class="col-md-12 d-flex align-items-center justify-content-center">
                        <div class="call-user text-center">
                            <div class="call-user-img-anim">
                                <img src="/assets/images/users/user-1.jpg" class="call-user-img" alt="Call user image">
                            </div>
                            <p class="call-user-name">Name Surename</p>
                            <p class="text-muted call-time">05:28</p>
                        </div>
                    </div>
                    <div class="col-md-4 offset-md-4 d-flex align-items-center justify-content-between call-btn-list">
                        <a href="#" class="btn call-btn" data-toggle="tooltip" data-placement="top"
                           data-title="Disable microphone"><i class='bx bxs-microphone'></i></a>
                        <a href="#" class="btn call-btn" data-toggle="tooltip" data-placement="top"
                           data-title="Enable camera"><i class='bx bxs-video-off'></i></a>
                        <a href="#" class="btn call-btn drop-call" data-toggle="tooltip" data-placement="top"
                           data-title="End call" data-dismiss="modal" aria-label="Close"><i
                                class='bx bxs-phone'></i></a>
                        <a href="#" class="btn call-btn" data-toggle="tooltip" data-placement="top"
                           data-title="Share Screen"><i class='bx bx-laptop'></i></a>
                        <a href="#" class="btn call-btn" data-toggle="tooltip" data-placement="top"
                           data-title="Dark mode"><i class='bx bx-moon'></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END call modal -->
<%--Toast Noti--%>
<div id="toast" class="toast position-fixed" style="z-index: 999999;right: 0px;top:0px" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-body">
        <p id="toastmes"></p>
        <div class="mt-2 pt-2 border-top">
            <a id="takeaction"><button type="button" class="btn btn-primary btn-sm">Take action</button></a>
            <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="toast">Close</button>
        </div>
    </div>
</div>

<!-- Core -->
<script src="/assets/js/jquery/jquery-3.3.1.min.js"></script>
<script src="/assets/js/popper/popper.min.js"></script>
<script src="/assets/js/bootstrap/bootstrap.min.js"></script>
<!-- Optional -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.4/sockjs.min.js"></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script type="text/javascript">
    $("#menu-toggle").click(function (e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
</script>
<script></script>
<script src="/assets/js/app.js"></script>
<script src="/assets/js/components/components.js"></script>
<script>
    var stompClient = null;
    var senderid = ${user.id};
    function connect() {
        var socket = new SockJS('/ws');
        stompClient = Stomp.over(socket);
        stompClient.connect({}, onConnected, onError);
    }
    connect();
    function onConnected() {
        // Subscribe to the Public Topic
        stompClient.subscribe('/ws/'+senderid+'/notification', onNotification);
    }

    function onError(error) {

    }
    function onNotification(payload) {
        var notification = JSON.parse(payload.body);
        var toastmes = document.getElementById("toastmes");
        var takeaction = document.getElementById("takeaction");
        if (notification.type==0) {
            takeaction.href = "/profile/" + notification.senderid;
            toastmes.textContent = notification.firstName + ' ' + notification.lastName + ' đã bắt đầu theo dõi bạn';
        }
        else if (notification.type==1) {
            toastmes.textContent = notification.firstName + ' ' + notification.lastName + ' đã bình luận vào bài viết của bạn';
        }
        else {
            toastmes.textContent = notification.firstName+' '+notification.lastName+' đã thích bài viết của bạn';
        }
        const myToastEl = document.getElementById('toast');
        const toast = new bootstrap.Toast(myToastEl);
        toast.show();
    }
    function onLike(userid, postid, receiverId) {
        var like = document.getElementById("reactions_"+postid);
        var reactionsText = document.getElementById("reactionsText_"+postid);
        if (like.classList.contains('likeIcon')) {
            $.ajax({
                type : "delete",
                url : "/api/like?userId="+userid+"&postId="+postid,
                success : function(response) {
                    like.classList.remove('likeIcon');
                    var soLike = Number(reactionsText.innerText) - 1;
                    var data = `<i class='bx bxs-like mr-2' id="reactions_`+postid+`" onclick="onLike(`+userid+`,`+postid+`)"></i>`+soLike+``;
                    reactionsText.innerHTML = data;
                },
                error: function (response) {

                }
            });

        }
        else {
            $.ajax({
                type : "post",
                url : "/api/like?userId="+userid+"&postId="+postid,
                success : function(response) {
                    like.classList.add('likeIcon');
                    var soLike = Number(reactionsText.innerText) + 1;
                    var data = `<i class='bx bxs-like mr-2 likeIcon' id="reactions_`+postid+`" onclick="`+userid+`,`+postid+`"></i>`+soLike+``;
                    reactionsText.innerHTML = data;
                },
                error: function (response) {

                }
            });
            var notification = {
                senderid: senderid,
                receiver: {
                    id:receiverId
                },
                type: 2,
                seen:0,
                link:'/post/'+postid
            };
            if (notification.senderid!=notification.receiver.id) {
                stompClient.send("/app/notification.private", {}, JSON.stringify(notification));
                event.preventDefault();
            }
            $.ajax({
                type : "post",
                url : "/api/notification",
                data: JSON.stringify(notification),
                contentType:"application/json",
                dataType:"JSON",
                success : function(response) {

                },
                error: function (response) {

                }
            });
        }
    }
    function showMoreComment(postId, page) {
        $.ajax({
            type : "get",
            url : "/api/comment?postId="+postId+"&page="+page,
            success : function(response) {
                var data = response.content;
                var numbernext = response.number+1;
                var seemore = document.getElementById("seemore_"+postId);
                var content = document.getElementById("content_"+postId);
                seemore.innerHTML = `<button onclick="showMoreComment(`+postId+`,`+numbernext+`)" type="button"
                                                                                            class="btn btn-link fs-8">
                                                                                        See More
                                                                                    </button>`;
                data.forEach(function (item) {
                    var limedia = document.createElement("li");
                    limedia.classList.add("media");
                    var tem = `<a href="#" class="pull-left">
                                  <img src="`+item.linkImgAvatar+`"
                                  alt="" class="img-circle">
                               </a>
                               <div class="media-body">
                                 <div class="d-flex justify-content-between align-items-center w-100">
                                    <strong class="text-gray-dark"><a
                                       href="#" class="fs-8">`+item.firstName+` `+item.lastName+`</a></strong>
                                           <a href="#"><i class='bx bx-dots-horizontal-rounded'></i></a>
                                 </div>
                                 <p class="fs-8 pt-2">`
                        +item.text+`
                                 </p>
                               </div>`;
                    limedia.innerHTML = tem;
                    content.appendChild(limedia);
                })
            },
            error: function (response) {

            }
        });
    }
    function creComment(postId, receiverId) {
        var text = document.getElementById("wcomment_"+postId);
        var cmt = {
            text: text.value,
            date_created: new Date(),
            post: {
                id:postId
            },
            user: {
                id: ${user.id}
            }
        };
        $.ajax({
            type : "post",
            url : "/api/comment",
            data : JSON.stringify(cmt),
            contentType:"application/json",
            dataType:"JSON",
            success : function(response) {
            },
            error: function (response) {

            }
        });
        text.value='';
        var notification = {
            senderid: senderid,
            receiver: {
                id:receiverId
            },
            type: 1,
            seen:0,
            link:'/post/'+postid
        };
        if (notification.senderid!=notification.receiver.id) {
            stompClient.send("/app/notification.private", {}, JSON.stringify(notification));
            event.preventDefault();
        }
        $.ajax({
            type : "post",
            url : "/api/notification",
            data: JSON.stringify(notification),
            contentType:"application/json",
            dataType:"JSON",
            success : function(response) {

            },
            error: function (response) {

            }
        });
    }
    function redir(url, id) {
        $.ajax({
            type: "put",
            url: "/api/notification/"+id,
            success: function (response) {

            }
        });
        window.location = url;
    }
</script>

</body>

</html>

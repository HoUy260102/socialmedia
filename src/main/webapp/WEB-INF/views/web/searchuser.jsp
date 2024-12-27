<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en" class="no-js">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/png" href="assets/images/logo-16x16.png"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Argon - Social Network</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Major+Mono+Display" rel="stylesheet">
    <link href='https://cdn.jsdelivr.net/npm/boxicons@1.9.2/css/boxicons.min.css' rel='stylesheet'>

    <!-- Styles -->
    <link href="assets/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/components.css" rel="stylesheet">
    <link href="assets/css/profile.css" rel="stylesheet">
    <link href="assets/css/media.css" rel="stylesheet">
    <link href="assets/css/update.css" rel="stylesheet">
    <script src="assets/js/load.js" type="text/javascript"></script>
    <style>
        .follow-card{
            display: flex;
        }
        .follow-avatar {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 75px;
        }
    </style>
</head>

<body class="profile">
<div class="container-fluid newsfeed d-flex" id="wrapper">
    <div class="row newsfeed-size" style="width: 100%;">
        <div class="col-md-12 p-0">
            <nav id="navbar-main" class="navbar navbar-expand-lg shadow-sm sticky-top">
                <div class="w-100 justify-content-md-center">
                    <ul class="nav navbar-nav enable-mobile px-2">
                        <li class="nav-item">
                            <button type="button" class="btn nav-link p-0"><img
                                    src="assets/images/icons/theme/post-image.png" class="f-nav-icon"
                                    alt="Quick make post"></button>
                        </li>
                        <li class="nav-item w-100 py-2">
                            <form action="" method="get" class="d-inline form-inline w-100 px-4">
                                <div class="input-group">
                                    <input type="text" class="form-control search-input"
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
                                <img src="assets/images/icons/navbar/message.png" class="message-dropdown f-nav-icon"
                                     alt="navbar icon">
                            </a>
                        </li>
                    </ul>
                    <ul class="navbar-nav mr-5 flex-row" id="main_menu">
                        <a class="navbar-brand nav-item mr-lg-5" href="/"><img
                                src="assets/images/logo-64x64.png" width="40" height="40" class="mr-3" alt="Logo"></a>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <form action="/searchuser" method="get" class="w-30 mx-2 my-auto d-inline form-inline mr-5">
                            <div class="input-group">
                                <input name="key" value="${keyid}" type="text" class="form-control search-input w-75 dropdown"
                                       placeholder="Search for people, companies, events and more..."
                                       aria-label="Search" aria-describedby="search-addon">
                                <div class="input-group-append">
                                    <button class="btn search-button" type="submit"><i class='bx bx-search'></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                        <li class="nav-item s-nav dropdown d-mobile">
                            <a href="#" class="nav-link nav-icon nav-links drop-w-tooltip" data-toggle="dropdown"
                               data-placement="bottom" data-title="Create" role="button" aria-haspopup="true"
                               aria-expanded="false">
                                <img src="assets/images/icons/navbar/create.png" alt="navbar icon">
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
                        <li class="nav-item s-nav dropdown">
                            <a href="/message/${user.id}" class="nav-link nav-links"
                               data-placement="bottom" data-title="Messages" role="button" aria-haspopup="true"
                               aria-expanded="false">
                                <img src="assets/images/icons/navbar/message.png" class="message-dropdown"
                                     alt="navbar icon"> <span class="badge badge-pill badge-primary"></span>
                            </a>
                        </li>
                        <li class="nav-item s-nav dropdown notification">
                            <a href="#" class="nav-link nav-links rm-drop-mobile drop-w-tooltip" data-toggle="dropdown"
                               data-placement="bottom" data-title="Notifications" role="button" aria-haspopup="true"
                               aria-expanded="false">
                                <img src="assets/images/icons/navbar/notification.png" class="notification-bell"
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
                                        <li ${item.seen==0?'style="background-color:#f2f4f5;cursor:pointer"':'style="cursor:pointer"'} onclick="redir(`${item.link}`, ${item.id})">
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
                                <img src="assets/images/icons/navbar/flag.png" alt="navbar icon">
                            </a>
                            <div class="dropdown-menu dropdown-menu-right nav-drop">
                                <a class="dropdown-item" href="newsfeed-2.html">Newsfeed 2</a>
                                <a class="dropdown-item" href="sign-in.html">Sign in</a>
                                <a class="dropdown-item" href="sign-up.html">Sign up</a>
                            </div>
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
                                    src="assets/images/icons/navbar/settings.png" class="nav-settings"
                                    alt="navbar icon"></a>
                            <div class="dropdown-menu dropdown-menu-right settings-dropdown shadow-sm"
                                 aria-labelledby="settings-dropdown">
                                <a class="dropdown-item" href="#">
                                    <img src="assets/images/icons/navbar/help.png" alt="Navbar icon"> Help Center</a>
                                <a class="dropdown-item d-flex align-items-center dark-mode" href="#">
                                    <img src="assets/images/icons/navbar/moon.png" alt="Navbar icon"> Dark Mode
                                    <button type="button" class="btn btn-lg btn-toggle ml-auto" data-toggle="button"
                                            aria-pressed="false" autocomplete="off">
                                        <div class="handle"></div>
                                    </button>
                                </a>
                                <a class="dropdown-item" href="#">
                                    <img src="assets/images/icons/navbar/gear-1.png" alt="Navbar icon"> Settings</a>
                                <a class="dropdown-item logout-btn" href="/logout">
                                    <img src="assets/images/icons/navbar/logout.png" alt="Navbar icon"> Log Out</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
            <div class="row profile-right-side-content">
                <div class="user-profile">
                    <div class="profile-header-background">
                        <a href="#" class="profile-cover">
                            <img src="assets/images/users/cover/cover-1.gif" alt="Profile Header Background">
                            <div class="cover-overlay">
                                <a href="#" class="btn btn-update-cover"><i class='bx bxs-camera'></i> Update Cover
                                    Photo</a>
                            </div>
                        </a>
                    </div>
                    <div class="row profile-rows">
                        <div class="col-md-3">
                            <div class="profile-info-left">
                                <div class="text-center">
                                    <div class="profile-img w-shadow">
                                        <div class="profile-img-overlay"></div>
                                        <img src="${user.linkImgAvatar}" alt="Avatar"
                                             class="avatar img-circle">
                                        <div class="profile-img-caption">
                                            <label for="updateProfilePic" class="upload">
                                                <i class='bx bxs-camera'></i> Update
                                                <input type="file" id="updateProfilePicInput"
                                                       class="text-center upload">
                                            </label>
                                        </div>
                                    </div>
                                    <p class="profile-fullname mt-3">${user.firstName} ${user.lastName}</p>
                                    <p class="profile-username mb-3 text-muted">${user.email}</p>
                                </div>
                                <div class="intro mt-4">

                                </div>
                                <div class="intro mt-5 mv-hidden">
                                    <div class="intro-item d-flex justify-content-between align-items-center">
                                        <h3 class="intro-about">Intro</h3>
                                    </div>
                                    <div class="intro-item d-flex justify-content-between align-items-center">
                                        <p class="intro-title text-muted"><i class='bx bx-briefcase text-primary'></i>
                                            ${user.work}</p>
                                    </div>
                                    <div class="intro-item d-flex justify-content-between align-items-center">
                                        <p class="intro-title text-muted"><i class='bx bx-map text-primary'></i> Lives
                                            in <a href="#">${user.live}</a></p>
                                    </div>
                                    <div class="intro-item d-flex justify-content-between align-items-center">
                                        <p class="intro-title text-muted"><i class='bx bx-time text-primary'></i> Last
                                            Login <a href="#">Online <span class="ml-1 online-status bg-success"></span></a>
                                        </p>
                                    </div>
                                    <div class="intro-item d-flex justify-content-between align-items-center">
                                        <a href="/edit-profile" class="btn btn-quick-link join-group-btn border w-100">Edit
                                            Details</a>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-md-9 p-0">
                            <div class="profile-info-right">

                                <!-- Friends section -->
                                <div class="row px-2">
                                    <div class="col-md-9 profile-center">
                                        <ul class="list-inline profile-links d-flex justify-content-between shadow-sm rounded">
                                            <li class="list-inline-item">
                                                <a href="/myprofile">Timeline</a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a href="#">About</a></li>
                                            <li class="list-inline-item">
                                                <a href="/follower">Followers</a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a href="/following">Following</a>
                                            </li>
                                            <li class="list-inline-item dropdown">
                                                <a href="#" data-toggle="dropdown" aria-haspopup="true"
                                                   aria-expanded="false">
                                                    <i class='bx bx-dots-vertical-rounded'></i>
                                                </a>
                                                <div class="dropdown-menu dropdown-menu-right profile-ql-dropdown">
                                                    <a href="#" class="dropdown-item">Activity Log</a>
                                                    <a href="#" class="dropdown-item">Videos</a>
                                                    <a href="#" class="dropdown-item">Check-Ins</a>
                                                    <a href="#" class="dropdown-item">Events</a>
                                                    <a href="#" class="dropdown-item">Likes</a>
                                                </div>
                                            </li>
                                        </ul>
                                        <ul class="list-group list-group-horizontal types-list fs-8">
                                            <a href="#" class="list-group-item">Recently Added</a>
                                            <a href="#" class="list-group-item">Current City</a>
                                            <a href="#" class="list-group-item">Work</a>
                                            <a href="#" class="list-group-item">Family</a>
                                            <form id="searchFollowerForm" class="list-group-item d-flex w-100 align-items-center p-0 form-inline dropdown search-form">
                                                <div class="input-group w-95" data-toggle="dropdown"
                                                     aria-haspopup="true" aria-expanded="false" id="searchDropdown">
                                                    <input type="text" id="key" class="form-control search-input"
                                                           placeholder="Search for people, companies, events and more..."
                                                           aria-label="Search" aria-describedby="search-addon">
                                                    <div class="input-group-append">
                                                        <button class="btn search-button" type="button" style="cursor: pointer" onclick="searchFollower()"><i
                                                                class='bx bx-search'></i></button>
                                                    </div>
                                                </div>
                                                <ul class="dropdown-menu notify-drop nav-drop shadow-sm"
                                                    aria-labelledby="searchDropdown">
                                                    <div class="notify-drop-title">
                                                        <div class="row">
                                                            <div class="col-md-6 col-sm-6 col-xs-6 fs-8">Search Results
                                                                <span class="badge badge-pill badge-primary ml-2">29</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- end notify title -->
                                                    <!-- notify content -->
                                                    <div class="drop-content">
                                                        <h6 class="dropdown-header">Peoples</h6>
                                                        <li class="dropdown-item">
                                                            <div class="col-md-2 col-sm-2 col-xs-2">
                                                                <div class="notify-img">
                                                                    <img src="assets/images/users/user-6.png"
                                                                         alt="Search result">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-10 col-sm-10 col-xs-10">
                                                                <a href="#" class="notification-user">Susan P.
                                                                    Jarvis</a>
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
                                                                    <img src="assets/images/users/user-5.png"
                                                                         alt="Search result">
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
                                                                    <img src="assets/images/groups/group-2.jpg"
                                                                         alt="Search result">
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
                                                                    <img src="assets/images/groups/group-1.png"
                                                                         alt="Search result">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-10 col-sm-10 col-xs-10">
                                                                <a href="#" class="notification-user">Argon Social
                                                                    Network <img src="assets/images/theme/verify.png"
                                                                                 width="10px" class="verify"
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
                                        </ul>
                                        <div class="bg-white py-3 px-4 shadow-sm">
                                            <div class="card-head d-flex justify-content-between">
                                                <h5 class="mb-4">Search Results</h5>
                                            </div>
                                            <div class="row" id="liuser">
                                                <c:forEach var="item" items="${listSearchUser}">
                                                <div class="col-md-4 col-sm-6" style="margin-top: 15px;">
                                                    <div class="card group-card shadow-sm">
                                                        <img src="${item.linkImgAvatar}"
                                                             class="card-img-top group-card-image" alt="Group image">
                                                        <div class="card-body">
                                                            <h5 class="card-title">${item.firstName} ${item.lastName}<img
                                                                    src="assets/images/theme/verify.png" width="10px"
                                                                    class="verify" alt="Group verified"></h5>
                                                            <p class="card-text">${item.email}</p>
                                                            <div class="btn-group w-100" role="group" id="btnaction_${item.id}">
                                                                <c:if test="${item.check==1}"><a href="/profile/${item.id}" class="btn btn-quick-link join-group-btn border w-100">See profile</a></c:if>
                                                                <c:if test="${item.check==0}"><span onclick="addFollowing(${item.id})" class="btn btn-quick-link join-group-btn border w-100">Follow</span></c:if>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                </c:forEach>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-md-3 profile-quick-media">
                                        <h6 class="text-muted timeline-title">Recent Media</h6>
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

<!-- New message modal -->
<div class="modal fade" id="newMessageModal" tabindex="-1" role="dialog" aria-labelledby="newMessageModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header new-msg-header">
                <h5 class="modal-title" id="newMessageModalLabel">Start new conversation</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body new-msg-body">
                <form action="" method="" class="new-msg-form">
                    <div class="form-group">
                        <label for="message-text" class="col-form-label">Message:</label>
                        <textarea class="form-control search-input" rows="5" id="message-text"
                                  placeholder="Type a message..."></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer new-msg-footer">
                <button type="button" class="btn btn-primary btn-sm">Send message</button>
            </div>
        </div>
    </div>
</div>

<!-- Core -->
<script src="assets/js/jquery/jquery-3.3.1.min.js"></script>
<script src="assets/js/popper/popper.min.js"></script>
<script src="assets/js/bootstrap/bootstrap.min.js"></script>
<!-- Optional -->
<script src="assets/js/app.js"></script>
<script src="assets/js/components/components.js"></script>
<script>
    var i = 2;
    function searchFollower() {
        var key = $('#key').val();

        var lifollower = document.getElementById("lifollower");
        var data = '';
        $.ajax({
            type : "get",
            url : "/api/searchfollower?key="+key,
            success : function(response) {
                $.each(response, function (index, item) {
                    data+='<a style="width:100%;" href="/profile/'+item.id+'">'+
                        '<div class="col-md-12 col-sm-12">' +
                        '<div class="follow-card">' +
                        '<div class="menu-user-image follow-avatar">'+
                        '<img src="'+item.linkImgAvatar+'" style="height: 50px; width: auto;"'+
                        ' class="menu-user-img ml-1"'+
                        ' alt="Menu Image"/>'+
                        '</div>'+
                        '<div class="card-body">'+
                        '<h5 class="card-title">'+item.firstName+' '+item.lastName+
                        '<img src="assets/images/theme/verify.png" width="10px" class="verify" alt="Group verified"/></h5>'+
                        '<p class="card-text">'+item.email+'</p>'+
                        '</div>'+
                        '</div>'+
                        '</div>'+
                        '</a> ';
                });
                lifollower.innerHTML = data;
            },
            error: function (response) {

            }
        });
    }
    function addFollowing(followingid) {
        $.ajax({
            type : "post",
            url : "/api/following/"+followingid,
            success : function(response) {
                var tem = "btnaction_"+followingid;
                var btn = document.getElementById(tem);
                var data = '<a href="/profile/'+followingid+'" class="btn btn-quick-link join-group-btn border w-100">See profile</a>';
                btn.innerHTML = data;
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

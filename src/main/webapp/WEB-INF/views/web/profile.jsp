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
    <link href='https://cdn.jsdelivr.net/npm/boxicons@1.9.2/css/boxicons.min.css' rel='stylesheet'>

    <!-- Styles -->
    <link href="/assets/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="/assets/css/style.css" rel="stylesheet">
    <link href="/assets/css/components.css" rel="stylesheet">
    <link href="/assets/css/profile.css" rel="stylesheet">
    <link href="/assets/css/media.css" rel="stylesheet">
    <script src="/assets/js/load.js" type="text/javascript"></script>
    <style>
        .likeIcon{
            color: #007bff;
        }
    </style>
</head>
<body class="profile">
<div class="container-fluid newsfeed d-flex" id="wrapper">
    <div class="row newsfeed-size" style="width: 100%">
        <div class="col-md-12 p-0">
            <nav id="navbar-main" class="navbar navbar-expand-lg shadow-sm sticky-top">
                <div class="w-100 justify-content-md-center">
                    <ul class="nav navbar-nav enable-mobile px-2">
                        <li class="nav-item">
                            <button type="button" class="btn nav-link p-0"><img
                                    src="/assets/images/icons/theme/post-image.png" class="f-nav-icon"
                                    alt="Quick make post"></button>
                        </li>
                        <li class="nav-item w-100 py-2">
                            <form action="/searchuser" method="get" class="d-inline form-inline w-100 px-4">
                                <div class="input-group">
                                    <input name="key" type="text" class="form-control search-input"
                                           placeholder="Search for people, companies, events and more..."
                                           aria-label="Search" aria-describedby="search-addon">
                                    <div class="input-group-append">
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
                        <a class="navbar-brand nav-item mr-lg-5" href="/"><img
                                src="/assets/images/logo-64x64.png" width="40" height="40" class="mr-3" alt="Logo"></a>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <form action="/searchuser" method="get" class="w-30 mx-2 my-auto d-inline form-inline mr-5">
                            <div class="input-group">
                                <input name="key" type="text" class="form-control search-input w-75"
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
                        <li class="nav-item s-nav dropdown">
                            <a href="/message/${user.id}" class="nav-link nav-links"
                               data-placement="bottom" data-title="Messages" role="button" aria-haspopup="true"
                               aria-expanded="false">
                                <img src="/assets/images/icons/navbar/message.png" class="message-dropdown"
                                     alt="navbar icon"> <span class="badge badge-pill badge-primary"></span>
                            </a>
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
                                <img src="/assets/images/icons/navbar/flag.png" alt="navbar icon">
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
                                    src="/assets/images/icons/navbar/settings.png" class="nav-settings"
                                    alt="navbar icon"></a>
                            <div class="dropdown-menu dropdown-menu-right settings-dropdown shadow-sm"
                                 aria-labelledby="settings-dropdown">
                                <a class="dropdown-item" href="#">
                                    <img src="/assets/images/icons/navbar/help.png" alt="Navbar icon"> Help Center</a>
                                <a class="dropdown-item d-flex align-items-center dark-mode" href="#">
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
                    </ul>
                </div>
            </nav>
            <div class="row profile-right-side-content">
                <div class="user-profile">
                    <div class="profile-header-background">
                        <a href="#" class="profile-cover">
                            <img src="/assets/images/users/cover/cover-1.gif" alt="Profile Header Background">
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
                                        <img src="${following.linkImgAvatar}" alt="Avatar"
                                             class="avatar img-circle">
                                        <div class="profile-img-caption">
                                            <label for="updateProfilePic" class="upload">
                                                <i class='bx bxs-camera'></i> Update
                                                <input type="file" id="updateProfilePicInput"
                                                       class="text-center upload">
                                            </label>
                                        </div>
                                    </div>
                                    <p class="profile-fullname mt-3">${following.firstName} ${following.lastName}</p>
                                    <p class="profile-username mb-3 text-muted">${following.email}</p>
                                </div>
                                <div class="intro mt-4">
                                    <div class="d-flex">
                                        <c:if test="${check==0}">
                                            <a style="width: 138px" onclick="addFollowing(${following.id})"><button style="width: 90%;" type="button" class="btn btn-follow mr-3"><i class='bx bx-plus'></i>
                                                Follow
                                            </button></a>
                                        </c:if>
                                        <c:if test="${check==1}">
                                            <a style="width: 138px" onclick="deleteFollowing(${following.id})"><button style="width: 90%;" type="button" class="btn btn-follow mr-3"><i class='bx bx-minus'></i>
                                                Unfollow
                                            </button></a>
                                        </c:if>
                                        <button type="button" onclick="location.href=`/message/${following.id}`" class="btn btn-start-chat"
                                                data-target="#newMessageModal"><i class='bx bxs-message-rounded'></i>
                                            <span class="fs-8">Message</span></button>
                                        <button type="button" class="btn btn-follow" id="moreMobile"
                                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
                                                class='bx bx-dots-horizontal-rounded'></i> <span
                                                class="fs-8">More</span></button>
                                        <div class="dropdown-menu dropdown-menu-right profile-ql-dropdown"
                                             aria-labelledby="moreMobile">
                                            <a href="newsfeed.html" class="dropdown-item">Timeline</a>
                                            <a href="about.html" class="dropdown-item">About</a>
                                            <a href="followers.html" class="dropdown-item">Followers</a>
                                            <a href="following.html" class="dropdown-item">Following</a>
                                            <a href="photos.html" class="dropdown-item">Photos</a>
                                            <a href="videos.html" class="dropdown-item">Videos</a>
                                            <a href="check-ins.html" class="dropdown-item">Check-Ins</a>
                                            <a href="events.html" class="dropdown-item">Events</a>
                                            <a href="likes.html" class="dropdown-item">Likes</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="intro mt-5 mv-hidden">
                                    <div class="intro-item d-flex justify-content-between align-items-center">
                                        <h3 class="intro-about">Intro</h3>
                                    </div>
                                    <div class="intro-item d-flex justify-content-between align-items-center">
                                        <p class="intro-title text-muted"><i class='bx bx-briefcase text-primary'></i>
                                            ${following.work}</p>
                                    </div>
                                    <div class="intro-item d-flex justify-content-between align-items-center">
                                        <p class="intro-title text-muted"><i class='bx bx-map text-primary'></i> Lives
                                            in <a href="#">${following.live}</a></p>
                                    </div>
                                    <div class="intro-item d-flex justify-content-between align-items-center">
                                        <p class="intro-title text-muted"><i class='bx bx-time text-primary'></i> Last
                                            Login <a href="#">Online <span class="ml-1 online-status bg-success"></span></a>
                                        </p>
                                    </div>
                                </div>
                                <div class="intro mt-5 row mv-hidden">
                                </div>
                                <div class="intro mt-5 mv-hidden">

                                </div>
                            </div>
                        </div>
                        <div class="col-md-9 p-0">
                            <div class="profile-info-right">

                                <!-- Posts section -->
                                <div class="row">
                                    <div class="col-md-9 profile-center">
                                        <ul class="list-inline profile-links d-flex justify-content-between w-shadow rounded">
                                            <li class="list-inline-item profile-active">
                                                <a href="#">Timeline</a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a href="#">About</a></li>
                                            <li class="list-inline-item">
                                                <a href="friends.html">Friends</a>
                                            </li>
                                            <li class="list-inline-item">
                                                <a href="#">Photos</a>
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
                                        <ul class="list-unstyled" style="margin-bottom: 0;">
                                            <li class="media post-form w-shadow">
                                                <div class="media-body">
                                                    <div class="form-group post-input">
                                                        <textarea class="form-control" id="postForm" rows="2"
                                                                  placeholder="What's on your mind?"></textarea>
                                                    </div>
                                                    <div class="row post-form-group">
                                                        <div class="col-md-9">
                                                            <button type="button"
                                                                    class="btn btn-link post-form-btn btn-sm">
                                                                <i class='bx bx-images'></i> <span>Photo/Video</span>
                                                            </button>
                                                            <button type="button"
                                                                    class="btn btn-link post-form-btn btn-sm">
                                                                <i class='bx bxs-group'></i> <span>Tag Friends</span>
                                                            </button>
                                                            <button type="button"
                                                                    class="btn btn-link post-form-btn btn-sm">
                                                                <i class='bx bxs-map'></i> <span>Check In</span>
                                                            </button>
                                                        </div>
                                                        <div class="col-md-3 text-right">
                                                            <button type="button" class="btn btn-primary btn-sm">
                                                                Publish
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <div class="bg-white profile-posts-options mt-5 mb-4 py-3 d-flex justify-content-between shadow-sm">
                                            <div class="col-md-3 col-sm-12">
                                                <h6 class="timeline-title">Posts</h6>
                                            </div>
                                        </div>
                                        <c:forEach items="${listPost}" var="item">
                                            <div class="post border-bottom p-3 bg-white w-shadow">
                                            <div class="media text-muted pt-3">
                                                <img src="${following.linkImgAvatar}" alt="Online user"
                                                     class="mr-3 post-user-image">
                                                <div class="media-body pb-3 mb-0 small lh-125">
                                                    <div class="d-flex justify-content-between align-items-center w-100">
                                                        <span class="post-type text-muted"><a href="#"
                                                                                              class="text-gray-dark post-user-name mr-2">${following.firstName} ${following.lastName}</a></span>

                                                    </div>
                                                    <span class="d-block">${item.date_created }<i
                                                            class='bx bx-globe ml-3'></i></span>
                                                </div>
                                            </div>
                                            <div class="mt-3">
                                                <p>${item.text}</p>
                                            </div>
                                            <div class="d-block mt-3">
                                                <c:if test="${item.linkImgPost!=null}">
                                                    <img src="${item.linkImgPost}" class="w-100 mb-3"
                                                     alt="post image">
                                                </c:if>
                                            </div>
                                            <div class="mb-2">

                                                <!-- Reactions -->
                                                <div class="argon-reaction">
                                                        <span class="like-btn">
                                                            <a class="post-card-buttons" id="reactionsText_${item.id}"><i
                                                                    class='bx bxs-like mr-2 ${item.isLike==1?"likeIcon":" "}' id="reactions_${item.id}" onclick="onLike(${user.id},${item.id})"></i> ${item.numberOfLike}</a>

                                                        </span>
                                                </div>

                                                <a href="javascript:void(0)" class="post-card-buttons"
                                                   ><i class='bx bx-message-rounded mr-2'></i></a>

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
                                                                                                       placeholder="Write a comment..." id="wcomment_${item.id}">

                                                                                                <div class="input-group-btn">
                                                                                                    <div
                                                                                                            class="btn"
                                                                                                            onclick="creComment(${item.id}, ${following.id})"
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
                                                                                <div class="comment-see-more text-center" id="seemore_${item.id}">
                                                                                    <button onclick="showMoreComment(${item.id},${item.comments.number+1})" type="button"
                                                                                            class="btn btn-link fs-8">
                                                                                        See More
                                                                                    </button>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <div id="content_${item.id}">
                                                                            <c:forEach items="${item.comments.content}" var="icmt">
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
                                        </c:forEach>
                                    </div>
                                    <div class="col-md-3 profile-quick-media">
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
<script src="/assets/js/app.js"></script>
<script src="/assets/js/components/components.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.4/sockjs.min.js"></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
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

    function addFollowing(followingid) {
        $.ajax({
            type : "post",
            url : "/api/following/"+followingid,
            success : function(response) {
            },
            error: function (response) {

            }
        });
        var notification = {
            senderid: senderid,
            receiver: {
                id:${following.id}
            },
            type: 0,
            seen:0,
            link:'/profile/'+senderid
        };
        stompClient.send("/app/notification.private", {}, JSON.stringify(notification));
        window.location = "/profile/"+followingid;
        event.preventDefault();
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
    function deleteFollowing(followingid) {
        $.ajax({
            type : "delete",
            url : "/api/following/"+followingid,
            success : function(response) {
                window.location = "/profile/"+followingid;
            },
            error: function (response) {

            }
        });
    }
    function onNotification(payload) {
        var notification = JSON.parse(payload.body);
        var toastmes = document.getElementById("toastmes");
        var takeaction = document.getElementById("takeaction");
        if (notification.type==0) {
            takeaction.href = "/profile/"+notification.senderid;
            toastmes.textContent = notification.firstName + ' ' + notification.lastName + ' đã bắt đầu theo dõi bạn';
        }
        else if (notification.type==1) {
            takeaction.href = notification.link;
            toastmes.textContent = notification.firstName + ' ' + notification.lastName + ' đã bình luận vào bài viết của bạn';
        }
        else {
            takeaction.href = notification.link;
            toastmes.textContent = notification.firstName+' '+notification.lastName+' đã thích bài viết của bạn';
        }
        const myToastEl = document.getElementById('toast');
        const toast = new bootstrap.Toast(myToastEl);
        toast.show();
    }
    function onLike(userid, postid) {
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
                    id:${following.id}
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
                id:${following.id}
            },
            type: 1,
            seen:0,
            link:'/post/'+postId
        };
        if (notification.senderid!=notification.receiver.id) {
            stompClient.send("/app/notification.private", {}, JSON.stringify(notification));
            event.preventDefault();
        }
        if (${user.id}!=receiverId) {
            $.ajax({
                type: "post",
                url: "/api/notification",
                data: JSON.stringify(notification),
                contentType: "application/json",
                dataType: "JSON",
                success: function (response) {

                },
                error: function (response) {

                }
            });
        }
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

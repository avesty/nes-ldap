<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html ng-app="myApp">
<head lang="en">
    <meta charset="UTF-8"/>
    <!-- inject:css -->
    <link href="<c:url value='/resources/vendor/css/lib.min.css' />" rel="stylesheet"/>
    <link href="<c:url value='/resources/css/main.css' />" rel="stylesheet"/>
    <!-- endinject -->
    <title></title>
</head>
<body>

<jsp:directive.include file="navbar.jsp"/>

<div class="container">
    <div style="position: relative">
        <%--<div ng-view="" class="fade"></div>--%>
        <div class="well page">

            <h3>Admin Page: Users list</h3>

            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon glyphicon glyphicon-search"></span>
                    <input type="text" id="addon3a" class="form-control" placeholder="Search for" ng-model="query">
                </div>
            </div>

            <div id="userList">
                <div class="list-group">
                    <div class="list-group-item">
                        <div ng-repeat="user in users | filter:query" class="list-group-item" style="margin-top:16px">
                            <div class="row-picture">
                                <img class="circle"
                                     ng-src="http://i.forbesimg.com/media/lists/people/{{user.firstName | lowercase}}-{{user.familyName | lowercase}}_50x50.jpg"
                                     alt="icon">
                            </div>
                            <div class="row-content">
                                <h4 class="list-group-item-heading">{{user.firstName}} {{user.familyName}}</h4>

                                <p class="list-group-item-text"><i class="glyphicon glyphicon-envelope"></i>
                                    {{user.email}}
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- inject:js -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
<script src="<c:url value='/resources/vendor/js/lib.min.js' />"></script>

<script src="<c:url value='/resources/js/app.js' />"></script>

<script src="<c:url value='/resources/js/controllers.js' />"></script>

<script src="<c:url value='/resources/js/directives.js' />"></script>

<script src="<c:url value='/resources/js/services.js' />"></script>

<!-- endinject -->

</body>
</html>
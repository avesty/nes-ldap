<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html ng-app="myApp">
<head lang="en">
    <meta charset="UTF-8"/>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
    <script src="<c:url value='/resources/vendor/js/lib.min.js' />"></script>
    <!-- inject:css -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="<c:url value='/resources/vendor/css/lib.min.css' />" rel="stylesheet"/>
    <link href="<c:url value='/resources/css/main.css' />" rel="stylesheet"/>
    <!-- endinject -->
    <title></title>
</head>
<body>

<jsp:directive.include file="navbar.jsp"/>
<%--<div ng-include="/resources/partials/navbar.html"></div>--%>
<div class="container">
    <div style="position: relative">
        <%--<div ng-view="" class="fade"></div>--%>
        <div class="well page">

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="pull-left" style="margin-left: 16px">Welcome</h1>

                    <div class="col-sm-offset-3 col-sm-6">
                        <a href="/spring-security-ldap/app/main/admin" class="btn btn-lg btn-danger btn-block">ADMIN
                            PAGE</a>
                    </div>
                    <div class="pull-right social-icons">
                        <a target="_blank" href="https://linkedin.com/in/allahkarami"><i
                                class="fa fa-2x fa-linkedin"></i></a>
                        <a target="_blank" href="https://github.com/metao1"><i class="fa fa-2x fa-github"></i></a>
                    </div>
                </div>
                <br/>

                <div class="col-lg-12">
                    <blockquote style="margin-left: 16px">
                        <p>This is a demo project for securing an Angularjs project with over LDAP.</p>

                        <p>To access admin page to see users list and search click on <span style="font-weight: bold;">Admin Page</span>
                            button.
                        </p>

                        <p>For more information about me you can read my blog post <a
                                href="htts://angulartutorial.blogspot.com" target="_blank">here</a>.</p>
                    </blockquote>
                </div>
            </div>

            <div class="list-group">

                <div ng-repeat="techno in technos" class="list-group-item" ng-switch on="techno.logo"
                     style="margin-top:16px">
                    <div class="row-action-primary" ng-switch-when="github">
                        <i class="fa fa-github" style="font-size: 55px; color: #009688; background-color: white"></i>
                    </div>
                    <div class="row-picture" ng-switch-default>
                        <img class="circle" ng-src="resources/img/techno/{{techno.logo}}">
                    </div>
                    <div class="row-content">
                        <h4 class="list-group-item-heading">{{techno.name}}</h4>

                        <p class="list-group-item-text">{{techno.description}}</p>

                        <p class="list-group-item-text"><a target="_blank" ng-href="http://{{techno.website}}"><i
                                class="mdi-action-open-in-new mat-icon"></i>{{techno.website}}</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- inject:js -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
<script src="<c:url value='/resources/js/app.js' />"></script>

<script src="<c:url value='/resources/js/controllers.js' />"></script>

<script src="<c:url value='/resources/js/directives.js' />"></script>

<script src="<c:url value='/resources/js/services.js' />"></script>

<!-- endinject -->

</body>
</html>
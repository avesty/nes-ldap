<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html ng-app="myApp">
<head lang="en">
    <meta charset="UTF-8"/>
    <!-- inject:css -->
    <link href="<c:url value='/resources/vendor/css/lib.min.css' />" rel="stylesheet"/>
    <link href="<c:url value='/resources/css/main.css' />" rel="stylesheet"/>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css" rel="stylesheet"/>
    <!-- endinject -->
    <title></title>
</head>
<body>

<div class="container">
    <div style="position: relative">
        <%--<div ng-view="" class="fade"></div>--%>
        <div class="bg-extended">
            <div class="align-vertical-center">
                <div class="container">
                    <div class="row">
                        <div class="well col-sm-offset-3 col-sm-6">
                            <div class="well-heading well-primary">
                                <h1>Sign in your account</h1>
                            </div>
                            <form class="well-body" action="../../j_spring_security_check" method="post">
                                <div class="alert alert-dismissible alert-info">
                                    <button type="button" class="close" data-dismiss="alert">×</button>
                                    <strong>Test users!</strong> <br/>
                                    <ul>
                                        <li><strong>steve / pass</strong> with admin role</li>
                                        <li><strong>hwilliams / pass</strong> with user role</li>
                                    </ul>
                                </div>
                                <div class="form-group label-floating"
                                     ng-class="{'has-error is-focused' : authenticationError}">
                                    <label class="control-label" for="j_username">Login</label>
                                    <input id="j_username" name="j_username" type="text" class="form-control"
                                           required="required"/>
                            <span ng-show="authenticationError" class="help-block">
                                Please check your credentials and try again.
                            </span>
                                </div>
                                <div class="form-group label-floating">
                                    <label class="control-label" for="j_password">Password</label>
                                    <input id="j_password" name="j_password" type="password" class="form-control"
                                           required="required"/>
                                </div>

                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" ng-model="rememberMe"/><span> Remember me</span>
                                    </label>
                                </div>
                                <br/>

                                <div class="col-sm-offset-3 col-sm-6">
                                    <input class="btn btn-lg btn-primary btn-block" type="submit" value="Login"/>
                                </div>
                            </form>
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
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
<jsp:directive.include file="navbar.jsp"/>

<div class="container">
    <div style="position: relative">
        <%--<div ng-view="" class="fade"></div>--%>
        <div class="bg-extended">
            <div class="align-vertical-center">
                <div class="container">
                    <div class="row">
                        <div class="well col-sm-offset-3 col-sm-6">
                            <div class="well-heading alert-danger">
                                <h1>Error</h1>
                                <a href="/spring-security-ldap/app/main/applications" style="position: absolute; right: 50px; bottom:-25px"
                                   class="btn btn-primary btn-fab btn-raised mdi-action-home"></a>
                            </div>
                            <div class="well-body">
                                <h4>Access To this Page Is denied!</h4>
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
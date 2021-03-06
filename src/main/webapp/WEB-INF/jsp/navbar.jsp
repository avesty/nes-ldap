<div class="navbar navbar-default" >
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="javascript:void(0)">Brand</a>
    </div>
    <div class="navbar-collapse collapse navbar-responsive-collapse">
        <ul class="nav navbar-nav">
            <li><a href="#/home" class="mdi-action-home"></a></li>
            <li><a href="#/users">Users</a></li>
            <li><a href="#/apiDoc">API Doc.</a></li>
            <li><a href="#/tokens" access="admin">Sessions</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <a href="javascript:void(0)" data-target="#" class="dropdown-toggle" data-toggle="dropdown">
                    <img class="img-circle profile-image"
                         ng-src="http://i.forbesimg.com/media/lists/people/steve-jobs_50x50.jpg" >
                    {{account.firstName}} {{account.lastName}}
                    <b class="caret"></b></a>
            </li>
            <li class="dropdown">
                <a href="spring-security-ldap/app/auth/logout"><i class="glyphicon glyphicon-off"></i> Sign out</a></li>
            </li>
        </ul>
    </div>
</div>
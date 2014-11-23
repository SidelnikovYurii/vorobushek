<#macro layout title="Switter" userName="" yandexLoginUrl="">
<html>
<head>
    <script src="/public/jquery/js/jquery.min.js" type="text/javascript"></script>
    <link href="/public/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <script src="/public/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <link href="/public/app/css/main.css" type="text/css" rel="stylesheet"/>

    <title>${title}</title>
</head>
<body>
<header>
    <nav class="navbar navbar-logo navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand-img" href="/">
                    <img alt="Brand" src="/public/app/img/sparow.png">
                </a>
                <a class="navbar-brand" href="/">VOROBUSHEK</a>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <#if userName?has_content>
                    <form class="navbar-form navbar-left" method="Post" action="/logout">
                        <a href=${yandexLoginUrl}><h3><span class="label label-success">${userName}</span></h3></a>
                        <button type="submit" class="btn btn-danger">Logout</button>
                    </form>
                <#else>
                    <a href=${yandexLoginUrl}>Login as yandex user</a>
                </#if>
            </ul>
        </div>
    </nav>
    <nav class="navbar navbar-menu navbar-fixed-top" role="navigation">
        <div class="container">
            <ul class="nav navbar-nav">
                <li><a href="/">All Posts</a></li>
            </ul>
            <form class="navbar-form navbar-left" method="GET" action="/post/new">
                <button type="submit" class="btn btn-default">Create</button>
            </form>
        </div>
    </nav>
</header>
<div class="content">
    <div class="container">
        <#nested />
    </div>
</div>
<footer>
</footer>
</body>
</#macro>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <title>Locadora de Veiculos</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta content="" name="description"/>
    <meta content="" name="author"/>

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/plugins/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/plugins/simple-line-icons/simple-line-icons.min.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/plugins/bootstrap-3.3.5/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/plugins/uniform/css/uniform.default.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/css/login.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/css/components.css"/>" id="style_components" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/css/plugins.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/layout/css/layout.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/resources/layout/css/themes/darkblue.css"/>" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="<c:url value="/resources/layout/css/custom.css"/>" rel="stylesheet" type="text/css"/>
    <link rel="shortcut icon" href="favicon.ico"/>
</head>

<body class="login">

<div class="menu-toggler sidebar-toggler">
</div>

<!-- LOGO -->
<div class="logo">
    <a href="index.html">
        <img src="" alt=""/>
    </a>
</div>

<div class="content">
    <form class="login-form" action="/Locadora/login_check" method="post">
        <h3 class="form-title">Bem Vindo</h3>
        <div class="alert alert-danger display-hide">
            <button class="close" data-close="alert"></button>
			<span>Entre com qualquer Email e Senha.</span>
        </div>
        <div class="form-group">
            <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
            <label class="control-label visible-ie8 visible-ie9">E-mail</label>
            <input class="form-control form-control-solid placeholder-no-fix" type="text" autocomplete="off" placeholder="Email" name="email"/>
        </div>
        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">Senha</label>
            <input class="form-control form-control-solid placeholder-no-fix" type="password" autocomplete="off" placeholder="Senha" name="senha"/>
        </div>
        <div class="form-actions">
            <button type="submit" class="btn btn-success uppercase">Enviar</button>
        </div>
    </form>
</div>
<div class="copyright">
    2015 © Trabalho de Desenvolvimento de Sistemas de Informação.
</div>


<!--[if lt IE 9]>
<script src=" /resources/plugins/respond.min.js"></script>
<script src="/resources/plugins/excanvas.min.js"></script>
<![endif]-->

<script src="<c:url value="/resources/plugins/jquery-2.1.4/jquery-2.1.4.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/plugins/jquery-migrate.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/plugins/bootstrap-3.3.5/js/bootstrap.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/plugins/jquery.blockui.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/plugins/jquery.cokie.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/plugins/uniform/jquery.uniform.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/plugins/jquery-validation/js/jquery.validate.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/scripts/metronic.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/layout/scripts/layout.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/layout/scripts/demo.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/js/login.js"/>" type="text/javascript"></script>

<script>
    jQuery(document).ready(function() {
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
        Login.init();
        Demo.init();
    });
</script>

</body>
</html>
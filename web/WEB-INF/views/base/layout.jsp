<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
  <meta http-equiv="Content-type" content="text/html; charset=utf-8">
  <meta content="" name="description"/>
  <meta content="" name="author"/>

  <!-- BEGIN GLOBAL MANDATORY STYLES -->
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
  <link href="<c:url value="/resources/plugins/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css"/>
  <link href="<c:url value="/resources/plugins/simple-line-icons/simple-line-icons.min.css"/>" rel="stylesheet" type="text/css"/>
  <link href="<c:url value="/resources/plugins/bootstrap-3.3.5/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css"/>
  <link href="<c:url value="/resources/plugins/uniform/css/uniform.default.css"/>" rel="stylesheet" type="text/css"/>
  <link href="<c:url value="/resources/plugins/bootstrap-switch/css/bootstrap-switch.min.css"/>" rel="stylesheet" type="text/css"/>
  <!-- END GLOBAL MANDATORY STYLES -->

  <!-- BEGIN THEME STYLES -->
  <link href="<c:url value="/resources/css/components.css" />" id="style_components" rel="stylesheet" type="text/css"/>
  <link href="<c:url value="/resources/css/plugins.css"/>" rel="stylesheet" type="text/css"/>
  <link href="<c:url value="/resources/layout/css/layout.css"/>" rel="stylesheet" type="text/css"/>
  <link id="style_color" href="<c:url value="/resources/layout/css/themes/darkblue.css"/>" rel="stylesheet" type="text/css"/>
  <link href="<c:url value="/resources/layout/css/custom.css"/>" rel="stylesheet" type="text/css"/>
  <!-- END THEME STYLES -->

  <link rel="stylesheet" href="<c:url value="/resources/plugins/bootstrap-3.3.5/css/bootstrap.min.css" />">
  <title><tiles:insertAttribute name="title" ignore="true" /></title>
</head>
<body>

<!-- HEADER -->
<div class="row">
  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
      <tiles:insertAttribute name="header" />
  </div>
</div>

<!-- MENU / BODY -->
<div class="row">
  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
      <tiles:insertAttribute name="menu" />
  </div>

  <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
      <tiles:insertAttribute name="body" />
  </div>
</div>

<%--<div class="row">--%>
  <%--<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">--%>
      <%--<tiles:insertAttribute name="footer" />--%>
  <%--</div>--%>
<%--</div>--%>


<script type="text/javascript" src="<c:url value="/resources/plugins/jquery-2.1.4/jquery-2.1.4.min.js"/>"/>
<script src="<c:url value="/resources/plugins/jquery-migrate.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/plugins/jquery-ui/jquery-ui.min.js"/>" type="text/javascript"></script>
<script type="text/javascript" src="<c:url value="/resources/plugins/bootstrap-3.3.5/js/bootstrap.min.js" />" />

<script src="<c:url value="/resources/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/plugins/jquery-slimscroll/jquery.slimscroll.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/plugins/jquery.blockui.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/plugins/jquery.cokie.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/plugins/uniform/jquery.uniform.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/plugins/bootstrap-switch/js/bootstrap-switch.min.js" />" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<script src="<c:url value="/resources/scripts/metronic.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/layout/scripts/layout.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/layout/scripts/quick-sidebar.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/layout/scripts/demo.js"/>" type="text/javascript"></script>
<script>
  jQuery(document).ready(function() {
    Metronic.init(); // init metronic core components
    Layout.init(); // init current layout
    QuickSidebar.init(); // init quick sidebar
    Demo.init(); // init demo features
  });
</script>

</body>
</html>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="page-header navbar">
    <div class="page-header-inner">

        <div class="page-logo">
            <a href="index.html">
                <img src="<c:url value="/resources/layout/img/logo.png"/>" alt="logo" class="logo-default"/>
            </a>
            <div class="menu-toggler sidebar-toggler hide">
                <!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
            </div>
        </div>
        <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"></a>

        <div class="top-menu">
            <ul class="nav navbar-nav pull-right">
                <li class="dropdown">
                    <a href="javascript:;" class="dropdown-toggle">
                        <i class="icon-logout"></i>
                    </a>
                </li>
            </ul>
        </div>

    </div>
</div>
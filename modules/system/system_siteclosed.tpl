<!DOCTYPE html>
<html lang="<{$xoops_langcode}>">
<head>
    <!--目前$_SESSION['bootstrap']="<{php}>echo $_SESSION['bootstrap'];<{/php}>"; -->
    <!--將目前的資料夾名稱，設定為樣板標籤變數 theme_name-->
    <{assign var=theme_name value=$xoTheme->folderName}>

    <!--載入由使用者設定的各項佈景變數-->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/get_var.tpl"}>

    <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/meta.tpl"}>
    <!-- 網站的標題及標語 -->
    <title><{$xoops_sitename}> - <{$xoops_pagetitle}></title>

    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/link_css.tpl"}>

    <link href="<{xoImgUrl styles/custom.css}>" rel="stylesheet" type="text/css" />

    <!-- 給模組套用的樣板標籤 -->
    <{$xoops_module_header}>
    <script src="<{$xoops_url}>/browse.php?Frameworks/jquery/jquery.js" type="text/javascript"></script>
    <script src="<{$xoops_url}>/modules/tadtools/jquery/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="<{$xoops_url}>/modules/tadtools/jquery/ui/jquery-ui.js" type="text/javascript"></script>
    <script src="<{$xoops_url}>/modules/tadtools/fancyBox/lib/jquery.mousewheel-3.0.6.pack.js" type="text/javascript"></script>

    <!-- 局部套用的樣式，如果有載入完整樣式 theme_css.tpl 那就不需要這一部份 -->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/theme_css.tpl"}>

    <style type="text/css">
    body{
      font-family:<{$font_family}>;
    }
    </style>

</head>


<body id="pageBody">

    <div id="divBoxed" class="container">

        <div class="transparent-bg" style="position: absolute;top: 0;left: 0;width: 100%;height: 100%;z-index: -1;zoom: 1;"></div>

        <div class="divPanel notop nobottom">
            <div class="row">
                <div id="divLogo" class="col-sm-4 text-left">
                    <{if $logo_img}>
                        <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/logo.tpl"}>
                    <{else}>
                        <a href="<{$xoops_url}>" id="divSiteTitle"><{$xoops_sitename}></a><br />
                        <a href="<{$xoops_url}>" id="divTagLine"><{$xoops_slogan}></a>
                    <{/if}>
                </div>

                <div id="divMenuRight" class="col-sm-8">
                    <div style="margin-top: 67px;" class="pull-right">
                        <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/menu/nav-pills/menu.tpl"}>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-12">
                    <div id="contentInnerSeparator"></div>
                </div>
            </div>

            <{if $slide_width!=0}>
                <div class="row">
                    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/slideshow_responsive.tpl"}>
                </div>
            <{/if}>
        </div>


        <div class="contentArea">

            <div class="divPanel notop page-content">

                <!--主內容區-->
                  <div class="row">
                    <div class="col-sm-12">
                      <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/siteclosed_login.tpl"}>
                    </div>
                  </div>

                <div id="footerInnerSeparator"></div>
            </div>
        </div>

        <div id="footerOuterSeparator"></div>

        <div id="divFooter" class="footerArea" style="background: <{$footer_bgcolor}> url('<{$footer_img}>');">

            <div class="divPanel">

                <{$xoops_footer}>

            </div>
        </div>
    </div>

    <!-- 載入 BootStrap所需的javascript -->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/bootstrap_js.tpl"}>

    <!-- 載入自訂的javascript -->
    <{includeq file="$xoops_rootpath/modules/tadtools/themes3_tpl/my_js.tpl"}>

    <!-- 是否顯示樣板變數資訊 -->
    <{if $show_var==1}>
    <{includeq file="$xoops_rootpath/modules/tadtools/themes_common/show_var.tpl"}>
    <{/if}>

</body>
</html>
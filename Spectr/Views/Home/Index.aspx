<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>NPPF Spectr</title>
	<meta name="description" content="Thoughts, stories and ideas." />
	<meta name="keywords" content="">
	<meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1, user-scalable=no" />
	<!-- fav icons -->
	<link rel="shortcut icon" href="content/images/favicon.ico">
	<link rel="apple-touch-icon" href="Content/images/apple-touch-icon.png?v=1c3364e6d2">
	<link rel="apple-touch-icon" sizes="72x72" href="Content/images/apple-touch-icon-72x72.png?v=1c3364e6d2">
	<link rel="apple-touch-icon" sizes="114x114" href="Content/images/apple-touch-icon-114x114.png?v=1c3364e6d2">
	<!-- stylesheets -->
	<title>Document</title>
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="Content/css/bootstrap.min.css?v=1c3364e6d2">
	<link rel="stylesheet" href="Content/css/font-awesome.min.css?v=1c3364e6d2">
	<link rel="stylesheet" type="text/css" href="Content/css/hl-styles/monokai_sublime.css?v=1c3364e6d2">
	<link rel="stylesheet" type="text/css" href="Content/css/screen.css?v=1c3364e6d2">

	<script>
</script>    
   

</head>
<body class="home-template">
	<div class="page-wrap" style="background-image: url(content/images/bg-2.jpg)" >
	<div class="overlay">
		<!-- start header -->
		<header class="main-header">
			<!-- start navbar -->
			<div class="navbar-wrap navbar-fixed-top">
				<div class="container">
					<div class="row">
					<div class="main-nav">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
			            	</button>
			            	</div>
<div id="navbar" class="navbar-collapse collapse">
	<ul class="nav navbar-nav">
		<li data-item="index" class="home"><a href="/home/index">Спектр</a></li>
		<li data-item="features" class="features"><a href="#">Проекты</a>
            <ul class="nav sub-nav">
		      <li data-item="" class="home"><a href="/home/about">Ирридиум</a></li>
		      <li data-item="" class="features"><a href="/home/adsb">АЗНВ прогноз</a></li>
	       </ul>
        </li>
		<li data-item="about" class="about"><a href="/home/about">О нас</a></li>
		<li data-item="contact" class="contact"><a href="/home/contact">Контакты</a></li>
	</ul>
</div>
						<a class="search-open" href="#"><i class="fa fa-envelope"></i></a>
<div class="search-wrap">
	<a class="search-close" href="#"><i class="fa fa-close"></i></a>
	<form class="search-form">
		<input id="search-field" type="text" placeholder="Оставить сообщение" class="search-input">
	</form>
</div>
<div id="search-result"></div>					</div>
					</div>
				</div>
			</div>
			<!-- end navbar -->
			<div class="container">
				<div class="row branding">
					<div class="logo-wrap">
						<!-- start logo -->
                        <svg style="width:100px;height:90px;">
                            <path fill="#FFF" d="M72.804,40.563c4.036,0,8.092-0.521,12.101-0.01c0.942,0.164,1.801,0.182,2.763,0.538   c0.877,0.326,2.04,0.767,1.767,1.428c-0.464,1.125-1.496,2.383-2.696,2.782c-1.254,0.415-1.425,0.754-2.935,1.086   c2.4,0.46,6.677-0.634,6.763-3.423c0.009-0.32-0.005-0.976-0.149-1.261c-0.979-1.947-6.257-3.002-10.847-2.901   c-3.032,0.066-6.1-0.068-9.105-0.062c-3.258,0.01-5.783,0.201-8.474,0.471c-1.272-2.92-2.433-8.083-4.629-10.517   c-1.216-1.343-2.199-0.984-3.164,0.554c-2.025,3.219-2.397,7.187-2.661,10.922c-4.718,0.621-9.434,1.285-14.132,2.014   C38.07,42.248,67.728,40.564,72.804,40.563z M55.986,29.938c1.164-0.206,2.51,4.298,4.676,9.279   c-2.885,0.147-5.12,0.318-8.654,0.935C52.687,37.019,54.127,30.135,55.986,29.938z" data-part-id="logo__item--logo_0__0"></path>
	<path fill="#FFF" d="M28.329,51.034c0.909-0.564,1.456-1.645,1.807-1.708c3.556-0.094,7.114,0.044,10.677,0.043   c9.982-0.003,19.898-1.626,29.789-2.977c2.104-0.175,8.698-1.052,8.968-1.892c-1.688-0.033-49.443,3.784-50.732,3.807   c-2.419-0.01-4.876,0.109-7.251-0.343c-1.403-0.43-1.153-2.684-0.834-3.907c-1.36-2.831-6.42-9.135-7.116-9.558   c0.165,0.867,5.349,7.402,5.23,10.568c0.033,0.566,0.053,1.125,0.057,1.69c0.374,1.135,1.015,2.179,1.332,3.328   c-4.632,2.725-9.095,5.766-13.813,8.336c1.579,0.109,4.263,0.231,6.388,0.435C18.044,56.354,23.412,54.087,28.329,51.034z    M23.122,50.291c0.678-0.566,1.415-0.581,2.334-0.605c0.819-0.013,1.65,0.006,2.479,0.063c-0.611,1.242-2.1,1.605-3.238,2.119   c-2.016,0.908-4.118,1.92-6.331,2.141C19.644,52.705,21.674,51.433,23.122,50.291z" data-part-id="logo__item--logo_0__1"></path>
	<path fill="#FFF" d="M92.883,43.514c0.448,0.801,0.369,1.474-0.079,1.85c-4.992,4.15-14.289,4.101-21.647,4.504   c-2.522,0.327-5.064,0.332-7.59,0.478c-3.824-0.166-15.871,1.98-21.398,2.248c-1.335,0.063-4.257,0.177-5.765-0.043   c-1.933-0.28-2.863-0.181-5.761-0.67c3.294,1.728,10.705,1.863,12.068,1.784c4.623-0.268,7.922-0.834,13.385-1.467   C44.122,58.416,32.166,63.44,19.69,68.566c-0.74,0.334-1.517,0.591-2.337,0.581c4.333-3.06,18.72-12.327,18.639-12.472   c-1.93,1.143-19.066,10.665-25.656,14.387c-0.892,0.531-1.769,1.101-2.509,1.827c6.701,0.777,12.736-2.697,18.806-4.959   c3.875-1.622,7.78-3.188,11.537-5.101c0.455-0.197,1.292-0.624,1.626-0.029c1.656,4.048,6.628,4.332,9.239,3.761   c0.996-0.216,2.667-0.998,2.614-2.072c-0.313,0.461-1.068,0.728-1.47,0.421c-1.098-0.83-0.61-4.464,1.467-3.421   c-0.083-2.704-4.389-0.66-5.203-2.646c3.363-1.483,6.547-3.34,9.933-4.786c2.66-1.267,2.978-2.019,6.956-2.074   c0.742-0.011,8.642-0.372,11.497-0.358c6.597-0.41,15.393-1.853,18.957-5.741C94.379,45.235,94,43.756,92.883,43.514z    M47.461,60.773c0.284-0.096,0.887-0.149,1.181-0.202c-0.273,1.605-0.703,3.304,0.04,4.827c-2.011-0.33-4.786,0.139-6.057-1.539   C40.81,61.461,45.843,61.329,47.461,60.773z" data-part-id="logo__item--logo_0__2"></path>
	<path fill="#FFF" d="M15.447,33.248c3.328,2.594,6.381,5.781,10.57,6.951c2.075-0.18,4.11-0.885,6.139-1.403   c-0.117,2.384,0.129,3.192,0.91,4.68c-3.817,0.632-7.515,2.02-11.422,2.035c2.475,1.625,7.852,0.852,11.093-0.442   c1.411-0.562,3.028-1.696,3.269-3.333c-0.635,0.199-1.274,0.417-1.938,0.417c-0.005-0.844-0.005-2.532-0.005-3.376   c0.669,0.015,1.309,0.223,1.948,0.432c-0.081-0.801-0.708-1.85-1.506-1.807c-2.568,0.142-5.069,0.379-7.573,0.798   c-1.428,0.016-5.516-2.558-7.609-4.106c-1.755-1.297-3.595-3.371-6.041-2.358C12.552,32.036,14.46,32.568,15.447,33.248z" data-part-id="logo__item--logo_0__3"></path>
                        </svg>
                         <a class="logo" href="#">Spectr</a>
						<!-- end logo -->
					</div>
				</div>
			</div>
		</header>
		<!-- end header -->

	
<!-- start main content area -->
<div class="container">
	<div class="item-container clearfix">
		<!-- start article -->
		<article id="10" class="item post-wrap post tag-getting-started tag-feature">
			<div class="featured-media">
				<a href="/little-about-this-theme/" title="post-title"><img src="content/images/irr.jpg" alt="Irridium Project"></a>
			</div>
			<header class="post-header">
<!--
				<div class="post-meta">
					<span class="date"></span> &#45;
					<span class="author"><a href="/author/biswajit/" title="Biswajit Saha"></a></span>
				</div>
-->
				<h2 class="post-title"><a href="/little-about-this-theme/">Спектр Иридиум</a></h2>
			</header>
			<div class="post-content">
				<p>Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст м Текст Текст</p>
			</div>
<!--
			<div class="tag-list">
				
				Tags:&nbsp;<a href="/tag/getting-started/">Getting Started</a>, <a href="/tag/feature/">Feature</a>
			</div>
-->
			<div class="permalink">
				<a href="/little-about-this-theme/" class="btn btn-default">Подробнее</a>
			</div>
			<footer class="post-footer clearfix">

			</footer>
		</article>
		<!-- end article -->
		<!-- start article -->
		<article id="9" class="item post-wrap post tag-text tag-feature">
			<div class="featured-media">
				<a href="/vasha-theme-is-content-focus/" title="post-title"><img src="content/images/rcm.jpg" alt="Regional Monitoring Centre"></a>
			</div>
			<header class="post-header">

				<h2 class="post-title"><a href="/vasha-theme-is-content-focus/">Центр мониторинга</a></h2>
			</header>
			<div class="post-content">
				<p>Текст Текст Текст Текст Текст Текст Текст Текст Текст Текст м Текст Текст</p>
			</div>

			<div class="permalink">
				<a href="/vasha-theme-is-content-focus/" class="btn btn-default">Подробнее</a>
			</div>
			<footer class="post-footer clearfix">

			</footer>
		</article>

	</div>
</div>
<!-- end main content area -->
<!-- start pagination -->
<div class="container">
<!--
	<div class="pagination-wrap">
		<div class="pagination clearfix" role="navigation">
	        <span class="page-number">Page 1 of 3</span>
	        <a class="older-posts" href="/page/2/">Older Posts <i class="fa fa-long-arrow-right fa-fw"></i></a>
	    </div>
	</div>
-->
</div>
<!-- end pagination -->

	<!-- start footer -->
			<footer class="main-footer">
				<div class="container">
					<div class="row">
                        <div class="copyright">
                            Copyright &copy; 2015, <a href="http://vasha-ghost.gbjsolution.com">Spectr</a>. All Right Reserved.
                        </div>					    
                    </div>
				</div>
			</footer>
			<!-- end footer -->
		</div>
	</div>

    <script src="Scripts/jquery.min.js"></script>
	<script src="Scripts/jquery-1.11.3.min.js"></script>
	<script src="Scripts/bootstrap.min.js"></script>
	<script src="scripts/imagesloaded.pkgd.min.js"></script>
	<script src="Scripts/masonry.pkgd.min.js"></script>
	<script src="Scripts/jquery.fitvids.js"></script>
	<script src="Scripts/highlight.pack.js"></script>
	<script src="Scripts/jquery.ghostHunter.min.js"></script>
	<script src="Scripts/main.js"></script>
</body>
</html>
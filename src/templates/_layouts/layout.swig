<!DOCTYPE html>
<html>
<head>
    <title>{% block title %}My Site{% endblock %}</title>
    {% block head %}
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

	  <link href="https://fonts.googleapis.com/css?family=Work+Sans:600" rel="stylesheet">
	  <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	  <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- CSS -->
  	<!-- build:css css/main.css -->
	  	<link rel="stylesheet" href="css/index.css">
  	<!-- endbuild -->
    {% endblock %}
</head>

<body>

	<header>
		<h2><a href="#">Reachout Rick</a></h2>
		<nav>
			<li><a href="#">Home</a></li>
			<li><a href="#">Products</a></li>
			<li><a href="#">About</a></li>
			<li><a href="#">Contacts</a></li>
		</nav>
	</header>

  {% block content %}{% endblock %}

	<footer>
		<ul>
			<li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
			<li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
			<li><a href="#"><i class="fa fa-snapchat-square"></i></a></li>
			<li><a href="#"><i class="fa fa-pinterest-square"></i></a></li>
			<li><a href="#"><i class="fa fa-github-square""></i></a></li>
		</ul>
		<p>Made by <a href="http://tutorialzine.com/" target="_blank">tutorialzine</a>. images courtesy to <a href="http://unsplash.com/" target="_blank">unsplash</a>.</p>
		<p>No attribution required. you can remove this footer.</p>
	</footer>

	<!-- build:js js/main.js -->
	<script type="text/javascript" src="js/1.js"></script> 
	<script type="text/javascript" src="js/2.js"></script> 
	<!-- endbuild -->

</body>

</html>


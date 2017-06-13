{% extends '_layouts/layout.swig' %}

{% block title %}Shanit Adam. Fashion Designer.{% endblock %}

{% block head %}
  {% parent %}
  <meta name="description" content="Shanit Adam. Fashion Designer">
{% endblock %}

{% block content %}
	<section class="hero">
		<h1>Shanit - Adam</h1>
		<h3>Fashion Designer.</h3>
	</section>
	<section class="contact">
		<h1>Talk to us</h1>
		<form id="gform" method="POST" action="https://script.google.com/macros/s/AKfycbwz047lYjPw5z-wO7HBCZF-bx3lUj7JVrp7yKCJP6vb26qMWBA/exec">
				<input id="site" name="site" type="hidden" value="shanitadam.com" />
				<input id="email" name="email" placeholder="email" type="email" />
			<input type="submit" value="Submit">
		</form>
		<div style="display:none;" id="thankyou_message">
			<h2><em>Thanks</em> for cotacting us! we will get back to you soon!</h2>
		</div>
	</section>
{% endblock %}
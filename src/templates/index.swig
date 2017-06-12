{% extends '_layouts/layout.swig' %}

{% block title %}Home{% endblock %}

{% block head %}
  {% parent %}
  <meta name="description" content="This is an example of a meta description. This will often show up in search results.">
{% endblock %}

{% block content %}

	<section class="hero">
		
		<h1>Gather valuble customer input<br/>by just sending an <a href="email">email</a></h1>
		<a href="http://tutorialzine.com/2016/06/freebie-landing-page-template-with-flexbox/" class="btn">Try now</a>
		<h3>Just send an email with your questions to rick and he will automaticaly turn it to a beautiful <a href="">lead form</a> or <a href="#">survay</a> and gether results.</h3>
		<img width="300" src="img/rick.gif" alt="rick"/>
	</section>

	<section class="why">
		
		<div class="container">
			<div class="column">
				
				<h2>Simple and Quick to create</h2>
				<p>Rick knows how to convert simple intuitive text questions into fab looking forms.</p>
				<a href="dd" class="btn">Abracadabra!</a>
				<br/><br/><br/>
				<img src="img/email.png" alt="ddd" />
			</div>
			<div class="column">
			</div>
		</div>
	</section>

	<section class="why">
		<div class="container">
			<div class="column">
				<h2>Add some color and branding!</h2>
				<p>You can select colors, fonts, add images and logos and customize what rick made to work with your branding.</p>
			</div>
			<div class="column">
				<img src="img/1.jpg" alt="ddd" />
			</div>
		</div>
	</section>

	<section class="why">
		<div class="container">
			<div class="column">
				<img width="400px" src="img/1.jpg" alt="ddd" />
			</div>

			<div class="column">
				<h2>Add some color and branding!</h2>
				<p>You can select colors, fonts, add images and logos and customize what rick made to work with your branding.</p>
			</div>
		</div>
	</section>
	<section class="features">
		<h3 class="title">Features and services</h3>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id felis et ipsum bibendum ultrices. Morbi vitae pulvinar velit. Sed aliquam dictum sapien, id sagittis augue malesuada eu.</p>
		<hr>

		<ul class="grid">
			<li>
				<i class="fa fa-camera-retro"></i>
				<h4>Photography</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id felis et ipsum bibendum ultrices vitae pulvinar velit.</p>
			</li>
			<li>
				<i class="fa fa-cubes"></i>
				<h4>Web Development</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id felis et ipsum bibendum ultrices vitae pulvinar velit.</p>
			</li>
			<li>
				<i class="fa fa-newspaper-o"></i>
				<h4>Content Editing</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id felis et ipsum bibendum ultrices vitae pulvinar velit.</p>
			</li>
		</div>
	</section>


	<section class="reviews">
		<h3 class="title">What others say:</h3>

		<p class="quote">Mauris sit amet mauris a arcu eleifend ultricies eget ut dolor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
		<p class="author">— Patrick Farrell</p>

		<p class="quote">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id felis et ipsum bibendum ultrices. Morbi vitae pulvinar velit. Sed aliquam dictum sapien, id sagittis augue malesuada eu.</p>
		<p class="author">— George Smith</p>

		<p class="quote">Donec commodo dolor augue, vitae faucibus tortor tincidunt in. Aliquam vitae leo quis mi pulvinar ornare. Integer eu iaculis metus.</p>
		<p class="author">— Kevin Blake</p>

		
	</section>


	<section class="contact">
		<h3 class="title">Join the private beta!</h3>	
		<p>We are rolling out Rick's services to selected customers. Add your email to get an invite.</p>
		<hr>

		<form>
			<input type="email" placeholder="Email">
			<a href="#" class="btn">Let's rock!</a>
		</form>
	</section>

{% endblock %}
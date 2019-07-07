<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
	var i;
	var slides = document.getElementsByClassName("mySlides");
	for (i = 0; i < slides.length; i++) {
		slides[i].style.display = "none";
	}
	slideIndex++;
	if (slideIndex > slides.length) { slideIndex = 1 }
	slides[slideIndex - 1].style.display = "block";
	setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
</head>
<body>
	<header class="nn-header row">
		<div class="nn-company">
			<h1>Online shopping mall</h1>
			<h5>The center point of the professional programming</h5>
			<button onclick="showSlides()">Try it</button>

			<img class="mySlides pull-right"
				src="/static/images/car/Ford Ranger XLS 2.2L 4x2 AT.jpg" /> <img
				class="mySlides pull-right"
				src="/static/images/car/Ford-Ranger-Raptor-2019.jpg" /> <img
				class="mySlides pull-right"
				src="/static/images/car/honda-brv-2019.jpeg" />
		</div>

	</header>
</body>
</html>
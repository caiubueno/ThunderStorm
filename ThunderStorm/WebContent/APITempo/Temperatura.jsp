<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<<<<<<< HEAD
<div class="hg-weather" data-key=3d4e849a"
=======
<div class="hg-weather" data-key="30a39820"
>>>>>>> 559715a900ed2cd1cf902866f09c13ac3b92b4b5
	data-woeid="${endereco.cidade}">
	<span hidden data-weather="message">Obtendo...</span> <span
		hidden data-weather="city">Obtendo cidade</span> <span 
		data-weather="temp">00</span>� C<br> <span
		hidden data-weather="description">Obtendo tempo...</span><br> <small
		hidden class="form-text text-muted">Nascer do Sol: <span
		hidden data-weather="sunrise">00:00</span> - P�r do Sol: <span
		hidden data-weather="sunset">00:00</span><br></small> <small
		hidden class="form-text text-muted">Velocidade do vento: <span
		hidden data-weather="wind_speedy">-- km/h</span><br></small> <img
		hidden src="http://assets.api.hgbrasil.com/weather/images/44.png"
		data-weather="image">
</div>
<script>
	document.addEventListener("DOMContentLoaded", function() {
		HGWeather.initialize();
	});
</script>
</html>
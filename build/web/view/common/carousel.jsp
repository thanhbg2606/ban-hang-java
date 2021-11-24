<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active" style="height: 880px">
				<img class="d-block w-100"
					src='<c:url value="/image/laptop2.jpg"></c:url>' alt="First slide">
			</div>
			<div class="carousel-item" style="height: 880px">
				<img class="d-block w-100"
					src='<c:url value="/image/laptop3.jpg"></c:url>' alt="First slide">
			</div>
			<div class="carousel-item" style="height: 880px">
				<img class="d-block w-100"
					src='<c:url value="/image/laptop4.jpg"></c:url>' alt="First slide">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
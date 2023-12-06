
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home(index).aspx.cs" Inherits="Projet_De_Fin_Detude.WebForm1" %>
<%@ MasterType VirtualPath="~/Site1.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <!--start slider section-->
		<section class="slider-section">
			<div class="first-slider">
				<div id="carouselExampleDark" class="carousel slide" data-bs-ride="carousel">
					<ol class="carousel-indicators">
						<li data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active"></li>

						<li data-bs-target="#carouselExampleDark" data-bs-slide-to="1"></li>
						<li data-bs-target="#carouselExampleDark" data-bs-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<div class="row d-flex align-items-center">
								<div class="col d-none d-lg-flex justify-content-center">
									<div class="">
										<h3 class="h3 fw-light">Has just arrived!</h3>
										<h1 class="h1">Huge Summer Collection</h1>
										<p class="pb-3">Swimwear, Tops, Shorts, Sunglasses &amp; much more...</p>
										<div class=""> <a class="btn btn-light btn-ecomm" >Shop Now <i class='bx bx-chevron-right'></i></a>
										</div>
									</div>
								</div>
								<div class="col">
									<img src="assets/images/slider/04.png" class="img-fluid" alt="...">
								</div>
							</div>
						</div>
						<div class="carousel-item">
							<div class="row d-flex align-items-center">
								<div class="col d-none d-lg-flex justify-content-center">
									<div class="">
										<h3 class="h3 fw-light">Hurry up! Limited time offer.</h3>
										<h1 class="h1">Women Sportswear Sale</h1>
										<p class="pb-3">Sneakers, Keds, Sweatshirts, Hoodies &amp; much more...</p>
										<div class=""> <a class="btn btn-white btn-ecomm" >Shop Now <i class='bx bx-chevron-right'></i></a>
										</div>
									</div>
								</div>
								<div class="col">
									<img src="assets/images/slider/05.png" class="img-fluid" alt="...">
								</div>
							</div>
						</div>
						<div class="carousel-item">
							<div class="row d-flex align-items-center">
								<div class="col d-none d-lg-flex justify-content-center">
									<div class="">
										<h3 class="h3 fw-light">Complete your look with</h3>
										<h1 class="h1">New Men's Accessories</h1>
										<p class="pb-3">Hats &amp; Caps, Sunglasses, Bags &amp; much more...</p>
										<div class=""> <a class="btn btn-dark btn-ecomm" href="javascript:;">Shop Now <i class='bx bx-chevron-right'></i></a>
										</div>
									</div>
								</div>
								<div class="col">
									<img src="assets/images/slider/03.png" class="img-fluid" alt="...">
								</div>
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleDark" role="button" data-bs-slide="prev">	<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</a>
					<a class="carousel-control-next" href="#carouselExampleDark" role="button" data-bs-slide="next">	<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</a>
				</div>
			</div>
		</section>
		<!--end slider section-->

	<!-------------------------------------------------------------------------------------------------------------------------------------------------->
		<!--start page wrapper -->
		<div class="page-wrapper">
			<div class="page-content">
				<!--start information-->
				<section class="py-3 border-top border-bottom">
					<div class="container">
						<div class="row row-cols-1 row-cols-lg-3 row-group align-items-center">
							<div class="col p-3">
								<div class="d-flex align-items-center">
									<div class="fs-1 text-white">	<i class='bx bx-taxi'></i>
									</div>
									<div class="info-box-content ps-3">
										<h6 class="mb-0">FREE SHIPPING &amp; RETURN</h6>
										<p class="mb-0">Free shipping on all orders over $49</p>
									</div>
								</div>
							</div>
							<div class="col p-3">
								<div class="d-flex align-items-center">
									<div class="fs-1 text-white">	<i class='bx bx-dollar-circle'></i>
									</div>
									<div class="info-box-content ps-3">
										<h6 class="mb-0">MONEY BACK GUARANTEE</h6>
										<p class="mb-0">100% money back guarantee</p>
									</div>
								</div>
							</div>
							<div class="col p-3">
								<div class="d-flex align-items-center">
									<div class="fs-1 text-white">	<i class='bx bx-support'></i>
									</div>
									<div class="info-box-content ps-3">
										<h6 class="mb-0">ONLINE SUPPORT 24/7</h6>
										<p class="mb-0">Awesome Support for 24/7 Days</p>
									</div>
								</div>
							</div>
						</div>
						<!--end row-->
					</div>
				</section>
				<!--end information-->

	<!-------------------------------------------------------------------------------------------------------------------------------------------------->
				<!--start pramotion-->
				<section class="py-4">
					<div class="container">
						<div class="row row-cols-1 row-cols-lg-2 row-cols-xl-3">
							<div class="col">
								<div class="card rounded-0">
									<div class="row g-0 align-items-center">
										<div class="col">
											<img src="assets/images/promo/01.png" class="img-fluid" alt="" />
										</div>
										<div class="col">
											<div class="card-body">
												<h5 class="card-title text-uppercase">Mens' Wear</h5>
												<p class="card-text text-uppercase">Starting at $9</p>
													<a class="btn btn-light btn-ecomm">SHOP NOW</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col">
								<div class="card rounded-0">
									<div class="row g-0 align-items-center">
										<div class="col">
											<img src="assets/images/promo/02.png" class="img-fluid" alt="" />
										</div>
										<div class="col">
											<div class="card-body">
												<h5 class="card-title text-uppercase">Womens' Wear</h5>
												<p class="card-text text-uppercase">Starting at $9</p>
												<a href="javascript:;" class="btn btn-light btn-ecomm">SHOP NOW</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col">
								<div class="card rounded-0">
									<div class="row g-0 align-items-center">
										<div class="col">
											<img src="assets/images/promo/03.png" class="img-fluid" alt="" />
										</div>
										<div class="col">
											<div class="card-body">
												<h5 class="card-title text-uppercase">Kids' Wear</h5>
												<p class="card-text text-uppercase">Starting at $9</p>	<a href="javascript:;" class="btn btn-light btn-ecomm">SHOP NOW</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--end row-->
					</div>
				</section>
				<!--end pramotion-->
      <!-------------------------------------------------------------------------------------------------------------------------------------------------->
				<!--start Advertise banners-->
				<section class="py-4">
					<div class="container">
						<div class="add-banner">
							<div class="row row-cols-1 row-cols-md-2 row-cols-lg-2 row-cols-xl-4">
								<div class="col d-flex">
									<div class="card rounded-0 w-100">
										<img src="assets/images/promo/04.png" class="card-img-top" alt="...">
										<div class="position-absolute top-0 end-0 m-3 product-discount"><span class="">-10%</span>
										</div>
										<div class="card-body">
											<h5 class="card-title">Sunglasses Sale</h5>
											<p class="card-text">See all Sunglasses and get 10% off at all Sunglasses</p> <a href="javascript:;" class="btn btn-light btn-ecomm">SHOP BY GLASSES</a>
										</div>
									</div>
								</div>
								<div class="col d-flex">
									<div class="card rounded-0 w-100">
										<div class="position-absolute top-0 end-0 m-3 product-discount"><span class="">-80%</span>
										</div>
										<div class="card-body text-center mt-5">
											<h5 class="card-title">Cosmetics Sales</h5>
											<p class="card-text">Buy Cosmetics products and get 30% off at all Cosmetics</p> <a href="javascript:;" class="btn btn-light btn-ecomm">SHOP BY COSMETICS</a>
										</div>
										<img src="assets/images/promo/08.png" class="card-img-top" alt="...">
									</div>
								</div>
								<div class="col d-flex">
									<div class="card rounded-0 w-100">
										<img src="assets/images/promo/06.png" class="card-img h-100" alt="...">
										<div class="card-img-overlay text-center top-20">
											<div class="border border-white border-3 py-3 bg-dark-3">
												<h5 class="card-title">Fashion Summer Sale</h5>
												<p class="card-text text-uppercase fs-1 text-white lh-1 mt-3 mb-2">Up to 80% off</p>
												<p class="card-text fs-5">On top Fashion Brands</p>	<a href="javascript:;" class="btn btn-white btn-ecomm">SHOP BY FASHION</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col d-flex">
									<div class="card rounded-0 w-100">
										<div class="position-absolute top-0 end-0 m-3 product-discount"><span class="">-50%</span>
										</div>
										<div class="card-body text-center">
											<img src="assets/images/promo/07.png" class="card-img-top" alt="...">
											<h5 class="card-title fs-1 text-uppercase">Super Sale</h5>
											<p class="card-text text-uppercase fs-4 text-white lh-1 mb-2">Up to 50% off</p>
											<p class="card-text">On All Electronic</p> <a href="javascript:;" class="btn btn-light btn-ecomm">HURRY UP!</a>
										</div>
									</div>
								</div>
							</div>
							<!--end row-->
						</div>
					</div>
				</section>
				<!--end Advertise banners-->
		<!-------------------------------------------------------------------------------------------------------------------------------------------------->
				<!--start categories-->
				<section class="py-4">
					<div class="container">
						<div class="d-flex align-items-center">
							<h5 class="text-uppercase mb-0">Browse Catergory</h5>
							<a href="shop-categories.html" class="btn btn-light ms-auto rounded-0">View All<i class='bx bx-chevron-right'></i></a>
						</div>
						<hr/>
						<div class="product-grid">
							<div class="browse-category owl-carousel owl-theme">
								<div class="item">
									<div class="card rounded-0 product-card border">
										<div class="card-body">
											<img src="assets/images/categories/01.png" class="img-fluid" alt="...">
										</div>
										<div class="card-footer text-center">
											<h6 class="mb-1 text-uppercase">Fashion</h6>
											<%--<p class="mb-0 font-12 text-uppercase">10 Products</p>--%>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="card rounded-0 product-card border">
										<div class="card-body">
											<img src="assets/images/categories/02.png" class="img-fluid" alt="...">
										</div>
										<div class="card-footer text-center">
											<h6 class="mb-1 text-uppercase">Watches</h6>
											<%--<p class="mb-0 font-12 text-uppercase">8 Products</p>--%>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="card rounded-0 product-card border">
										<div class="card-body">
											<img src="assets/images/categories/03.png" class="img-fluid" alt="...">
										</div>
										<div class="card-footer text-center">
											<h6 class="mb-1 text-uppercase">Shoes</h6>
											<%--<p class="mb-0 font-12 text-uppercase">14 Products</p>--%>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="card rounded-0 product-card border">
										<div class="card-body">
											<img src="assets/images/categories/04.png" class="img-fluid" alt="...">
										</div>
										<div class="card-footer text-center">
											<h6 class="mb-1 text-uppercase">Bags</h6>
											<%--<p class="mb-0 font-12 text-uppercase">6 Products</p>--%>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="card rounded-0 product-card border">
										<div class="card-body">
											<img src="assets/images/categories/05.png" class="img-fluid" alt="...">
										</div>
										<div class="card-footer text-center">
											<h6 class="mb-1 text-uppercase">Electronis</h6>
											<%--<p class="mb-0 font-12 text-uppercase">6 Products</p>--%>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="card rounded-0 product-card border">
										<div class="card-body">
											<img src="assets/images/categories/06.png" class="img-fluid" alt="...">
										</div>
										<div class="card-footer text-center">
											<h6 class="mb-1 text-uppercase">Headphones</h6>
											<%--<p class="mb-0 font-12 text-uppercase">5 Products</p>--%>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="card rounded-0 product-card border">
										<div class="card-body">
											<img src="assets/images/categories/07.png" class="img-fluid" alt="...">
										</div>
										<div class="card-footer text-center">
											<h6 class="mb-1 text-uppercase">Furniture</h6>
											<%--<p class="mb-0 font-12 text-uppercase">20 Products</p>--%>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="card rounded-0 product-card border">
										<div class="card-body">
											<img src="assets/images/categories/08.png" class="img-fluid" alt="...">
										</div>
										<div class="card-footer text-center">
											<h6 class="mb-1 text-uppercase">Jewelry</h6>
											<%--<p class="mb-0 font-12 text-uppercase">16 Products</p>--%>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="card rounded-0 product-card border">
										<div class="card-body">
											<img src="assets/images/categories/09.png" class="img-fluid" alt="...">
										</div>
										<div class="card-footer text-center">
											<h6 class="mb-1 text-uppercase">Sports</h6>
											<%--<p class="mb-0 font-12 text-uppercase">28 Products</p>--%>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="card rounded-0 product-card border">
										<div class="card-body">
											<img src="assets/images/categories/10.png" class="img-fluid" alt="...">
										</div>
										<div class="card-footer text-center">
											<h6 class="mb-1 text-uppercase">Vegetable</h6>
											<%--<p class="mb-0 font-12 text-uppercase">15 Products</p>--%>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="card rounded-0 product-card border">
										<div class="card-body">
											<img src="assets/images/categories/11.png" class="img-fluid" alt="...">
										</div>
										<div class="card-footer text-center">
											<h6 class="mb-1 text-uppercase">Medical</h6>
											<%--<p class="mb-0 font-12 text-uppercase">24 Products</p>--%>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="card rounded-0 product-card border">
										<div class="card-body">
											<img src="assets/images/categories/12.png" class="img-fluid" alt="...">
										</div>
										<div class="card-footer text-center">
											<h6 class="mb-1 text-uppercase">Sunglasses</h6>
											<%--<p class="mb-0 font-12 text-uppercase">18 Products</p>--%>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!--end categories-->
			<!-------------------------------------------------------------------------------------------------------------------------------------------------->
				<!--start support info-->
				<section class="py-4 bg-dark-1">
					<div class="container">
						<div class="row row-cols-1 row-cols-md-2 row-cols-xl-4 row-group">
							<div class="col">
								<div class="text-center">
									<div class="font-50 text-white">	<i class='bx bx-cart'></i>
									</div>
									<h2 class="fs-5 text-uppercase mb-0">Free delivery</h2>
									<p class="text-capitalize">Free delivery over $199</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis nec vestibulum magna, et dapib.</p>
								</div>
							</div>
							<div class="col">
								<div class="text-center">
									<div class="font-50 text-white">	<i class='bx bx-credit-card'></i>
									</div>
									<h2 class="fs-5 text-uppercase mb-0">Secure payment</h2>
									<p class="text-capitalize">We possess SSL / Secure сertificate</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis nec vestibulum magna, et dapib.</p>
								</div>
							</div>
							<div class="col">
								<div class="text-center">
									<div class="font-50 text-white">	<i class='bx bx-dollar-circle'></i>
									</div>
									<h2 class="fs-5 text-uppercase mb-0">Free returns</h2>
									<p class="text-capitalize">We return money within 30 days</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis nec vestibulum magna, et dapib.</p>
								</div>
							</div>
							<div class="col">
								<div class="text-center">
									<div class="font-50 text-white">	<i class='bx bx-support'></i>
									</div>
									<h2 class="fs-5 text-uppercase mb-0">Customer Support</h2>
									<p class="text-capitalize">Friendly 24/7 customer support</p>
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis nec vestibulum magna, et dapib.</p>
								</div>
							</div>
						</div>
						<!--end row-->
					</div>
				</section>
				<!--end support info-->
		<!-------------------------------------------------------------------------------------------------------------------------------------------------->
				<!--start News-->
				<section class="py-4">
					<div class="container">
						<div class="d-flex align-items-center">
							<h5 class="text-uppercase mb-0">Latest News</h5>
							<a href="blog.html" class="btn btn-light ms-auto rounded-0">View All News<i class='bx bx-chevron-right'></i></a>
						</div>
						<hr/>
						<div class="product-grid">
							<div class="latest-news owl-carousel owl-theme">
								<div class="item">
									<div class="card rounded-0 product-card border">
										<div class="news-date">
											<div class="date-number">24</div>
											<div class="date-month">FEB</div>
										</div>
										<a href="javascript:;">
											<img src="assets/images/blogs/01.png" class="card-img-top border-bottom bg-dark-1" alt="...">
										</a>
										<div class="card-body">
											<div class="news-title">
												<a href="javascript:;">
													<h5 class="mb-3 text-capitalize">Blog Short Title</h5>
												</a>
											</div>
											<p class="news-content mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non placerat mi. Etiam non tellus sem. Aenean...</p>
										</div>
										<div class="card-footer border-top">
											<a href="javascript:;">
												<p class="mb-0"><small class="text-white">0 Comments</small>
												</p>
											</a>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="card rounded-0 product-card border">
										<div class="news-date">
											<div class="date-number">24</div>
											<div class="date-month">FEB</div>
										</div>
										<a href="javascript:;">
											<img src="assets/images/blogs/02.png" class="card-img-top border-bottom bg-dark-1" alt="...">
										</a>
										<div class="card-body">
											<div class="news-title">
												<a href="javascript:;">
													<h5 class="mb-3 text-capitalize">Blog Short Title</h5>
												</a>
											</div>
											<p class="news-content mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non placerat mi. Etiam non tellus sem. Aenean...</p>
										</div>
										<div class="card-footer border-top">
											<a href="javascript:;">
												<p class="mb-0"><small class="text-white">0 Comments</small>
												</p>
											</a>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="card rounded-0 product-card border">
										<div class="news-date">
											<div class="date-number">24</div>
											<div class="date-month">FEB</div>
										</div>
										<a href="javascript:;">
											<img src="assets/images/blogs/03.png" class="card-img-top border-bottom bg-dark-1" alt="...">
										</a>
										<div class="card-body">
											<div class="news-title">
												<a href="javascript:;">
													<h5 class="mb-3 text-capitalize">Blog Short Title</h5>
												</a>
											</div>
											<p class="news-content mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non placerat mi. Etiam non tellus sem. Aenean...</p>
										</div>
										<div class="card-footer border-top">
											<a href="javascript:;">
												<p class="mb-0"><small class="text-white">0 Comments</small>
												</p>
											</a>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="card rounded-0 product-card border">
										<div class="news-date">
											<div class="date-number">24</div>
											<div class="date-month">FEB</div>
										</div>
										<a href="javascript:;">
											<img src="assets/images/blogs/04.png" class="card-img-top border-bottom bg-dark-1" alt="...">
										</a>
										<div class="card-body">
											<div class="news-title">
												<a href="javascript:;">
													<h5 class="mb-3 text-capitalize">Blog Short Title</h5>
												</a>
											</div>
											<p class="news-content mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non placerat mi. Etiam non tellus sem. Aenean...</p>
										</div>
										<div class="card-footer border-top">
											<a href="javascript:;">
												<p class="mb-0"><small class="text-white">0 Comments</small>
												</p>
											</a>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="card rounded-0 product-card border">
										<div class="news-date">
											<div class="date-number">24</div>
											<div class="date-month">FEB</div>
										</div>
										<a href="javascript:;">
											<img src="assets/images/blogs/05.png" class="card-img-top border-bottom bg-dark-1" alt="...">
										</a>
										<div class="card-body">
											<div class="news-title">
												<a href="javascript:;">
													<h5 class="mb-3 text-capitalize">Blog Short Title</h5>
												</a>
											</div>
											<p class="news-content mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non placerat mi. Etiam non tellus sem. Aenean...</p>
										</div>
										<div class="card-footer border-top">
											<a href="javascript:;">
												<p class="mb-0"><small class="text-white">0 Comments</small>
												</p>
											</a>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="card rounded-0 product-card border">
										<div class="news-date">
											<div class="date-number">24</div>
											<div class="date-month">FEB</div>
										</div>
										<a href="javascript:;">
											<img src="assets/images/blogs/06.png" class="card-img-top border-bottom bg-dark-1" alt="...">
										</a>
										<div class="card-body">
											<div class="news-title">
												<a href="javascript:;">
													<h5 class="mb-3 text-capitalize">Blog Short Title</h5>
												</a>
											</div>
											<p class="news-content mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non placerat mi. Etiam non tellus sem. Aenean...</p>
										</div>
										<div class="card-footer border-top">
											<a href="javascript:;">
												<p class="mb-0"><small class="text-white">0 Comments</small>
												</p>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!--end News-->		
	<!-------------------------------------------------------------------------------------------------------------------------------------------------->
					<!--start brands-->
				<section class="py-4">
					<div class="container">
						<h3 class="d-none">Brands</h3>
						<div class="brand-grid">
							<div class="brands-shops owl-carousel owl-theme border">
								<div class="item border-end">
									<div class="p-4">
										<a href="javascript:;">
											<img src="assets/images/brands/01.png" class="img-fluid" alt="...">
										</a>
									</div>
								</div>
								<div class="item border-end">
									<div class="p-4">
										<a href="javascript:;">
											<img src="assets/images/brands/02.png" class="img-fluid" alt="...">
										</a>
									</div>
								</div>
								<div class="item border-end">
									<div class="p-4">
										<a href="javascript:;">
											<img src="assets/images/brands/03.png" class="img-fluid" alt="...">
										</a>
									</div>
								</div>
								<div class="item border-end">
									<div class="p-4">
										<a href="javascript:;">
											<img src="assets/images/brands/04.png" class="img-fluid" alt="...">
										</a>
									</div>
								</div>
								<div class="item border-end">
									<div class="p-4">
										<a href="javascript:;">
											<img src="assets/images/brands/05.png" class="img-fluid" alt="...">
										</a>
									</div>
								</div>
								<div class="item border-end">
									<div class="p-4">
										<a href="javascript:;">
											<img src="assets/images/brands/06.png" class="img-fluid" alt="...">
										</a>
									</div>
								</div>
								<div class="item border-end">
									<div class="p-4">
										<a href="javascript:;">
											<img src="assets/images/brands/07.png" class="img-fluid" alt="...">
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!--end brands-->
	<!-------------------------------------------------------------------------------------------------------------------------------------------------->

			</div>
		</div>
		<!--end page wrapper -->
    
</asp:Content>

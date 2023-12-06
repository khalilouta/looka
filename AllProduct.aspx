<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AllProduct.aspx.cs" Inherits="Projet_De_Fin_Detude.WebForm2" %>
<%@ MasterType VirtualPath="~/Site1.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="page-wrapper">
        <div class="page-content">
    	<!--start Featured product-->
        <%--<section class="py-4">--%>
		<asp:Panel ID="Panel3" CssClass="py-4"  runat="server">
            <%--<div class="container">--%>
			<asp:Panel ID="Panel4" CssClass="container"  runat="server">
                <%--<div class="d-flex align-items-center">--%>
				<asp:Panel ID="Panel5" CssClass="d-flex align-items-center"  runat="server">
                    <h5 class="text-uppercase mb-0">FEATURED PRODUCTS</h5>
                    <a  class="btn btn-light ms-auto rounded-0">More Products<i class='bx bx-chevron-right'></i></a>
				</asp:Panel>
                <%--</div>--%>
                <hr/>
                
                <asp:Panel ID="Panel1" CssClass="product-grid"  runat="server">
                    <asp:Panel ID="Panel2" CssClass="row row-cols-1 row-cols-md-2 row-cols-lg-3 row-cols-xl-4" runat="server">
                    </asp:Panel>
                </asp:Panel>

            </asp:Panel>				
            <%--</div>--%>
		 </asp:Panel>
        <%--</section>--%>
        <!--end Featured product-->
        <!--start bottom products section-->
				<section class="py-4 border-top">
					<div class="container">
						<div class="row row-cols-1 row-cols-md-2 row-cols-xl-4">
							<div class="col">
								<div class="bestseller-list mb-3">
									<h6 class="mb-3 text-uppercase">Best Selling Products</h6>
									<div class="d-flex align-items-center">
										<div class="bottom-product-img">
											<a href="#">
												<img src="assets/images/products/01.png" width="100" alt="">
											</a>
										</div>
										<div class="ms-0">
											<h6 class="mb-0 fw-light mb-1">T-shirt</h6>
											<div class="rating font-12">	<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
											</div>
											<p class="mb-0 text-white"><strong>$$</strong>
											</p>
										</div>
									</div>
									<hr/>
									<div class="d-flex align-items-center">
										<div class="bottom-product-img">
											<a href="#">
												<img src="assets/images/products/02.png" width="100" alt="">
											</a>
										</div>
										<div class="ms-0">
											<h6 class="mb-0 fw-light mb-1">Man suit</h6>
											<div class="rating font-12">	<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
											</div>
											<p class="mb-0 text-white"><strong>$$</strong>
											</p>
										</div>
									</div>
									<hr/>
									<div class="d-flex align-items-center">
										<div class="bottom-product-img">
											<a href="#">
												<img src="assets/images/products/03.png" width="100" alt="">
											</a>
										</div>
										<div class="ms-0">
											<h6 class="mb-0 fw-light mb-1">Blue Jeans</h6>
											<div class="rating font-12">	<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
											</div>
											<p class="mb-0 text-white"><strong>$$</strong>
											</p>
										</div>
									</div>
									<hr/>
									<div class="d-flex align-items-center">
										<div class="bottom-product-img">
											<a href="#">
												<img src="assets/images/products/04.png" width="100" alt="">
											</a>
										</div>
										<div class="ms-0">
											<h6 class="mb-0 fw-light mb-1">Green Jacket</h6>
											<div class="rating font-12">	<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
											</div>
											<p class="mb-0 text-white"><strong>$$</strong>
											</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col">
								<div class="featured-list mb-3">
									<h6 class="mb-3 text-uppercase">Featured Products</h6>
									<div class="d-flex align-items-center">
										<div class="bottom-product-img">
											<a href="#">
												<img src="assets/images/products/05.png" width="100" alt="">
											</a>
										</div>
										<div class="ms-0">
											<h6 class="mb-0 fw-light mb-1">Blue sports shoes</h6>
											<div class="rating font-12"> <i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
											</div>
											<p class="mb-0 text-white"><strong>$$</strong>
											</p>
										</div>
									</div>
									<hr/>
									<div class="d-flex align-items-center">
										<div class="bottom-product-img">
											<a href="#">
												<img src="assets/images/products/06.png" width="100" alt="">
											</a>
										</div>
										<div class="ms-0">
											<h6 class="mb-0 fw-light mb-1">Sofa</h6>
											<div class="rating font-12"> <i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
											</div>
											<p class="mb-0 text-white"><strong>$$</strong>
											</p>
										</div>
									</div>
									<hr/>
									<div class="d-flex align-items-center">
										<div class="bottom-product-img">
											<a href="#">
												<img src="assets/images/products/07.png" width="100" alt="">
											</a>
										</div>
										<div class="ms-0">
											<h6 class="mb-0 fw-light mb-1">T-shirt</h6>
											<div class="rating font-12"> <i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
											</div>
											<p class="mb-0 text-white"><strong>$$</strong>
											</p>
										</div>
									</div>
									<hr/>
									<div class="d-flex align-items-center">
										<div class="bottom-product-img">
											<a href="#">
												<img src="assets/images/products/08.png" width="100" alt="">
											</a>
										</div>
										<div class="ms-0">
											<h6 class="mb-0 fw-light mb-1">Blue Shoes</h6>
											<div class="rating font-12"> <i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
											</div>
											<p class="mb-0 text-white"><strong>$$</strong>
											</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col">
								<div class="new-arrivals-list mb-3">
									<h6 class="mb-3 text-uppercase">New arrivals</h6>
									<div class="d-flex align-items-center">
										<div class="bottom-product-img">
											<a href="#">
												<img src="assets/images/products/09.png" width="100" alt="">
											</a>
										</div>
										<div class="ms-0">
											<h6 class="mb-0 fw-light mb-1">Black Cap</h6>
											<div class="rating font-12"> <i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
											</div>
											<p class="mb-0 text-white"><strong>$$</strong>
											</p>
										</div>
									</div>
									<hr/>
									<div class="d-flex align-items-center">
										<div class="bottom-product-img">
											<a href="#">
												<img src="assets/images/products/10.png" width="100" alt="">
											</a>
										</div>
										<div class="ms-0">
											<h6 class="mb-0 fw-light mb-1">Headphones</h6>
											<div class="rating font-12"> <i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
											</div>
											<p class="mb-0 text-white"><strong>$$</strong>
											</p>
										</div>
									</div>
									<hr/>
									<div class="d-flex align-items-center">
										<div class="bottom-product-img">
											<a href="#">
												<img src="assets/images/products/11.png" width="100" alt="">
											</a>
										</div>
										<div class="ms-0">
											<h6 class="mb-0 fw-light mb-1">Galaxy Phone</h6>
											<div class="rating font-12"> <i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
											</div>
											<p class="mb-0 text-white"><strong>$$</strong>
											</p>
										</div>
									</div>
									<hr/>
									<div class="d-flex align-items-center">
										<div class="bottom-product-img">
											<a href="#">
												<img src="assets/images/products/12.png" width="100" alt="">
											</a>
										</div>
										<div class="ms-0">
											<h6 class="mb-0 fw-light mb-1">Laptop</h6>
											<div class="rating font-12"> <i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
											</div>
											<p class="mb-0 text-white"><strong>$$</strong>
											</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col">
								<div class="top-rated-products-list mb-3">
									<h6 class="mb-3 text-uppercase">Top rated Products</h6>
									<div class="d-flex align-items-center">
										<div class="bottom-product-img">
											<a href="#">
												<img src="assets/images/products/13.png" width="100" alt="">
											</a>
										</div>
										<div class="ms-0">
											<h6 class="mb-0 fw-light mb-1">Ball</h6>
											<div class="rating font-12"> <i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
											</div>
											<p class="mb-0 text-white"><strong>$$</strong>
											</p>
										</div>
									</div>
									<hr/>
									<div class="d-flex align-items-center">
										<div class="bottom-product-img">
											<a href="#">
												<img src="assets/images/products/14.png" width="100" alt="">
											</a>
										</div>
										<div class="ms-0">
											<h6 class="mb-0 fw-light mb-1">Sofa</h6>
											<div class="rating font-12"> <i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
											</div>
											<p class="mb-0 text-white"><strong>$$</strong>
											</p>
										</div>
									</div>
									<hr/>
									<div class="d-flex align-items-center">
										<div class="bottom-product-img">
											<a href="#">
												<img src="assets/images/products/15.png" width="100" alt="">
											</a>
										</div>
										<div class="ms-0">
											<h6 class="mb-0 fw-light mb-1">Bysicle</h6>
											<div class="rating font-12"> <i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
											</div>
											<p class="mb-0 text-white"><strong>$$</strong>
											</p>
										</div>
									</div>
									<hr/>
									<div class="d-flex align-items-center">
										<div class="bottom-product-img">
											<a href="#">
												<img src="assets/images/products/16.png" width="100" alt="">
											</a>
										</div>
										<div class="ms-0">
											<h6 class="mb-0 fw-light mb-1">Table</h6>
											<div class="rating font-12"> <i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
												<i class="bx bxs-star text-white"></i>
											</div>
											<p class="mb-0 text-white"><strong>$$</strong>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--end row-->
					</div>
				</section>
				

    </div>
</div>
<!--end page wrapper -->
</asp:Content>

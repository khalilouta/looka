<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="Projet_De_Fin_Detude.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--wrapper-->
	<div class="wrapper">
		
		<!--start page wrapper -->
		<div class="page-wrapper">
			<div class="page-content">
				<!--start breadcrumb-->
				<section class="py-3 border-bottom d-none d-md-flex">
					<div class="container">
						<div class="page-breadcrumb d-flex align-items-center">
							<div class="breadcrumb-title pe-3">Blog</div>
							<div class="ms-auto">
								<nav aria-label="breadcrumb">
									<ol class="breadcrumb mb-0 p-0">
										<li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i> Home</a>
										</li>
										<li class="breadcrumb-item"><a href="javascript:;">Blog</a>
										</li>
										<li class="breadcrumb-item active" aria-current="page">Blog Posts</li>
									</ol>
								</nav>
							</div>
						</div>
					</div>
				</section>
				<!--end breadcrumb-->
				<!--start page content-->
				<section class="py-4">
					<div class="container">
						<div class="row">
							<div class="col-12 col-lg-9">
                                    <asp:Panel ID="Panel1" CssClass="blog-right-sidebar p-3" runat="server">


											<hr>
                                    </asp:Panel>								
							</div>
							<div class="col-12 col-lg-3">
								<div class="blog-left-sidebar p-3">
									<form>
									
										<div class="blog-categories mb-3">
											<h5 class="mb-4">Blog Categories</h5>
											<div class="list-group list-group-flush"> <a href="javascript:;" class="list-group-item bg-transparent"><i class='bx bx-chevron-right me-1'></i> Fashion</a>
												<a href="javascript:;" class="list-group-item bg-transparent"><i class='bx bx-chevron-right me-1'></i> Electronis</a>
												<a href="javascript:;" class="list-group-item bg-transparent"><i class='bx bx-chevron-right me-1'></i> Accessories</a>
												<a href="javascript:;" class="list-group-item bg-transparent"><i class='bx bx-chevron-right me-1'></i> Kitchen & Table</a>
												<a href="javascript:;" class="list-group-item bg-transparent"><i class='bx bx-chevron-right me-1'></i> Furniture</a>
											</div>
										</div>
										<div class="blog-categories mb-3">
											<h5 class="mb-4">Recent Posts</h5>
											<div class="d-flex align-items-center">
												<img src="assets/images/gallery/05.png" width="75" alt="">
												<div class="ms-3"> <a href="javascript:;" class="fs-6">Post title here</a>
													<p class="mb-0">March 15, 2021</p>
												</div>
											</div>
											<div class="my-3 border-bottom"></div>
											<div class="d-flex align-items-center">
												<img src="assets/images/gallery/07.png" width="75" alt="">
												<div class="ms-3"> <a href="javascript:;" class="fs-6">Post title here</a>
													<p class="mb-0">March 15, 2021</p>
												</div>
											</div>
											<div class="my-3 border-bottom"></div>
											<div class="d-flex align-items-center">
												<img src="assets/images/gallery/16.png" width="75" alt="">
												<div class="ms-3"> <a href="javascript:;" class="fs-6">Post title here</a>
													<p class="mb-0">March 15, 2021</p>
												</div>
											</div>
											<div class="my-3 border-bottom"></div>
											<div class="d-flex align-items-center">
												<img src="assets/images/gallery/01.png" width="75" alt="">
												<div class="ms-3"> <a href="javascript:;" class="fs-6">Post title here</a>
													<p class="mb-0">March 15, 2021</p>
												</div>
											</div>
										</div>
										<div class="blog-categories mb-3">
											<h5 class="mb-4">Popular Tags</h5>
											<div class="tags-box">	<a href="javascript:;" class="tag-link">Cloths</a>
												<a href="javascript:;" class="tag-link">Electronis</a>
												<a href="javascript:;" class="tag-link">Furniture</a>
												<a href="javascript:;" class="tag-link">Sports</a>
												<a href="javascript:;" class="tag-link">Men Wear</a>
												<a href="javascript:;" class="tag-link">Women Wear</a>
												<a href="javascript:;" class="tag-link">Laptops</a>
												<a href="javascript:;" class="tag-link">Formal Shirts</a>
												<a href="javascript:;" class="tag-link">Topwear</a>
												<a href="javascript:;" class="tag-link">Headphones</a>
												<a href="javascript:;" class="tag-link">Bottom Wear</a>
												<a href="javascript:;" class="tag-link">Bags</a>
												<a href="javascript:;" class="tag-link">Sofa</a>
												<a href="javascript:;" class="tag-link">Shoes</a>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
						<!--end row-->
					</div>
				</section>
				<!--end start page content-->
			</div>
		</div>
		<!--end page wrapper -->
	
		
		
	</div>
	<!--end wrapper-->
</asp:Content>

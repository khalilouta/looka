﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AccountBlog.aspx.cs" Inherits="Projet_De_Fin_Detude.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    	<!--start page wrapper -->
		<div class="page-wrapper">
			<div class="page-content">
				<!--start breadcrumb-->
				<section class="py-3 border-bottom d-none d-md-flex">
					<div class="container">
						<div class="page-breadcrumb d-flex align-items-center">
							<h3 class="breadcrumb-title pe-3">My Orders</h3>
							<div class="ms-auto">
								<nav aria-label="breadcrumb">
									<ol class="breadcrumb mb-0 p-0">
										<li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i> Home</a>
										</li>
										<li class="breadcrumb-item"><a href="javascript:;">Account</a>
										</li>
										<li class="breadcrumb-item active" aria-current="page">My Orders</li>
									</ol>
								</nav>
							</div>
						</div>
					</div>
				</section>
				<!--end breadcrumb-->
				<!--start shop cart-->
				<section class="py-4">
					<div class="container">
						<h3 class="d-none">Account</h3>
						<div class="card">
							<div class="card-body">
								<div class="row">
									<div class="col-lg-4">
										<div class="card shadow-none mb-3 mb-lg-0">
											<div class="card-body">
												<div class="list-group list-group-flush">
													<a href="Dashbord.aspx" class="list-group-item d-flex justify-content-between align-items-center bg-transparent">Dashboard <i class='bx bx-tachometer fs-5'></i></a>
													<a href="Orders.aspx" class="list-group-item d-flex justify-content-between align-items-center bg-transparent">Orders <i class='bx bx-cart-alt fs-5'></i></a>
													<a href="statistique.aspx" class="list-group-item d-flex justify-content-between align-items-center bg-transparent">Statistiques & Archive <i class='bx bx-heart fs-5'></i></a>
													<a href="Acountproduct.aspx" class="list-group-item d-flex justify-content-between align-items-center bg-transparent">Product <i class='bx bx-download fs-5'></i></a>
													<a href="AccountBlog.aspx" class="list-group-item active d-flex justify-content-between align-items-center">Blog <i class='bx bx-home-smile fs-5'></i></a>
													<a href="Home(index).aspx" class="list-group-item d-flex justify-content-between align-items-center bg-transparent">Logout <i class='bx bx-log-out fs-5'></i></a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="card shadow-none mb-0">
											<div class="card-body">
												<form>
													<div class="form-body">
														<!-- <h6 class="mb-0 text-uppercase">Send A Message</h6> -->
														<div class="my-3 border-bottom"></div>
														<div class="mb-3">
															<label class="form-label">IDblog</label>
															<%--<input type="text" class="form-control" />--%>
															<%--<asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>--%>
															<asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" EnableViewState="True" AutoPostBack="false"></asp:DropDownList>
														</div>
														<div class="mb-3">
															<label class="form-label">Title</label>
															<%--<input type="text" class="form-control" />--%>
                                                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
														</div>
														<div class="mb-3">
															<label class="form-label">Img</label>
															<%--<input type="text" class="form-control" />--%>
                                                            <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
														</div>
														<div class="mb-3">
															<label class="form-label"> Description</label>
															<%--<input type="text" class="form-control" />--%>
                                                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
														</div>
														
														<div class="mb-3">
                                                            <asp:Button ID="Button1" CssClass="btn btn-light btn-ecomm" OnClick="Button1_Click" runat="server" Text="Add Blog" />
                                                            <asp:Button ID="Button2" CssClass="btn btn-light btn-ecomm" OnClick="Button2_Click" runat="server" Text="Update Blog" />
                                                            <asp:Button ID="Button3" CssClass="btn btn-light btn-ecomm" OnClick="Button3_Click" runat="server" Text="Delete Blog" />
															<%--<button class="btn btn-light btn-ecomm">Add Blog</button>
															<button class="btn btn-light btn-ecomm">Update Blog</button>
															<button class="btn btn-light btn-ecomm">Delete Blog</button>--%>
														</div>
													</div>
												</form>
											
											
											</div>
										</div>
									</div>
								</div>
								<!--end row-->
							</div>
						</div>
					</div>
				</section>
				<!--end shop cart-->
			</div>
		</div>
		<!--end page wrapper -->
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChekoutDettaills.aspx.cs" Inherits="Projet_De_Fin_Detude.WebForm8" %>
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
							<h3 class="breadcrumb-title pe-3">Checkout</h3>
							<div class="ms-auto">
								<nav aria-label="breadcrumb">
									<ol class="breadcrumb mb-0 p-0">
										<li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i> Home</a>
										</li>
										<li class="breadcrumb-item"><a href="javascript:;">Shop</a>
										</li>
										<li class="breadcrumb-item active" aria-current="page">Checkout</li>
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
						<div class="shop-cart">
							<div class="row">
								<div class="col-12 col-xl-8">
									<div class="checkout-details">
										<div class="card bg-transparent rounded-0 shadow-none">
											<div class="card-body">
												<div class="steps steps-light">
												
													<a class="step-item active current" href="ChekoutDettaills.aspx">
														<div class="step-progress"><span class="step-count">1</span>
														</div>
														<div class="step-label"><i class='bx bx-user-circle'></i>Details</div>
													</a>
													<a class="step-item" href="ChekoutPayement.aspx">
														<div class="step-progress"><span class="step-count">2</span>
														</div>
														<div class="step-label"><i class='bx bx-credit-card'></i>Payment</div>
													</a>
													<a class="step-item" href="Facture.aspx">
														<div class="step-progress"><span class="step-count">3</span>
														</div>
														<div class="step-label"><i class='bx bx-cube'></i>Facture</div>
													</a>
													
												</div>
											</div>
										</div>
								
										<div class="card rounded-0">
											<div class="card-body">
												<div class="border p-3">
													<h2 class="h5 mb-0">Shipping Address</h2>
													<div class="my-3 border-bottom"></div>
													<div class="form-body">
														<div class="row g-3">
															<div class="col-md-6">
																<label class="form-label">First Name</label>
																<%--<input type="text" class="form-control rounded-0">--%>
                                                                <asp:TextBox ID="TextBox1" CssClass="form-control rounded-0" runat="server"></asp:TextBox>
															</div>
															<div class="col-md-6">
																<label class="form-label">Last Name</label>
																<%--<input type="text" class="form-control rounded-0">--%>
                                                                <asp:TextBox ID="TextBox2" CssClass="form-control rounded-0" runat="server"></asp:TextBox>
															</div>
															<div class="col-md-6">
																<label class="form-label">CIN</label>
																<%--<input type="text" class="form-control rounded-0">--%>
                                                                <asp:TextBox ID="TextBox3" CssClass="form-control rounded-0" runat="server"></asp:TextBox>
															</div>
															<div class="col-md-6">
																<label class="form-label">Phone Number</label>
																<%--<input type="text" class="form-control rounded-0">--%>
                                                                <asp:TextBox ID="TextBox4" CssClass="form-control rounded-0" runat="server"></asp:TextBox>
															</div>
															<div class="col-md-6">
																<label class="form-label">Country</label>
																<%--<input type="text" class="form-control rounded-0">--%>
                                                                <asp:TextBox ID="TextBox5" CssClass="form-control rounded-0" runat="server"></asp:TextBox>
															</div>
															<div class="col-md-6">
																<label class="form-label">City</label>
																<%--<input type="text" class="form-control rounded-0">--%>
                                                                <asp:TextBox ID="TextBox6" CssClass="form-control rounded-0" runat="server"></asp:TextBox>
															</div>
															<div class="col-md-6">
																<label class="form-label">Address </label>
																<%--<input type="text" class="form-control rounded-0">--%>
                                                                <asp:TextBox ID="TextBox7" CssClass="form-control rounded-0" runat="server"></asp:TextBox>
															</div>
															<div class="col-md-6">
																<label class="form-label">Code Postale </label>
																<%--<input type="text" class="form-control rounded-0">--%>
                                                                <asp:TextBox ID="TextBox8" CssClass="form-control rounded-0" runat="server"></asp:TextBox>
															</div>
															<div class="col-md-12">
															</div>
															<div class="col-md-6">
																<div class="d-grid">
																	<%--<a href="javascript:;" class="btn btn-light btn-ecomm"><i class='bx bx-chevron-left'></i>Back to Cart</a>--%>
                                                                    <asp:Button ID="Button1" CssClass="btn btn-light btn-ecomm" OnClick="Button1_Click" runat="server" Text="Back to Cart" />
																</div>
															</div>
															<div class="col-md-6">
																<div class="d-grid">	
																	<%--<a href="javascript:;" class="btn btn-white btn-ecomm">Proceed to Checkout<i class='bx bx-chevron-right'></i></a>--%>
                                                                    <asp:Button ID="Button2" CssClass="btn btn-white btn-ecomm" OnClick="Button2_Click"  runat="server" Text="Proceed to Checkout" />
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								
							</div>
							<!--end row-->
						</div>
					</div>
				</section>
				<!--end shop cart-->
			</div>
		</div>
		<!--end page wrapper -->
		
		
	</div>
	<!--end wrapper-->
</asp:Content>

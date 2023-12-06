<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChekoutPayement.aspx.cs" Inherits="Projet_De_Fin_Detude.WebForm16" %>
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
								<div class="checkout-payment">
									<div class="card bg-transparent rounded-0 shadow-none">
										<div class="card-body">
											<div class="steps steps-light">
											
												<a class="step-item active" href="ChekoutDettaills.aspx">
													<div class="step-progress"><span class="step-count">1</span>
													</div>
													<div class="step-label"><i class='bx bx-user-circle'></i>Details</div>
												</a>
												<a class="step-item active current" href="ChekoutPayement.aspx">
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
									<div class="card rounded-0 shadow-none">
										<div class="card-header border-bottom">
											<h2 class="h5 my-2">Choose Payment Method</h2>
										</div>
										<div class="card-body">
											
											<div class="tab-content" id="pills-tabContent">
												<div class="tab-pane fade show active" id="credit-card" role="tabpanel">
													<div class="p-3 border">
														<form>
															<div class="mb-3">
																<p>Select your Method </p>
																<div class="form-check form-check-inline">
																	<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
																	<%--<label class="form-check-label" for="inlineRadio1">payment on delivery</label>--%>
                                                                    <asp:Label ID="Label1" CssClass="form-check-label"  for="inlineRadio1" runat="server" Text="payment on delivery"></asp:Label>
																</div>
															</div>
														
															<div class="row">
																<div class="col-md-12">
																	<div class="d-grid">	
																		<%--<a href="javascript:;" class="btn btn-white btn-ecomm rounded-0">Confirm Payment</a>--%>
                                                                        <asp:Button ID="Button1" OnClick="Button1_Click" CssClass="btn btn-white btn-ecomm rounded-0" runat="server" Text="Confirm Payment" />
																	</div>
																</div>
															</div>
														</form>
													</div>
												</div>
											
											
											</div>
										</div>
									</div>
									<div class="card rounded-0 shadow-none">
										<div class="card-body">
											<div class="row">
												<div class="col-md-12">
													<div class="d-grid">
														<%--<a href="javascript:;" class="btn btn-light btn-ecomm"><i class="bx bx-chevron-left"></i>Back to Shipping</a>--%>
                                                        <asp:HyperLink ID="HyperLink1" CssClass="btn btn-light btn-ecomm" runat="server"><i class="bx bx-chevron-left"></i>Back to Shipping</asp:HyperLink>
													</div>
												</div>
												
											</div>
										</div>
									</div>
								</div>
							</div>
						<!-- hna -->
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

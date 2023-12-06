<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Facture.aspx.cs" Inherits="Projet_De_Fin_Detude.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
												<a class="step-item active" href="Facture.aspx">
													<div class="step-progress"><span class="step-count">3</span>
													</div>
													<div class="step-label"><i class='bx bx-cube'></i>Facture</div>
												</a>
											
											</div>
										</div>
									</div>
									<!-- hna -->
									<%--<div class="card rounded-0 shadow-none">--%>
									<asp:Panel ID="Panel1" CssClass="card rounded-0 shadow-none" runat="server">
										<div class="card-header border-bottom">
											<h2 class="h5 my-2">Facture</h2>
										</div>
										<div class="card-body">
											
											<div class="tab-content" id="pills-tabContent">
												<div class="tab-pane fade show active" id="credit-card" role="tabpanel">
													<div class="p-3 border">
														<div>
															<div class="mb-3">
																<%--<p> flan</p>--%> 
																<%--<p> ben flan </p>--%> 
																<%--<p> CIN ddyal flan </p>--%> 
																<%--<p> adresse dyal flan</p>--%>
                                                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
																&nbsp;
																<br />
																<asp:Label ID="Label2" runat="server" Text=""></asp:Label>
																<br />
                                                                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
																<br />
                                                                <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
																<div class="form-check form-check-inline">
                                                                    <asp:GridView ID="GridView1" CssClass="table" runat="server">

                                                                    </asp:GridView>

																<%--	<table class="table">
																		<thead>
																		  <tr>
																			<th scope="col">#</th>
																			<th scope="col">First</th>
																			<th scope="col">Last</th>
																			<th scope="col">Handle</th>
																		  </tr>
																		</thead>
																		<tbody>
																		  <tr>
																			<th scope="row">1</th>
																			<td>Mark</td>
																			<td>Otto</td>
																			<td>@mdo</td>
																		  </tr>
																		  <tr>
																			<th scope="row">2</th>
																			<td>Jacob</td>
																			<td>Thornton</td>
																			<td>@fat</td>
																		  </tr>
																		  <tr>
																			<th scope="row">3</th>
																			<td colspan="2">Larry the Bird</td>
																			<td>@twitter</td>
																		  </tr>
																		</tbody>
																	  </table>--%>
																</div>
															</div>
															   <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
															 </asp:Panel>
															<div class="row">
																<div class="col-md-12">
																	<div class="d-grid">
																			<%--<a href="javascript:;" class="btn btn-white btn-ecomm rounded-0">Confirm Payment</a>--%>
                                                                        <asp:Button ID="Button1" OnClick="Button1_Click" CssClass="btn btn-white btn-ecomm rounded-0" runat="server" Text="Download" />
                                                                        <asp:HyperLink ID="HyperLink1" CssClass="btn btn-color btn-ecomm rounded-0" runat="server" NavigateUrl="~/Chekouut-complete.aspx">Next</asp:HyperLink>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											
											
											</div>
										</div>
                                     
									<%--</div>--%>
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
</asp:Content>

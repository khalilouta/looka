<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Projet_De_Fin_Detude.WebForm11" %>
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
							<h3 class="breadcrumb-title pe-3">Contact Us</h3>
							<div class="ms-auto">
								<nav aria-label="breadcrumb">
									<ol class="breadcrumb mb-0 p-0">
										<li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i> Home</a>
										</li>
										<li class="breadcrumb-item"><a href="javascript:;">Pages</a>
										</li>
										<li class="breadcrumb-item active" aria-current="page">Contact Us</li>
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
						<h3 class="d-none">Google Map</h3>
						<div class="contact-map p-3 bg-dark-1 rounded-0 shadow-none">
							<iframe src=https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3371.2031461712236!2d-6.361360614590014!3d32.33325551378746!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xda386551363ed47%3A0x491cefabee81b2c9!2sGroupe%20Institut%20Billgates!5e0!3m2!1sar!2sma!4v1624549330570!5m2!1sar!2sma" class="w-100" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
						</div>
					</div>
				</section>
				<section class="py-4">
					<div class="container">
						<div class="row">
							<div class="col-lg-8">
								<div class="p-3 bg-dark-1">
									<form>
										<div class="form-body">
											<h6 class="mb-0 text-uppercase">Send A Message</h6>
											<div class="my-3 border-bottom"></div>
											<div class="mb-3">
												<%--<label class="form-label">Email From Our Site</label>--%>
												<%--<input type="text" class="form-control" />--%>
												<%--<asp:TextBox ID="txtRec" runat="server" CssClass="form-control" value="" ></asp:TextBox> &nbsp;--%> 
												<%--<asp:TextBox ID="Txteml" CssClass="form-control" value="khqwahi@gmail.com" runat="server" ></asp:TextBox>--%>
												   <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ce "></asp:RequiredFieldValidator>--%>
											</div>
                                         
											<div class="mb-3">
												<label class="form-label">Enter Email</label>
												<%--<input type="text" class="form-control" />--%>
                                                
												<asp:TextBox ID="txtSender" CssClass="form-control" name="title" runat="server" TextMode="Email"></asp:TextBox> 
												
											</div>
											<div class="mb-3">
												<label class="form-label">Number Phone</label>
												<%--<input type="text" class="form-control" />--%>
												<%--<asp:TextBox ID="txtpswrd" TextMode="Password" name="title" CssClass="form-control" runat="server"></asp:TextBox>--%>
												<asp:TextBox ID="txtphone" name="title" runat="server" CssClass="form-control" ></asp:TextBox> &nbsp; 
											</div>
											<div class="mb-3">
												<label class="form-label">Message</label>
												<%--<textarea class="form-control" rows="4" cols="4"></textarea>--%>
												<%--<textarea id="TextArea1" cols="20" class="form-control" rows="4"></textarea>--%>
												
												<asp:TextBox ID="txtMil" CssClass="form-control" name="body" runat="server" ></asp:TextBox> 
													 
											</div>
											<div class="mb-3">
												<%--<button class="btn btn-light btn-ecomm">Send Message</button>--%>
												<asp:Button ID="Button1" CssClass="btn btn-light btn-ecomm" OnClick="Button1_Click" runat="server" Text="Send Message" />
											</div>
										</div>
									</form>
								</div>
							</div>
							<div class="col-lg-4">
								<div class="p-3 bg-dark-1">
									<div class="address mb-3">
										<p class="mb-0 text-uppercase text-white">Address</p>
										<p class="mb-0 font-12">Beni Melllal, Maroc</p>
									</div>
									<div class="phone mb-3">
										<p class="mb-0 text-uppercase text-white">Phone</p>
										<p class="mb-0 font-13">Mobile : +212-660083603</p>
									</div>
									<div class="email mb-3">
										<p class="mb-0 text-uppercase text-white">Email</p>
										<p class="mb-0 font-13">djkhalil277@gmail.com</p>
									</div>
									<div class="working-days mb-3">
										<p class="mb-0 text-uppercase text-white">WORKING DAYS</p>
										<p class="mb-0 font-13">Mon - FRI / 9:30 AM - 6:30 PM</p>
									</div>
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

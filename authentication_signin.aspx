<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="authentication_signin.aspx.cs" Inherits="Projet_De_Fin_Detude.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--start page wrapper -->
		<div class="page-wrapper">
			<div class="page-content">
				<!--start breadcrumb-->
				<section class="py-3 border-bottom d-none d-md-flex">
					<div class="container">
						<div class="page-breadcrumb d-flex align-items-center">
							<h3 class="breadcrumb-title pe-3">Sign in</h3>
							<div class="ms-auto">
								<nav aria-label="breadcrumb">
									<ol class="breadcrumb mb-0 p-0">
										<li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i> Home</a>
										</li>
										<li class="breadcrumb-item"><a href="javascript:;">Authentication</a>
										</li>
										<li class="breadcrumb-item active" aria-current="page">Sign In</li>
									</ol>
								</nav>
							</div>
						</div>
					</div>
				</section>
				<!--end breadcrumb-->
				<!--start shop cart-->
				<section class="">
					<div class="container">
						<div class="section-authentication-signin d-flex align-items-center justify-content-center my-5 my-lg-0">
							<div class="row row-cols-1 row-cols-xl-2">
								<div class="col mx-auto">
									<div class="card">
										<div class="card-body">
											<div class="border p-4 rounded">
												<div class="text-center">
													<h3 class="">Sign in</h3>
													<p>Don't have an account yet? <a href="authentication-signup.aspx">Sign up here</a>
													</p>
												</div>
										
												<div class="login-separater text-center mb-4"> <span>WELCOME</span>
													<hr/>
												</div>
												<div class="form-body">
													<div class="row g-3">
														<div class="col-12">
															<label for="inputEmailAddress" class="form-label">Email Address</label>
															<%--<input type="email" class="form-control" id="inputEmailAddress" placeholder="Email Address">--%>
															<asp:TextBox ID="inputEmailAddress" CssClass="form-control" TextMode="Email"  placeholder="Enter Email Address"  runat="server"></asp:TextBox>

														</div>
														<div class="col-12">
															<label for="inputChoosePassword" class="form-label">Enter Password</label>
															<div class="input-group" id="show_hide_password">
																<%--<input type="password" class="form-control border-end-0" id="inputChoosePassword" value="12345678" placeholder="Enter Password">--%> 
																<asp:TextBox ID="inputChoosePassword" CssClass="form-control border-end-0" TextMode="Password"  placeholder="Enter Email Password"  runat="server"></asp:TextBox>
															</div>
														</div>
														<div class="col-md-6">
															<div class="form-check form-switch">
																<%--<input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" checked>--%>
																<asp:CheckBox ID="CheckBox1" runat="server" />
																<label class="form-check-label" for="flexSwitchCheckChecked">Remember Me</label>
															</div>
														</div>
														<div class="col-md-6 text-end">	
															<%--<a href="#">Forgot Password ?</a>--%>
															<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ForgetPassword.aspx">Forgot Password ?</asp:HyperLink>
														</div>
														<div class="col-12">
															<div class="d-grid">
																<%--<button type="submit" class="btn btn-light"><i class="bx bxs-lock-open"></i>Sign in</button>--%>
																<asp:Button ID="Button1" CssClass="btn btn-light"  runat="server" Text="Sign in" OnClick="Button1_Click" /> 
															</div>
														</div>
                                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
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

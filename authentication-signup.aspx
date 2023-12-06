<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="authentication-signup.aspx.cs" Inherits="Projet_De_Fin_Detude.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!--start page wrapper -->
		<div class="page-wrapper">
			<div class="page-content">
				<!--start breadcrumb-->
				<section class="py-3 border-bottom d-none d-md-flex">
					<div class="container">
						<div class="page-breadcrumb d-flex align-items-center">
							<h3 class="breadcrumb-title pe-3">Sign Up</h3>
							<div class="ms-auto">
								<nav aria-label="breadcrumb">
									<ol class="breadcrumb mb-0 p-0">
										<li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i> Home</a>
										</li>
										<li class="breadcrumb-item"><a href="javascript:;">Authentication</a>
										</li>
										<li class="breadcrumb-item active" aria-current="page">Sign Up</li>
									</ol>
								</nav>
							</div>
						</div>
					</div>
				</section>
				<!--end breadcrumb-->
				<!--start shop cart-->
				<section class="py-0 py-lg-5">
					<div class="container">
						<div class="section-authentication-signin d-flex align-items-center justify-content-center my-5 my-lg-0">
							<div class="row row-cols-1 row-cols-lg-1 row-cols-xl-2">
								<div class="col mx-auto">
									<div class="card mb-0">
										<div class="card-body">
											<div class="border p-4 rounded">
												<div class="text-center">
													<h3 class="">Sign Up</h3>
													<p>Already have an account? <a href="authentication_signin.aspx">Sign in here</a>
													</p>
												</div>
								
												<div class="login-separater text-center mb-4"> <span>WELCOME</span>
													<hr/>
												</div>
												<div class="form-body">
													<div class="row g-3">
														<div class="col-sm-6">
															<label for="inputFirstName" class="form-label">First Name</label>
															<%--<input type="email" class="form-control" id="inputFirstName" placeholder="Jhon">--%>
															<asp:TextBox ID="inputFirstName" CssClass="form-control"  placeholder="Enter First Name"  runat="server"></asp:TextBox>
															<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Saisir Obligatoire" ControlToValidate="inputFirstName" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
														</div>
														<div class="col-sm-6">
															<label for="inputLastName" class="form-label">Last Name</label>
															<%--<input type="email" class="form-control" id="inputLastName" placeholder="Deo">--%>
															<asp:TextBox ID="inputLastName" CssClass="form-control"  placeholder="Enter Last Name"  runat="server"></asp:TextBox>
															<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Saisir Obligatoire" ControlToValidate="inputLastName" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
														</div>
														<div class="col-12">
															<label for="inputEmailAddress" class="form-label">Email Address</label>
															<%--<input type="email" class="form-control" id="inputEmailAddress" placeholder="example@user.com">--%>
															<asp:TextBox ID="inputEmailAddress" CssClass="form-control" TextMode="Email"  placeholder="example@user.com"  runat="server"></asp:TextBox>
															<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Saisir Obligatoire" ControlToValidate="inputEmailAddress" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
														</div>
														<div class="col-12">
															<label for="inputChoosePassword" class="form-label">Password</label>
															<div class="input-group" id="show_hide_password">
																<%--<input type="password" class="form-control border-end-0" id="inputChoosePassword" value="12345678" placeholder="Enter Password">--%> 
																<asp:TextBox ID="inputChoosePassword" CssClass="form-control" TextMode="Password"  placeholder="Enter Password"   runat="server"></asp:TextBox>
																<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Saisir Obligatoire" ControlToValidate="inputChoosePassword" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
															</div>
														</div>
														<div class="col-12">
															<label for="inputSelectCountry" class="form-label">Country</label>
															<%--<input type="text" class="form-control border-end-0" id="inputChoosePassword"  placeholder="Enter Country ">--%> 
															<asp:TextBox ID="inputChoosecountry" CssClass="form-control"  placeholder="Enter Country "   runat="server"></asp:TextBox>
															<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Saisir Obligatoire" ControlToValidate="inputChoosecountry" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
														</div>
														<div class="col-12">
															<label for="inputSelectCountry" class="form-label">Phone</label>
															<%--<input type="text" class="form-control border-end-0" id="inputChoosePassword"  placeholder="Enter Phone  ">--%> 
															<asp:TextBox ID="inputChoosephone" CssClass="form-control"  placeholder="Enter Phone" TextMode="Number"   runat="server"></asp:TextBox>
															<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Saisir Obligatoire" ControlToValidate="inputChoosephone" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
														</div>
														<div class="col-12">
															<div class="form-check form-switch">
																<%--<input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked">--%>
																<asp:CheckBox ID="flexSwitchCheckChecked" runat="server" />
																<label class="form-check-label" for="flexSwitchCheckChecked">I read and agree to Terms & Conditions</label>
															</div>
														</div>
														<div class="col-12">
															<div class="d-grid">
																																																												
                                                                <asp:Button ID="Button1" CssClass="btn btn-light"  runat="server" Text="Sign up" OnClick="Button1_Click" /> 
																<%--<button type="submit" class="btn btn-light"><i class='bx bx-user'></i>Sign up</button>--%>
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

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="Projet_De_Fin_Detude.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
		<!--start page wrapper -->
		<div class="page-wrapper">
			<div class="page-content">
				<!--start breadcrumb-->
				<section class="py-3 border-bottom d-none d-md-flex">
					<div class="container">
						<div class="page-breadcrumb d-flex align-items-center">
							<h3 class="breadcrumb-title pe-3">Forgot Password</h3>
							<div class="ms-auto">
								<nav aria-label="breadcrumb">
									<ol class="breadcrumb mb-0 p-0">
										<li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i> Home</a>
										</li>
										<li class="breadcrumb-item"><a href="javascript:;">Authentication</a>
										</li>
										<li class="breadcrumb-item active" aria-current="page">Forgot Password</li>
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
						<div class="authentication-forgot d-flex align-items-center justify-content-center">
							<div class="card forgot-box">
								<div class="card-body">
									<div class="p-4 rounded  border">
										<div class="text-center">
											<img src="assets/images/icons/forgot-2.png" width="120" alt="" />
										</div>
										<h4 class="mt-5 font-weight-bold">Forgot Password?</h4>
										<p class="">Enter your registered email ID to reset the password</p>
										<div class="my-4">
											<label class="form-label">Email id</label>
											<%--<input type="text" class="form-control form-control-lg" placeholder="example@user.com" />--%>
                                            <asp:TextBox ID="TextBox1" CssClass="form-control form-control-lg" placeholder="example@user.com" runat="server"></asp:TextBox>
										</div>
										<div class="d-grid gap-2">
											<%--<button type="button" class="btn btn-light btn-lg">Send</button>--%> 
                                            <asp:Button ID="Button1" CssClass="btn btn-light btn-lg" OnClick="Button1_Click" runat="server" Text="Send" />
                                            <asp:HyperLink ID="HyperLink1" CssClass="btn btn-light btn-lg" runat="server" NavigateUrl="~/authentication_signin.aspx"><i class='bx bx-arrow-back me-1'></i>Back to Login</asp:HyperLink>
											<%--<a href="authentication-signin.html" class="btn btn-light btn-lg"><i class='bx bx-arrow-back me-1'></i>Back to Login</a>--%>
										</div>
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
									</div>
								</div>
							</div>
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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="authentification_admin.aspx.cs" Inherits="Projet_De_Fin_Detude.authentification_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<!--favicon-->
	<link rel="icon" href="assets/images/favicon-32x32.png" type="image/png" />
	<!--plugins-->
	<link href="assets/plugins/OwlCarousel/css/owl.carousel.min.css" rel="stylesheet" />
	<link href="assets/plugins/simplebar/css/simplebar.css" rel="stylesheet" />
	<link href="assets/plugins/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet" />
	<link href="assets/plugins/metismenu/css/metisMenu.min.css" rel="stylesheet" />
	<!-- loader-->
	<link href="assets/css/pace.min.css" rel="stylesheet" />
	<script src="assets/js/pace.min.js"></script>
	<!-- Bootstrap CSS -->
	<link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&amp;display=swap" rel="stylesheet"/>
    <link href="assets/css/app.css" rel="stylesheet" />
	<link href="assets/css/icons.css" rel="stylesheet"/>
    <title>Shopping oNline</title>
</head>
<body class="bg-theme bg-theme4">
	<b class="screen-overlay"></b>
    <form id="form4" runat="server">
        <div>
            	<!--start page wrapper -->
		<div class="page-wrapper">
			<div class="page-content">
				<!--start breadcrumb-->
				<section class="py-3 border-bottom d-none d-md-flex">
					<div class="container">
						<div class="page-breadcrumb d-flex align-items-center">
							<h3 class="breadcrumb-title pe-3">ADMIN</h3>
							<div class="ms-auto">
								<nav aria-label="breadcrumb">
									<ol class="breadcrumb mb-0 p-0">
										<li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt"></i> Home</a>
										</li>
										<li class="breadcrumb-item"><a href="javascript:;">Authentication</a>
										</li>
										<li class="breadcrumb-item active" aria-current="page">ADMIN</li>
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
													<h3 class="">ADMIN</h3>
													
												</div>
										
												<div class="login-separater text-center mb-4"> <span>WELCOME</span>
													<hr/>
												</div>
												<div class="form-body">
													<div class="row g-3">
														<div class="col-12">
															<label for="inputEmailAddress" class="form-label">Email Address</label>
															<%--<input type="email" class="form-control" id="inputEmailAddress" placeholder="Email Address">--%>
															<asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Email Address" runat="server"></asp:TextBox>
														</div>
														<div class="col-12">
															<label for="inputChoosePassword" class="form-label">Enter Password </label>
															&nbsp;<div class="input-group" id="show_hide_password">
																<%--<input type="password" class="form-control border-end-0" id="inputChoosePassword" value="12345678" placeholder="Enter Password">--%> 
                                                                <asp:TextBox ID="TextBox2" CssClass="form-control border-end-0" TextMode="Password" placeholder="Enter Password" runat="server"></asp:TextBox>
															</div>
														</div>
														<div class="col-md-6">
															<div class="form-check form-switch">
																<%--<input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" checked>--%>
                                                                <asp:CheckBox ID="CheckBox1" CssClass="form-check-input" type="checkbox" runat="server" />
																<label class="form-check-label" for="flexSwitchCheckChecked">Remember Me</label>
															</div>
														</div>
														<div class="col-md-6 text-end">	
														</div>
														<div class="col-12">
															<div class="d-grid">
                                                                <asp:Button ID="Button1" CssClass="btn btn-light" OnClick="Button1_Click" runat="server" Text="Sign in" />
																<%--<button type="submit" class="btn btn-light"><i class="bx bxs-lock-open"></i>Sign in</button>--%>
															</div>
                                                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
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
        </div>
    </form>
		<!-- Bootstrap JS -->
	<script src="assets/js/bootstrap.bundle.min.js"></script>
	<!--plugins-->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/plugins/simplebar/js/simplebar.min.js"></script>
	<script src="assets/plugins/OwlCarousel/js/owl.carousel.min.js"></script>
	<script src="assets/plugins/OwlCarousel/js/owl.carousel2.thumbs.min.js"></script>
	<script src="assets/plugins/metismenu/js/metisMenu.min.js"></script>
	<script src="assets/plugins/perfect-scrollbar/js/perfect-scrollbar.js"></script>
	<!--app JS-->
	<script src="assets/js/app.js"></script>
	<!--Password show & hide js -->
	<script src="assets/js/show-hide-password.js"></script>
</body>
</html>

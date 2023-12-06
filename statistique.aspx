<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="statistique.aspx.cs" Inherits="Projet_De_Fin_Detude.WebForm20" %>
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
										<li class="breadcrumb-item active" aria-current="page">Statistiques</li>
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
													<a href="Dashbord.aspx" class="list-group-item  d-flex justify-content-between align-items-center bg-transparent">Dashboard <i class='bx bx-tachometer fs-5'></i></a>
													<a href="Orders.aspx" class="list-group-item d-flex justify-content-between align-items-center bg-transparent">Orders <i class='bx bx-cart-alt fs-5'></i></a>
													<a href="statistique.aspx" class="list-group-item active d-flex justify-content-between align-items-center ">Statistiques & Archive  <i class='bx bx-heart fs-5'></i></a>
													<a href="Acountproduct.aspx" class="list-group-item d-flex justify-content-between align-items-center bg-transparent">Product <i class='bx bx-download fs-5'></i></a>
													<a href="AccountBlog.aspx" class="list-group-item d-flex justify-content-between align-items-center bg-transparent">Blog <i class='bx bx-home-smile fs-5'></i></a>
													<a href="Home(index).aspx" class="list-group-item d-flex justify-content-between align-items-center bg-transparent">Logout <i class='bx bx-log-out fs-5'></i></a>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="card shadow-none mb-0">
											<div class="card-body">
												<p>Hello <strong>KHALID WAHI </strong></p>
                                                <asp:Label ID="Label1" runat="server" Text="Nombre De Clients : "></asp:Label>
												<asp:Label ID="Label2" runat="server" Text=""></asp:Label>
												<i class='bx bx-user fs-8'></i>
											</div>
											<div class="card-body">
                                                <asp:Label ID="Label3" runat="server" Text="Nombre De Commandes :"></asp:Label>
                                                <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
												<i class='bx bx-cart-alt fs-8'></i>
											</div>
											<div class="card-body">
                                                <asp:Label ID="Label5" runat="server" Text="Nombre De Produits :"></asp:Label>
                                                <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
												 <i class='bx bx-download fs-8'></i>
											</div>
										</div>
										<br />
										
                                        <asp:Label ID="Label7" runat="server" Text="Archive Product"></asp:Label>
										<br />
                                        <asp:GridView ID="GridView1" CssClass="table" runat="server">

                                        </asp:GridView>
										<br />
										
                                        <asp:Label ID="Label8" runat="server" Text="Archive Blog"></asp:Label>
										<br />
                                        <asp:GridView ID="GridView2" CssClass="table" runat="server">

                                        </asp:GridView>
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

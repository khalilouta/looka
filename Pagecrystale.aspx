<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Pagecrystale.aspx.cs" Inherits="Projet_De_Fin_Detude.WebForm21" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
        <div class="card-body">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card shadow-none mb-0">
                        <div class="card-body">
                            <p>Hello <strong>Crystale Report </strong></p>
                            <asp:Button ID="Button1" CssClass="form-control" OnClick="Button1_Click" runat="server" Text="Afiicher Le Pactorial" />
                            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

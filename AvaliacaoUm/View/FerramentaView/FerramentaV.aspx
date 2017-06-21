<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FerramentaV.aspx.cs" Inherits="AvaliacaoUm.View.FerramentaView.FerramentaV" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <h1>CADASTRAR FERRAMENTAS</h1>
            <div class="form-group">
                <asp:Label ID="lblMatricula" runat="server" Text="Matricula"></asp:Label>
                <asp:TextBox ID="txtMatricula" CssClass="form-control" runat="server" MaxLength="6"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblDiametro" runat="server" Text="Diametro"></asp:Label>
                <asp:TextBox ID="txtDiametro" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblLote" runat="server" Text="Lote"></asp:Label>
                <asp:DropDownList ID="ddlLote" runat="server" CssClass="form-control" DataTextField="Nome" DataValueField="Id">
                </asp:DropDownList>
            </div>
            <asp:Button ID="btnSalvar" CssClass="btn btn-primary" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
            <asp:Button ID="btnLimpar" CssClass="btn btn-primary" runat="server" Text="Limpar" OnClick="btnLimpar_Click" />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

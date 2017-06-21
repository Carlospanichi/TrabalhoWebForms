<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoteV.aspx.cs" Inherits="AvaliacaoUm.View.LoteView.LoteV" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <h1>CADASTRAR LOTES</h1>
            <div class="form-group">
                <asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label>
                <asp:TextBox ID="txtNome" CssClass="form-control" runat="server" Font-Overline="True"></asp:TextBox>
            </div>
           
            <div class="form-group">
                <asp:Label ID="lblDescricao" runat="server" Text="Descrição"></asp:Label>
                <asp:TextBox ID="txtDescricao" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>
            <asp:Button ID="btnSalvar" CssClass="btn btn-primary" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
            <asp:Button ID="btnLimpar" CssClass="btn btn-primary" runat="server" Text="Limpar" OnClick="btnLimpar_Click" />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

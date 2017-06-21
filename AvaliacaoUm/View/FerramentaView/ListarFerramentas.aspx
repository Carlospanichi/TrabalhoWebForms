<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListarFerramentas.aspx.cs" Inherits="AvaliacaoUm.View.FerramentaView.ListarFerramentas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <h1 align="middle">UTILIDADES FERRAMENTAS</h1>
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group" align="middle">
                        <asp:GridView ID="gvFerramentas" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="ID" />
                                <asp:BoundField DataField="Matricula" HeaderText="Matrícula" />
                                <asp:BoundField DataField="Diametro" HeaderText="Diametro" />
                                <asp:BoundField DataField="Lote.Nome" HeaderText="Lote" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <div class="form-group">
                                <asp:Label ID="lblBFerramenta" runat="server" Text="Buscar Ferramenta por ID"></asp:Label>
                                <asp:TextBox ID="txtRMatricula" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblResultMatricula" runat="server" Text="Matricula"></asp:Label>
                                <asp:TextBox ID="txtResultMatricula" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="Diametro (mm)"></asp:Label>
                                <asp:TextBox ID="txtRDiametro" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server" Text="Lote"></asp:Label>
                                <asp:TextBox ID="txtRlote" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group" >
                                <asp:Button ID="btnBuscar" runat="server" CssClass="btn btn-primary" OnClick="btnBuscar_Click" Text="Buscar" />
                                <asp:Button ID="btnAlterar" runat="server" CssClass="btn btn-primary" Text="Alterar" OnClick="btnAlterar_Click" />
                                <asp:Button ID="btnExcluir" runat="server" CssClass="btn btn-primary" Text="Excluir" OnClick="btnExcluir_Click" />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblNExiste" runat="server" Text=""></asp:Label>                                
                            </div>
                        </div>
                    </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

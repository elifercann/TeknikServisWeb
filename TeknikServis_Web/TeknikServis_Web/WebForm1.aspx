<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TeknikServis_Web.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:Label ID="Label1" runat="server" Text="Ürün Seri No:" Font-Bold="True"></asp:Label>
    <asp:TextBox ID="Textbox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Ara" OnClick="Button1_Click" CssClass="btn btn-primary" />

    <table class="table table-bordered">
        <tr>

            <th>AÇIKLAMA</th>
            <th>TARİH</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>

                <td> <%#Eval("Açıklama") %></td>
                <td><%#Eval("Tarih") %></td>
                <tr>
                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>


</asp:Content>

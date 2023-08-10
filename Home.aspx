<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .frontimage
        {
            width:100%;
            height:300px;
            border: 10px solid white;
        }
            .row {
        display: flex;
        flex-wrap:wrap;
    }

    .item {
        margin:30px; /* Adjust as needed to create spacing between items */
        box-shadow: 2px 2px 5px 2px rgba(0, 0, 0, 0.3);
    }
    .btn-primary
    {
       background-color:rgb(50,174,177);
       border:none;
       width:100%;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image runat="server" ImageUrl="~/images/front.jpg" CssClass="frontimage"/>
    <asp:Repeater ID="GVP" runat="server">
 <HeaderTemplate>
        <div class="row">
    </HeaderTemplate>
    <ItemTemplate>
        <div class="item">
            <asp:Image runat="server" ImageUrl='<%# Eval("ImageURL") %>' Width="190px" Height="200px"/><br />
               <span>Price: <%# Eval("Price") %></span>
            <asp:LinkButton runat="server" Text="ADD to cart" CssClass="btn btn-primary"></asp:LinkButton>
        </div>
    </ItemTemplate>
    <FooterTemplate>
        </div>
    </FooterTemplate>
    </asp:Repeater>
</asp:Content>


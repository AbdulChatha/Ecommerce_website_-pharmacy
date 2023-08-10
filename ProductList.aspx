<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ProductList.aspx.cs" Inherits="ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .item
        {
            color:RGB(2, 117, 216);
        }
        .btnaction
        {
            width:25%;
            margin-top:20px;
        }
        .productimg
        {
            text-align:center;
            
        }
        .custumcard
        {
            width:60%;
            box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="text-align:right">
        <asp:LinkButton runat="server" PostBackUrl="~/ProductSetup.aspx" Text="Create New" CssClass="btn btn-primary"></asp:LinkButton>
    </div>
    <div>
    <asp:GridView runat="server" ID="GVProduct" AutoGenerateColumns="false" CssClass="table table-bordered table-hover" OnRowCommand="GVProduct_RowCommand" GridLines="Vertical">
        <Columns>
           <%--<asp:BoundField HeaderText="Name" DataField="ProductName"/>
           <asp:BoundField HeaderText="Price" DataField="Price" />
            <asp:BoundField HeaderText="Quantity" DataField="Quantity" />
            <asp:BoundField HeaderText="Prescription Required" DataField="PrescriptionRequired" />
            <asp:BoundField HeaderText="Brand" DataField="BrandName" />
            <asp:BoundField HeaderText="Category" DataField="CategoryName" />
            <asp:BoundField HeaderText="Active Ingredient" DataField="ActiveIngredient" />
            <asp:BoundField HeaderText="Dosage Strength" DataField="DosageStrength" />
            <asp:BoundField HeaderText="Pakage Size" DataField="PakageSize" />
            <asp:BoundField HeaderText="Expiry Date" DataField="ExpiryDate" />
            <asp:BoundField HeaderText="Date Added" DataField="DateAdded" />
            <asp:BoundField HeaderText="Description" DataField="Description" />--%>
           
            <asp:TemplateField HeaderText="Product">
                <ItemTemplate>
                    <div class="productimg">
                    <div class="custumcard">
                    <asp:Image runat="server" ImageUrl='<%# Eval("ImageURL") %>' Width="200px" Height="220px"/><br />
                    <asp:LinkButton runat="server" CssClass="btn btn-primary btnaction" ID="linkbtnedit" Text="Edit"  CommandArgument='<%# Eval("ProductID") %>' CommandName="edit"></asp:LinkButton>
                    <asp:LinkButton runat="server" CssClass="btn btn-danger btnaction" OnClientClick='return confirm("Press a button!")' ID="linkbtndel" Text="Delete" CommandArgument='<% # Eval("ProductID") %>' CommandName="del"></asp:LinkButton>
                        </div>
                        </div>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Details">
                 <ItemTemplate>
        <div class="item">
               <span><strong>Name:</strong> <%# Eval("ProductName") %></span> <br />
            <span><strong>Price:</strong> <%# Eval("Price") %></span> <br />
            <span><strong>Quantity:</strong> <%# Eval("Quantity") %></span> <br />
            <span><strong>Prescription Required:</strong> <%# Eval("PrescriptionRequired") %></span> <br />
            <span><strong>Brand Name:</strong> <%# Eval("BrandName") %></span> <br />
            <span><strong>Category Name:</strong> <%# Eval("CategoryName") %></span> <br />
            <span><strong>Active Ingredient:</strong> <%# Eval("ActiveIngredient") %></span> <br />
            <span><strong>Dosage Strength:</strong> <%# Eval("DosageStrength") %></span> <br />
            <span><strong>Pakage Size:</strong> <%# Eval("PakageSize") %></span> <br />
            <span><strong>Expiry Date:</strong> <%# Eval("ExpiryDate") %></span> <br />
            <span><strong>Date Added:</strong> <%# Eval("DateAdded") %></span> <br />
            <span><strong>Description:</strong> <%# Eval("Description") %></span> <br />
        </div>
    </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView> 
    </div>
</asp:Content>


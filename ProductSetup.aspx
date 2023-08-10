<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ProductSetup.aspx.cs" Inherits="ProductSetup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
        <div class="container card">
            <div class="row">
                <div class="col-6 col-lg-3">
                    <div class="form-group">
                        <label>Product Name:</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtPName"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="txtPName" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-6 col-lg-3">
                    <div class="form-group">
                        <label>Product Price:</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtPPrice" ></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="txtPPrice" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" ControlToValidate="txtPPrice" Operator="DataTypeCheck" Type="Double" ErrorMessage="Invalid data type" ForeColor="Red"></asp:CompareValidator>
                    </div>
                </div>
                <div class="col-6 col-lg-3">
                    <div class="form-group">
                        <label>Product Quantity:</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtPQuantity" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="txtPName" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" ControlToValidate="txtPPrice" Operator="GreaterThan" ValueToCompare="0"  Type="Integer" ErrorMessage="Value should be greater than 0" ForeColor="Red"></asp:CompareValidator>
                    </div>
                </div>
                <div class="col-6 col-lg-3">
                    <div class="form-group">
                        <label>Preciption Required:</label>
                       <asp:RadioButtonList ID="PR" runat="server" RepeatColumns="2">
                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                            <asp:ListItem Text="No" Value="0" ></asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PR" ForeColor="Red" ErrorMessage="Please select an option">
                </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-6 col-lg-3">
                    <div class="form-group">
                        <label>Brand Name:</label>
                        <asp:DropDownList runat="server" CssClass="form-control" ID="ddlBrand"></asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="ddlBrand" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-6 col-lg-3">
                    <div class="form-group">
                        <label>Product Category:</label>
                        <asp:DropDownList runat="server" CssClass="form-control" ID="ddlCategory"></asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ErrorMessage="*" ControlToValidate="ddlCategory" InitialValue="0"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-6 col-lg-3">
                    <div class="form-group">
                        <label>Active Ingrediants:</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtPActiveIn"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="txtPActiveIn" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-6 col-lg-3">
                    <div class="form-group">
                        <label>Dosage Strength:</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtDosage"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="txtDosage" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-6 col-lg-3">
                    <div class="form-group">
                        <label>Pakage Size:</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtPakageSize"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="txtPakageSize" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-6 col-lg-3">
                    <div class="form-group">
                        <label>Expiry Date:</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtExpirydate" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="txtExpirydate" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-6 col-lg-3">
                    <div class="form-group">
                        <label>Product Discription:</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtDiscription" TextMode="MultiLine" Rows="2" Columns="10" ></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="txtDiscription" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </div>
                </div>
                  <div class="col-6 col-lg-3">
                    <div class="form-group">
                        <label>Product Image:</label>
                        <asp:FileUpload runat="server" ID="fupload"/>
                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="fupload" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="form-group">
                        <asp:Button runat="server" CssClass="btn btn-primary" OnClick="cmdSave_Click" ID="cmdSave" Text="Save"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


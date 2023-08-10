<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="bootstrap.css" rel="stylesheet" />
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <style>
        .container
        {
            width:400px;
            margin-top:30px;
        }
        label
        {
            font-family:Verdan;
        }
        .btn 
        {
            margin-bottom:10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container card">
            <div class="row">
                <div class="col-lg-12 " style="text-align:center">
                    <h2 style="color:rgb(0,105,217)">Login Form</h2>
                </div>
                 <div class="col-lg-12">
                    <div class="form-group">
                        <label for="txtEmail">Email:</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" ></asp:TextBox>
                    </div>
                </div>
                 <div class="col-lg-12">
                    <div class="form-group">
                        <label for="txtPassword">Password:</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtPassword" ></asp:TextBox>
                    </div>
                </div>
            </div>
            <asp:button runat="server" OnClick="Login_Click"  text="Login"  cssclass="btn btn-primary"/>

            <div class="col-lg-12">
                
        </div>
        </div>
    </form>
</body>
</html>


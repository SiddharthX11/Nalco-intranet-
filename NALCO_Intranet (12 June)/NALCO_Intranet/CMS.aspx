<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CMS.aspx.cs" Inherits="NALCO_Intranet_CMS" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <title>CMS Form</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f4f4f4;
        }
        /* Header */
        header {
            background: linear-gradient(to right, pink 0% 1%, maroon 38% 100%);
            padding: 0.25rem;
            color: black;
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            width: 100%;
            box-sizing: border-box;
        }
        header .logo img {
            height: 40px;
            width: auto;
            vertical-align: middle;
        }
        .corporate-title {
            width: 260px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
            font-size: 25px;
            color: white;
            background: linear-gradient(to bottom, rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.3)), url('../NALCO_Intranet/Images/Nalco-Bhavan.jpg') no-repeat center;
            background-size: cover;
            border-radius: 5px;
            margin-left: 15px;
            letter-spacing: 3px;
            text-transform: uppercase;
            font-family: 'Segoe UI', sans-serif;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
        }
        /* Main Container */
        .container {
            max-width: 1000px;
            margin: 20px auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
        }
        /* Section Styling */
        .section {
            border: 1px solid #e0e0e0;
            border-radius: 5px;
            margin-bottom: 20px;
            background-color: #f9f9f9;
        }
        .section-header {
            background-color: #712a2a;
            padding: 10px;
            font-weight: bold;
            text-align: center;
            border-bottom: 1px solid #cfc7c7;
            color: white;
        }
        .section-content {
            padding: 20px;
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }
        .form-group {
            flex: 1 1 30%;
            min-width: 250px;
            margin-bottom: 15px;
        }
        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
            color: #333;
        }
        .form-control, .form-control-file {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .form-control-file {
            margin-top: 8px;
        }
        .submit-btn {
            background-color: #712a2a;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            display: block;
            margin: 20px auto;
        }
        .submit-btn:hover {
            background-color: #893232;
        }
        /* Footer */
        footer {
            background-color: #712a2a;
            color: white;
            text-align: center;
            padding: 0.1rem !important;
            margin-top: 28%;
        }
        #lblMessage {
            font-size: 14px;
            font-weight: bold;
            margin-top: 10px;
            display: block;
        }
        @media only screen and (min-width: 768px) and (max-width: 1024px) {
            header { padding: 0.5rem; }
            .container { padding: 0.75rem; }
            footer { margin-top: 486px; }
        }
    </style>
    <script type="text/javascript">
        function hideMessage() {
            setTimeout(function () {
                var message = document.getElementById('<%= lblMessage.ClientID %>');
                if (message) { message.style.display = 'none'; }
            }, 5000);
        }
    </script>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="logo">
            <img src="Images/NALCO-Photoroom.png" alt="NALCO Logo" />
        </div>
        <div class="corporate-title">
            C O R P O R A T E
        </div>
    </header>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <!-- Main Container -->
        <div class="container">
            <!-- Single Section -->
            <div class="section">
                <div class="section-header">
                    CMS
                </div>
                <div class="section-content">
                    <div class="form-group">
                        <label for="ddlUploadType">Upload Type:</label>
                        <asp:DropDownList ID="ddlUploadType" runat="server" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="ddlUploadType_SelectedIndexChanged">
                            <asp:ListItem Text="Content" Value="content" />
                            <asp:ListItem Text="Image" Value="image" />
                        </asp:DropDownList>
                    </div>
                    <div class="form-group content-field" id="type" runat="server" visible="false">
                        <label for="ddltype">Upload Content Type:</label>
                        <asp:DropDownList ID="ddltype" runat="server" CssClass="form-control" AutoPostBack="true"></asp:DropDownList>
                    </div>
                    <div class="form-group content-field" id="contsub" runat="server" visible="false">
                        <label for="txtsubject">Subject:</label>
                        <asp:TextBox ID="txtsubject" runat="server" CssClass="form-control" placeholder="Enter Subject"></asp:TextBox>
                    </div>
                    <div class="form-group" id="descriptions" runat="server" visible="false">
                        <label for="description">Description:</label>
                        <asp:TextBox ID="description" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" placeholder="Enter Description"></asp:TextBox>
                    </div>
                    <div class="form-group" id="fileUpload" runat="server" visible="false">
                        <label for="Uploadfile">Upload File:</label>
                        <asp:FileUpload ID="Uploadfile" runat="server" CssClass="form-control-file" />
                    </div>
                </div>
            </div>
            <!-- Message Label -->
            <div class="form-group">
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Visible="true"></asp:Label>
            </div>
            <!-- Submit Button -->
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="submit-btn" OnClick="btnsubmit_click" />
        </div>
        <!-- Footer -->
        <footer>
            <p>© 2025 NALCO. All Rights Reserved.</p>
        </footer>
    </form>
</body>
</html>
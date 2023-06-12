<%@ Page Title="" Language="C#" MasterPageFile="~/Lecture.Master" AutoEventWireup="true" CodeBehind="LectureMaterialUpload.aspx.cs" Inherits="StudentMaterialBoard.LectureMaterialUpload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <style>
        body
        {
            font-family: 'Segoe UI' , Tahoma, Geneva, Verdana, sans-serif;
            overflow: hidden;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }
        
        .background-overlay
        {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
        }
        
        .background-overlay::before
        {
            font-family: 'Segoe UI' , Tahoma, Geneva, Verdana, sans-serif;
            content: "";
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            background: linear-gradient(135deg, #a5cf94 50%, #205f66 50%);
            transform-origin: right bottom;
            transform: skewY(-12deg);
        }
        
        .csscontainer
        {
            font-family: 'Segoe UI' , Tahoma, Geneva, Verdana, sans-serif;
            max-width: 500px;
            padding: 40px;
            border-radius: 10px;
            background-color: #ffffffa5;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            position: relative;
            z-index: 1;
        }
        
        .form-group
        {
            margin-bottom: 20px;
        }
        
        .form-group label
        {
            font-family: 'Segoe UI' , Tahoma, Geneva, Verdana, sans-serif;
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        
        .form-group select, .form-group input[type="file"], form-group input[type="text"], .form-group textarea
        {
            font-family: 'Segoe UI' , Tahoma, Geneva, Verdana, sans-serif;
            width: 100%;
            padding: 1px;
            border: none;
            border-radius: 3px;
            background-color: #ffffffe6;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            font-size: 16px;
        }
        
        .form-group select:focus, .form-group input[type="file"]:focus, .form-group textarea:focus
        {
            font-family: 'Segoe UI' , Tahoma, Geneva, Verdana, sans-serif;
            outline: none;
            background-color: #ffffff;
        }
        
        .upload-button
        {
            font-family: 'Segoe UI' , Tahoma, Geneva, Verdana, sans-serif;
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }
        
        .upload-button:hover
        {
            background-color: #45a049;
        }
        .center
        {
            margin: auto;
            width: 50%;
            
        }
        /* Rest of the CSS code remains the same */
    </style>
    <div class="background-overlay">
    </div>
    <div class="csscontainer center">
        <div class="form-group">
            <label>
                Select Subject</label>
            <asp:DropDownList ID="ddlSubject" runat="server" class="form-control">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Select Subject"
                InitialValue="--Select--" ForeColor="Red" ValidationGroup="A" ControlToValidate="ddlSubject"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label>
                Enter Material Name</label>
            <asp:TextBox ID="txtName" runat="server" class="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Enter Name"
                ForeColor="Red" ValidationGroup="A" ControlToValidate="txtName"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label>
                Enter Material Description</label>
            <asp:TextBox ID="txtDescription" runat="server" class="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Description"
                ForeColor="Red" ValidationGroup="A" ControlToValidate="txtDescription"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label>
                Select Material File</label>
            <asp:FileUpload ID="MaterialFile" class="form-control" runat="server" />
            <span id="file-names"></span>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select File"
                ForeColor="Red" ValidationGroup="B" ControlToValidate="MaterialFile"></asp:RequiredFieldValidator>
        </div>
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True"></asp:Label>
        <div class="pull-right">
            <asp:Button ID="btnSave" runat="server" Text="Upload" ValidationGroup="A" class="upload-button"
                Style="padding: 10px 20px;" OnClick="btnSave_Click" />
        </div>
    </div>
    <%--<div class="form-group">
        <button type="submit" class="upload-button">
            Upload</button>
    </div>
    <div id="upload-success" class="upload-success">
    </div>--%>
    <script>
        document.getElementById('MaterialFile').addEventListener('change', function (e) {
            var fileNames = '';
            for (var i = 0; i < e.target.files.length; i++) {
                fileNames += e.target.files[i].name + ', ';
            }
            document.getElementById('file-names').textContent = fileNames.slice(0, -2);
        });

        //        document.querySelector('button[type="submit"]').addEventListener('click', function () {
        //            document.getElementById('upload-success').textContent = 'Files uploaded successfully!';
        //        });
    </script>
</asp:Content>

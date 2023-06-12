<%@ Page Title="" Language="C#" MasterPageFile="~/Lecture.Master" AutoEventWireup="true"
    CodeBehind="LectureHome.aspx.cs" Inherits="StudentMaterialBoard.LectureHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body
        {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 20px;
        }
        
        .leaderboard
        {
            max-width: 600px;
            margin: 0 auto;
        }
        
        .leaderboard-item
        {
            position: relative;
            display: flex;
            align-items: center;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            overflow: hidden;
        }
        
        .leaderboard-item:before
        {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: #00a8e8;
            z-index: -1;
            transition: transform 0.5s cubic-bezier(0.68, -0.55, 0.27, 1.55);
        }
        
        .leaderboard-item:hover:before
        {
            transform: scale(1.1);
        }
        
        .leaderboard-item .rank
        {
            font-size: 24px;
            font-weight: bold;
            color: #fff;
            margin-right: 20px;
        }
        
        .leaderboard-item .info
        {
            flex-grow: 1;
        }
        
        .leaderboard-item .name
        {
            font-size: 18px;
            font-weight: bold;
            color: #333;
            margin-bottom:5px;
        }
        
        .leaderboard-item .usn
        {
            font-size: 14px;
            color: #777;
        }
        
        .leaderboard-item .score
        {
            font-size: 20px;
            font-weight: bold;
            color: #fff;
            background-color: #fd6e6a;
            border-radius: 20px;
            padding: 5px 15px;
        }
        
        /* Add more styles as needed */
        
        .center
        {
            margin: auto;
            width: 50%;
            padding: 10px;
        }
    </style>
    <%-- <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header">
                    Leader Board</h3>
            </div>
           
        </div>--%>
    <!-- /.row -->
    <div class="center">
        <asp:DataList ID="DataList1" runat="server" Width="100%">
            <ItemTemplate>
                <div class="leaderboard">
                    <div class="leaderboard-item">
                        <div class="rank">
                            1</div>
                        <div class="info">
                            <div class="name">
                                <asp:Label ID="Label3"  runat="server" Text='<%# Eval("StudentName") %>'></asp:Label></div>
                            <div class="usn">
                              <span><b>USN:</b></span>  <asp:Label ID="Label1"  runat="server" Text='<%# Eval("SUSN") %>'></asp:Label></div>
                        </div>
                        <div class="score">
                            <asp:Label ID="Label2" class="views-number" runat="server" Text='<%# Eval("Score") %>'></asp:Label></div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <!-- /.row -->
    <%-- </div>--%>
</asp:Content>

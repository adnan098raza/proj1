<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDashBoard.aspx.cs" Inherits="StudentMaterialBoard.StudentDashBoard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html>
<head>
  <title>Student Dashboard</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-jprLt5fbYaOvZPv8sFRSTGyj+TB+KF19Xfvd8mLrTnayguH5YdW3STLK5cmkx68X0Fg8Kjz9crwHlBM2ovFugA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <style>
    * {
      box-sizing: border-box;
    }
    
    body {
      font-family: 'Roboto', sans-serif;
      background-color: #a41b1b;
      margin: 0;
      padding: 0;
    }
    
    .dashboard {
      height: 100vh;
      display: flex;
      flex-direction: column;
    }
    
    .header {
        text-align: center;
      font-size: larger;
      font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
      padding: 10px;
      /* background-image: linear-gradient(to bottom, #026670, #000000); */
      background-color: #025464; 
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      color: #fff;
    }

    .dashboard-grid {
      flex-grow: 1;
      display: grid;
      grid-template-columns: repeat(2, 1fr); /* Display in 2 columns */
      grid-gap: 20px;
      padding: 20px;
      /* background-image: linear-gradient(to TOP, #026670, #000000); */
      background-color: #fff; 
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    
    .dashboard-item {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      padding: 20px;
      background-color: #C1D0B5;
      border-radius: 4px;
      text-align: center;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }
    
    .dashboard-item:hover {
      background-color: #E0E0E0;
    }
    
    .dashboard-item i {
      font-size: 36px;
      margin-bottom: 10px;
    }
    
    .dashboard-item span {
      font-size: 14px;
    }
  </style>
</head>
<body>
  <div class="dashboard">
    <div class="header">
      <h1>WELCOME TO STUDYZEN</h1>
      <p>Explore your student dashboard</p>
    </div>
    
    <div class="dashboard-grid">
      <div class="dashboard-item" onclick="location.href='StudentHome.aspx'">
        <i class="zmdi zmdi-assignment-o"></i>
        <span>Leaderboard</span>
      </div>
      <div class="dashboard-item" onclick="location.href='StudentChangePassword.aspx'">
        <i class="zmdi zmdi-lock"></i>
        <span>Change Password</span>
      </div>
      <div class="dashboard-item" onclick="location.href='MaterialUpload.aspx'">
        <i class="zmdi zmdi-upload"></i>
        <span>Upload Materials</span>
      </div>
      <div class="dashboard-item" onclick="location.href='ViewMaterials.aspx'">
        <i class="zmdi zmdi-collection-text"></i>
        <span>View Materials</span>
      </div>
      <div class="dashboard-item" onclick="location.href='GeneralQuestion.aspx'">
        <i class="zmdi zmdi-help-outline"></i>
        <span>General Questions</span>
      </div>
      <div class="dashboard-item" onclick="location.href='index.aspx'">
        <i class="zmdi zmdi-power"></i>
        <span>Logout</span>
      </div>
    </div>
  </div>
</body>
</html>

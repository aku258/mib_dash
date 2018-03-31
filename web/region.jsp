<%-- 
    Document   : region
    Created on : 31 Mar, 2018, 5:08:18 AM
    Author     : akash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Regional Statistics</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1500px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
  </style>
    </head>
    <body>
        <div class="container-fluid">
  <div class="row content">
         <div class="col-sm-3 sidenav">
      <h4>Ministry of Information and Broadcasting</h4>
      <ul class="nav nav-pills nav-stacked">
        <li><a href="home.jsp">Home</a></li>
        <li class="active"><a href="region.jsp">Region Stats</a></li>
        <li><a href="show.jsp">Show stats</a></li>
        <li><a href="channel.jsp">Channel stats</a></li>
        
      </ul><br>
      
      <a href="index.html"><button>Logout</button></a>
     
    </div>
        <div class="col-sm-9" id="drawSeriesChart">
                    <jsp:include page="show_hist.jsp"/>
                   
              
    </div>
  </div>
        </div>
    </body>
</html>

<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date" %>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<title>Welcome</title>
</head>
<body>
      <%@ include file="menu.jsp" %>
      <%! String greeting = "웹 쇼핑몰에 오신 것을 환영합니다.";
      String tagline = "Welcome to Web Market!";%>
      <div Class ="jumbotron">
          <div Class="container">
              <h1 class ="display-3">
                  <%=greeting %>
              </h1>
          </div>
      </div>
      <div class="conbtaniner">
          <div class ="text-center">
             <h3>
                 <%=tagline%>
             </h3>
             <%
                Date day =new java.util.Date();
                String am_pm;
                int hour = day.getHours();
                int minute = day.getMinutes();
                int second = day.getSeconds();
                if (hour <= 12) {
                	am_pm = "AM";
                	
                } else {
                	am_pm = "PM";
                	hour = hour - 12;
                }
                String CT = hour + ":" + minute + ":" + second + " " +am_pm;
                out.println("현재 접속 시각: " + CT + "\n");
                  %>
               </div>
             <hr>
           </div>
           <%@ include file ="footer.jsp" %>    
</body>
</html>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>상세 정보</title>
</head>
<body>
     <jsp:include page="menu.jsp"/>
     <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">상품목록</h1>
        </div>
     </div>
     <%
         String id = request.getParameter("id");
         ProductRepository dao = ProductRepository.getInstance();
         Product product = dao.getProductById(id);
     %>
     <div class="container">
         <div class ="row"> 
            <div class ="col-md-6">
                <h3><%=product.getPname()%></h3>   
                <p> <%=product.getDescription()%>
                              
               <p><b>상품 코드 : </b><span class ="badge badge-danger"> <%=product.getProductId() %></span>
               <p><b>제조사</b> : <%=product.getManufacturer()%>
               <p><b>분류</b> : <%=product.getCategory()%>
               <p><b>재고 수</b> : <%=product.getUnitsInStock()%>
               <h4><%=product.getUnitPrice()%>원</h4>
               <p><a href="#" class="btn btn-info">상품 주문</a> <a href="./products.jsp" class="btn btn-secondary">상품 목록</a>
            </div>      
         </div>    
     </div>
     
     <jsp:include page="footer.jsp" />
</body>
</html>
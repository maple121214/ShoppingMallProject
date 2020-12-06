<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>

<html>
<head>
<!-- https://getbootstrap.com/docs/4.3/getting-started/introduction/ -->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" 
integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>상품목록</title>
</head>
<body>
    <jsp:include page="menu.jsp"/>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">상품목록</h1>
        </div>
    </div>
    <%
         ProductRepository dao = ProductRepository.getInstance();
         ArrayList<Product> listOfProducts = dao.getAllProducts();
    %>
    <div class="container">
        <div class="row" align="center">
           <%
               for(int i =0; i<listOfProducts.size(); i++){
            	   Product product = listOfProducts.get(i);
           %>
               <div class="col-md-4>">
                   <img src="./resources/images/<%=product.getFilename()%>" style="width:100%">
                   <h3><%=product.getPname() %> </h3>
                   <p><%=product.getDescription() %>
                   <p><%=product.getUnitPrice() %>원
                   <p><a href="./product.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button">상세 정보</a>
               </div>      
           <% 	   
               }
           %>
        </div>
        <hr>
    </div>
    <jps:include page="footer.jsp"/>
</body>
</html>
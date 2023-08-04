<%-- 
    Document   : back
    Created on : Mar 20, 2023, 11:22:45 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <body>
        <jsp:include page="Menu.jsp"></jsp:include>
            <div class="container">
                <div class="row">
                    <div class="col">
                        <nav aria-label="breadcrumb">
                            <!--                            <ol class="breadcrumb">
                                                            <li class="breadcrumb-item"><a href="Home.jsp">Home</a></li>
                                                            <li class="breadcrumb-item"><a href="#">Category</a></li>
                                                            <li class="breadcrumb-item active" aria-current="#">Sub-category</li>
                                                        </ol>-->
                        </nav>
                    </div>
                </div>
            </div>
<!--            <form id = "frm" action="sort" method="post">
                <div class ="sapxep">
                    <br>Chon sap xep:
                    <select name = "op" onchange="change()" >
                        <option value=""  name = "sap xep gia">Sap xep gia </option>                
                        <option value="1"  name = "sap xep gia tang dan">Sap xep gia tang dan </option>
                        <option value="2" name = "sap xep gia giam dan">Sap xep gia giam dan </option>

                    </select>
                </div>
            </form>-->
            <div class="noidung">
                <div class="container">
                    <div class="row">
                    <jsp:include page="Left.jsp"></jsp:include>

                        <div class="col-sm-9">
                            <div id="content" class="row">


                            <c:forEach items="${listP}" var="o">
                                <div class="product col-12 col-md-6 col-lg-4">
                                    <div class="card">
                                        <img class="card-img-top" src="${o.image}" alt="Card image cap">
                                        <div class="card-body">
                                            <h4 class="card-title show_txt"><a href="detail?pid=${o.id}" title="View Product">${o.name}</a></h4>
                                            <p class="card-text show_txt">${o.title}</p>
                                            <div class="row">
                                                <div class="col">
                                                    <p class="btn btn-danger btn-block">${o.price} Đồng</p>
                                                </div>
<!--                                                <div class="col">
                                                    <a href="#" class="btn btn-success btn-block">Add to cart</a>
                                                </div>-->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
<!--                        </div>
                        <button onclick="loadMore()" class="btn btn-primary">Load more</button>
                    </div>-->

                </div>
            </div>
        </div>

        <script>
            function change() {
                document.getElementById("frm").submit();
            }
        </script>


        <jsp:include page="Footer.jsp"></jsp:include>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
            
        </script>  
    
    </body>
</html>

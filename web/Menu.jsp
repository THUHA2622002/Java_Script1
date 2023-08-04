<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--begin of menu-->


<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="home">HATRY</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto">
                <c:if test="${sessionScope.acc.isAdmin == 1}">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Manager Account</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc.isSell == 1}">
                    <li class="nav-item">
                        <a class="nav-link" href="manager">Manager Product</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc != null}">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Hello ${sessionScope.acc.user}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout">Logout</a>
                    </li> 
                </c:if>
                <c:if test="${sessionScope.acc == null}">
                    <li class="nav-item">
                        <a class="nav-link" href="Login.jsp">Login</a>
                    </li>
                </c:if>
            </ul>

            <form action="search" method="post" class="form-inline my-2 my-lg-0">
                <div class="input-group input-group-sm">
                    <input oninput="searchByName(this)" value="${txtS}" name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-secondary btn-number">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
<!--                <a class="btn btn-success btn-sm ml-3" href="show">
                    <i class="fa fa-shopping-cart"></i> Cart
                    <span class="badge badge-light">3</span>
                </a>-->
            </form>
        </div>
    </div>
</nav>

<div class = "home1">
<div class="first">SÁCH MỚI NHẤT</div>
<div class ="image"> 

    <img id ="img" onclick ="changeImage()" src ="https://scontent.fhan18-1.fna.fbcdn.net/v/t1.15752-9/334913207_124067470452433_7638217930058833459_n.png?_nc_cat=108&ccb=1-7&_nc_sid=ae9488&_nc_ohc=kDJGBRJH4PIAX8FLfQd&_nc_ht=scontent.fhan18-1.fna&oh=03_AdQOLMjT281fGA3MTWClPxWnUEDWPj-oJAyvr_Ahj42ldg&oe=642EDBAD" alt="">
</div>
<script>
    var index = 1;
    function changeImage() {
        var imgs = ["https://simg.zalopay.com.vn/zlp-website/assets/sach_hay_ve_ky_nang_song_Doi_Ngan_Dung_Ngu_Dai_ad967ff21f.jpg",
            "https://simg.zalopay.com.vn/zlp-website/assets/tu_iq_den_eq_f54c2fbd97.jpg",
            "https://sachhay24h.com/uploads/images/2020/T5/489/10-cuon-sach-day-con-6.PNG",
            "https://toplist.vn/images/800px/so-do-vu-trong-phung-140160.jpg",
            "https://newshop.vn/public/uploads/content/ngu-phap-tieng-trung-can-ban-cho-nguoi-moi-min.jpg"];
        document.getElementById('img').src = imgs[index];
        index++;
        if (index === 5) {
            index = 0;
        }
        }
        setInterval(changeImage,1000);
    
</script>
</div>




<!--end of menu-->

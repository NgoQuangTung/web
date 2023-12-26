<%-- 
    Document   : product_detail
    Created on : Dec 24, 2023, 2:58:46 PM
    Author     : DUC TOAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
        <link rel="stylesheet" href="./css/slick.css" type="text/css" />
        <link rel="stylesheet" href="./css/index1.css" type="text/css"/>
        <link rel="stylesheet" href="./css/login_logout1.css" type="text/css"/>
        <link rel="stylesheet" href="./css/product_detail.css" type="text/css"/>
    </head>

    <body>
        <header>
            <a href="home">
                <h1>Elaine Cosmetics</h1>
            </a>
            <form action="search" method="post">
                <div class="search-container">
                    <input type="text" id="txtSearch" name="data-search" placeholder="Tìm kiếm...">
                    <button type="submit" id="btnSearch"><i class="fa-solid fa-magnifying-glass fa-2xl"></i></button>
                </div>
            </form>
            <div>
                <i class="fa-solid fa-phone-volume fa-xl"></i>
                <a href="">Hỗ trợ</a>
            </div>
            <div>
                <i class="fa-solid fa-truck-fast fa-xl"></i>
                <a href="">Tra cứu đơn hàng</a>
            </div>
            <div id="login" >
                <i class="fa-regular fa-circle-user fa-2xl"></i>
                <a href="">Đăng nhập / Đăng ký</a>

                <div id="block_1" class="sub_login">
                    <div class="block_login">

                        <div class="text_login"> Đăng nhập với </div>
                        <a class="login_facebook" rel="" href="" data-href="">
                            <img src="https://hasaki.vn/images/graphics/img_login_fb.jpg" class="loading">
                        </a>
                        <a class="login_facebook" rel="" href="" data-href="">
                            <img src="https://hasaki.vn/images/graphics/img_login_gg.jpg" class="loading">
                        </a>
                    </div>
                    <div class="block_login_more">
                        <div class="text_more_login">Hoặc đăng nhập với </div>
                        <button id="login_button_1" rel="" class="btn_popup_login" href="">Đăng nhập</button>
                        Bạn chưa có tài khoản ?
                        <a  href="#register" rel="" class="popup_register" href="" id="check_100"> ĐĂNG KÝ NGAY</a>

                    </div>
                </div>

            </div>
            <div>
                <i class="fa-solid fa-cart-shopping fa-shake fa-xl"></i>
                <a href="">Giỏ hàng</a>
            </div>
        </header>
        <nav>
            <a href="#">Trang chủ</a>
            <a href="#">Sản phẩm</a>
            <a href="#">Dịch vụ</a>
            <a href="#">Liên hệ</a>
        </nav>
    <c:if test="${not empty productDetail}">
        <div class="container">
            <div class="slide-bar">
                <div class="category-box">
                    <ul class="category-list">
                        <c:forEach items="${AllCategories}" var="p">
                            <li><a href="">${p.getName()}</a></li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="slide-show">
                    <div class="list-images">
                        <div>
                            <img class="slide1-img" src="https://media.hcdn.vn/hsk/1700102415846x250home-13.jpg" alt="">
                        </div>
                        <div>
                            <img class="slide1-img" src="https://media.hcdn.vn/hsk/1696489598tri-mun-ipl-web.jpg" alt="">
                        </div>
                        <div>
                            <img class="slide1-img" src="https://media.hcdn.vn/hsk/1700102974home-21.jpg" alt="">
                        </div>
                        <div>
                            <img class="slide1-img" src="https://media.hcdn.vn/hsk/1700216103home-137-1.jpg" alt="">
                        </div>
                    </div>
                    <div class="btns">
                        <div class="btn-left btn"><i class='fa-solid fa-angle-left fa-2xl'></i></div>
                        <div class="btn-right btn"><i class='fa-solid fa-angle-right fa-2xl'></i></div>
                    </div>
                    <div class="index-images">
                        <div class="index-item index-item-0 active"></div>
                        <div class="index-item index-item-1"></div>
                        <div class="index-item index-item-2"></div>
                        <div class="index-item index-item-3"></div>
                    </div>
                </div>
                <div class="ads-box">
                    <a href="">
                        <img class="ads-img" src="https://media.hcdn.vn/hsk/1700128472hsk-nowfree-140cn-846x250.jpg" alt="">
                    </a>
                    <a href=""><img class="ads-img"
                                    src="https://media.hcdn.vn/hsk/1696582256unilever-sub-banner-desktop-427x140.jpg" alt=""></a>
                    <a href=""><img class="ads-img" src="https://media.hcdn.vn/hsk/1687766948rohto-427x140.jpg" alt=""></a>
                </div>
            </div>

            <!--            <div class="hot-sale-box">
                            <div class="hot-sale-header">
                                <div>
                                    <h1><i class="fa-solid fa-bolt-lightning fa-beat"></i> HOT SALE</h1>
                                </div>
                                <div class="countdown">
                                    <span class="time-tag">KẾT THÚC SAU: </span>
                                    <span class="timer" id="days">00</span> ngày
                                    <span class="timer" id="hours">00</span> giờ
                                    <span class="timer" id="minutes">00</span> phút
                                    <span class="timer" id="seconds">00</span> giây
                                </div>
                            </div>
                            <div class="product-slider">
                                <div class="product-item">
                                    <a href="">
                                        <div class="product-image">
                                            <img src="https://hasaki.vn/img/category/c24-trang-diem-moi.jpg" alt="Product Image">
                                        </div>
                                        <div class="product-details">
                                            <div class="product-price">
                                                <div class="original-price">$129.99</div>
                                                <div class="discounted-price">$99.99</div>
                                            </div>
                                            <div class="product-description">Kem Chống Nắng Skin1004 Cho Da Nhạy Cảm SPF 50+ 50ml
                                            </div>
                                            <div class="product-rating">
                                                <span class="stars">★★★★★</span>
                                                <span class="review-count">(50 đánh giá)</span>
                                            </div>
                                            <p class="purchase-count">Đã bán: 1000 sản phẩm</p>
                                        </div>
                                    </a>
                                </div>
                                <div class="product-item">
                                    <a href="">
                                        <div class="product-image">
                                            <img src="https://hasaki.vn/img/category/c24-trang-diem-moi.jpg" alt="Product Image">
                                        </div>
                                        <div class="product-details">
                                            <div class="product-price">
                                                <div class="original-price">$129.99</div>
                                                <div class="discounted-price">$99.99</div>
                                            </div>
                                            <div class="product-description">Kem Chống Nắng Skin1004 Cho Da Nhạy Cảm SPF 50+ 50ml
                                            </div>
                                            <div class="product-rating">
                                                <span class="stars">★★★★★</span>
                                                <span class="review-count">(50 đánh giá)</span>
                                            </div>
                                            <p class="purchase-count">Đã bán: 1000 sản phẩm</p>
                                        </div>
                                    </a>
                                </div>
                                <div class="product-item">
                                    <a href="">
                                        <div class="product-image">
                                            <img src="https://hasaki.vn/img/category/c24-trang-diem-moi.jpg" alt="Product Image">
                                        </div>
                                        <div class="product-details">
                                            <div class="product-price">
                                                <div class="original-price">$129.99</div>
                                                <div class="discounted-price">$99.99</div>
                                            </div>
                                            <div class="product-description">Kem Chống Nắng Skin1004 Cho Da Nhạy Cảm SPF 50+ 50ml
                                            </div>
                                            <div class="product-rating">
                                                <span class="stars">★★★★★</span>
                                                <span class="review-count">(50 đánh giá)</span>
                                            </div>
                                            <p class="purchase-count">Đã bán: 1000 sản phẩm</p>
                                        </div>
                                    </a>
                                </div>
                                <div class="product-item">
                                    <a href="">
                                        <div class="product-image">
                                            <img src="https://hasaki.vn/img/category/c24-trang-diem-moi.jpg" alt="Product Image">
                                        </div>
                                        <div class="product-details">
                                            <div class="product-price">
                                                <div class="original-price">$129.99</div>
                                                <div class="discounted-price">$99.99</div>
                                            </div>
                                            <div class="product-description">Kem Chống Nắng Skin1004 Cho Da Nhạy Cảm SPF 50+ 50ml
                                            </div>
                                            <div class="product-rating">
                                                <span class="stars">★★★★★</span>
                                                <span class="review-count">(50 đánh giá)</span>
                                            </div>
                                            <p class="purchase-count">Đã bán: 1000 sản phẩm</p>
                                        </div>
                                    </a>
                                </div>
                                <div class="product-item">
                                    <a href="">
                                        <div class="product-image">
                                            <img src="https://hasaki.vn/img/category/c24-trang-diem-moi.jpg" alt="Product Image">
                                        </div>
                                        <div class="product-details">
                                            <div class="product-price">
                                                <div class="original-price">$129.99</div>
                                                <div class="discounted-price">$99.99</div>
                                            </div>
                                            <div class="product-description">Kem Chống Nắng Skin1004 Cho Da Nhạy Cảm SPF 50+ 50ml
                                            </div>
                                            <div class="product-rating">
                                                <span class="stars">★★★★★</span>
                                                <span class="review-count">(50 đánh giá)</span>
                                            </div>
                                            <p class="purchase-count">Đã bán: 1000 sản phẩm</p>
                                        </div>
                                    </a>
                                </div>
                                <div class="product-item">
                                    <a href="">
                                        <div class="product-image">
                                            <img src="https://hasaki.vn/img/category/c24-trang-diem-moi.jpg" alt="Product Image">
                                        </div>
                                        <div class="product-details">
                                            <div class="product-price">
                                                <div class="original-price">$129.99</div>
                                                <div class="discounted-price">$99.99</div>
                                            </div>
                                            <div class="product-description">Kem Chống Nắng Skin1004 Cho Da Nhạy Cảm SPF 50+ 50ml
                                            </div>
                                            <div class="product-rating">
                                                <span class="stars">★★★★★</span>
                                                <span class="review-count">(50 đánh giá)</span>
                                            </div>
                                            <p class="purchase-count">Đã bán: 1000 sản phẩm</p>
                                        </div>
                                    </a>
                                </div>
                                <div class="product-item">
                                    <a href="">
                                        <div class="product-image">
                                            <img src="https://hasaki.vn/img/category/c24-trang-diem-moi.jpg" alt="Product Image">
                                        </div>
                                        <div class="product-details">
                                            <div class="product-price">
                                                <div class="original-price">$129.99</div>
                                                <div class="discounted-price">$99.99</div>
                                            </div>
                                            <div class="product-description">Kem Chống Nắng Skin1004 Cho Da Nhạy Cảm SPF 50+ 50ml
                                            </div>
                                            <div class="product-rating">
                                                <span class="stars">★★★★★</span>
                                                <span class="review-count">(50 đánh giá)</span>
                                            </div>
                                            <p class="purchase-count">Đã bán: 1000 sản phẩm</p>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>-->
            <div class="brand-box">
                <a href=""><img class="brand-ads-img"
                                src="https://media.hcdn.vn/hsk/1700128472hsk-nowfree-140cn-846x250.jpg" alt=""></a>
                <a href=""><img class="brand-ads-img"
                                src="https://media.hcdn.vn/hsk/1696582256unilever-sub-banner-desktop-427x140.jpg" alt=""></a>
                <a href=""><img class="brand-ads-img" src="https://media.hcdn.vn/hsk/1687766948rohto-427x140.jpg"
                                alt=""></a>
            </div>
            <div class="category-box2">
                <div>Danh mục</div>
                <div class="category-slide">
                    <c:forEach items="${AllCategories}" var="p">
                        <div class="category-item">
                            <a href="">
                                <div class="category-image">
                                    <img src="${p.getImage()}" alt="Product Image">
                                </div>
                                <div class="category-name">${p.getName()}</div>
                            </a>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <div class="product-box">
                <div>Sản phẩm</div>
                <div class="container-fliud">
                    <div class="wrapper row">
                        <div class="preview">

                            <div class="preview-pic tab-content">
                                <div class="tab-pane.active" id="pic-1"><img src=${productDetail.image} />
                                </div>
                            </div>
                            <ul class="ul-img">
                                <%@taglib prefix="images" uri="http://java.sun.com/jsp/jstl/core" %>
                                <images:forEach var="image" items="${productDetail.images}">
                                    <li>
                                        <a data-lightbox="productGallery" data-title="Product Image" onclick="showImage('${image.path}')">
                                            <img src="${image.path}" alt="Product Image" />
                                        </a>
                                    </li>
                                </images:forEach>
                            </ul>
                        </div>
                        <div class="details col-md-6 d-flex justify-content-center" style="margin-top: 25px">
                            <h2 class="product-title" >${productDetail.name}</h2>
                            <div class="rating">
                                <div class="stars">
                                    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d" %>

                                    <d:set var="roundedVote" value="${Math.round(productDetail.vote)}" />

                                    <d:forEach var="i" begin="1" end="5">
                                        <span class="fa fa-star ${i le roundedVote ? 'checked' : ''}"></span>
                                    </d:forEach>
                                </div>
                                <span class="review-no"></span>
                            </div>
                            <h5 class="sizes">sizes:
                                <span class="size" data-toggle="tooltip" title="small">${productDetail.size}</span>
                            </h5>
                            <p class="product-description">${productDetail.description}</p>
                            <p>Thương hiệu: ${productDetail.brand}</p>

                            <h3 class="price">Giá <span class= "original-price">${productDetail.price} </span></h3>
                            <h3 class="price">KM <span class="discounted-price">${productDetail.getDiscountPrice()}</span></h3>
                            <p>Ðã bán: ${productDetail.sold} Sản phẩm</p>
                            <p>Còn lại: ${productDetail.quantity} Sản phẩm</p>
                            <div class="action">
                                <button class="add-to-cart" type="button">Thêm vào giỏ hàng</button>
                            </div>
                        </div> 
                    </div>
                </div>
                <div class="card">
                    <nav class="nav-tabs" role="tablist">
                        <li role="presentation" class="tab-li active"><a href="#ttsp" aria-controls="ttsp" role="tab"
                                                                         data-toggle="tab">Thông tin sản phẩm</a></li>
                        <li role="presentation" class="tab-li"><a href="#tssp" aria-controls="tssp" role="tab"
                                                                  data-toggle="tab" class="tab-li">Thông số sản phẩm</a></li>
                        <li role="presentation" class="tab-li"><a href="#tpsp" aria-controls="tpsp" role="tab"
                                                                  data-toggle="tab" class="tab-li">Thành phần sản phẩm</a></li>
                        <li role="presentation" class="tab-li"><a href="#hdsd" aria-controls="hdsh" role="tab"
                                                                  data-toggle="tab">Hướng dẫn sử dụng</a></li>
                    </nav>

                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="ttsp">${productDetail.description}</div>
                        <div role="tabpanel" class="tab-pane " id="tssp">
                            Name: ${productDetail.name}<br> 
                            Size: ${productDetail.size} <br> 
                            Type Skin: ${productDetail.typeskin}<br>
                            Origin: ${productDetail.origin}<br>
                            Characteris: ${productDetail.characteris}
                        </div>
                        <div role="tabpanel" class="tab-pane" id="tpsp">${productDetail.ingredient}
                        </div>
                        <div role="tabpanel" class="tab-pane" id="hdsd">${productDetail.instruct}</div>
                    </div>
                </div>
            </div>
        </div>
    </c:if>

    <div class="suggest-container">
        <div class="suggest-header">
            Gợi ý cho bạn
        </div>
        <div class="suggest-product" id="suggest-product">
            <c:forEach items="${AllProducts}" var="p">
                <div class="product-item">
                    <a href="">
                        <div class="product-image">
                            <img src="${p.getImage()}" alt="Product Image">
                        </div>
                        <div class="product-details">
                            <div class="product-price">
                                <div class="original-price">${p.getPrice()}đ</div>
                                <div class="discounted-price">${p.getDiscountPrice()}đ</div>
                            </div>
                            <div class="product-description">${p.getName()}
                            </div>
                            <div class="product-rating">
                                <span class="stars">★★★★★</span>
                                <span class="review-count">(50 đánh giá)</span>
                            </div>
                            <p class="purchase-count">Đã bán: 1000 sản phẩm</p>
                        </div>
                    </a>
                </div>
            </c:forEach>
        </div>
        <button id="loadMore">Xem thêm</button>
    </div>
    <footer>
        <div class="footer-container">
            <div class="infor-box">
                <ul>
                    <li class="infor-header">KẾT NỐI VỚI CHÚNG TÔI</li>
                    <li class="infor-title">Facebook</li>
                    <li class="infor-title">Instagram</li>
                    <li class="infor-title">Tiktok</li>
                    <li class="infor-title">Email</li>
                    <li class="infor-title">Địa chỉ</li>
                </ul>
            </div>
            <div class="infor-box">
                <ul>
                    <li class="infor-header">DỊCH VỤ KHÁCH HÀNG</li>
                    <li class="infor-title">Hướng dẫn mua hàng</li>
                    <li class="infor-title">Quy định đổi hàng</li>
                    <li class="infor-title">Ưu đãi khách hàng</li>
                    <li class="infor-title">Điều khoản sử dụng</li>
                    <li class="infor-title">Chính sách bảo hành</li>
                    <li class="infor-title">Chính sách thanh toán</li>
                </ul>
            </div>
            <div class="infor-box">
                <ul>
                    <li class="infor-header">ĐĂNG KÝ NHẬN THÔNG BÁO</li>
                    <li>
                        <form action="">
                            <input type="text" name="input">
                            <button type="submit">Đăng ký</button>
                        </form>
                    </li>
                </ul>
            </div>
        </div>

    </footer>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script src="./js/index.js"></script>
    <script src="./js/login_logout.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

    <script>
        $(document).ready(function () {
            $('.nav-tabs a').on('click', function (e) {
                e.preventDefault();
                $('.nav-tabs li').removeClass('active');
                $('.tab-pane').removeClass('active');
                $(this).parent('li').addClass('active');
                $($(this).attr('href')).addClass('active');
            });
        });
    </script>
    <script>
        function showImage(imageUrl) {
            var imageElement2 = document.createElement('img');
            imageElement2.src =imageUrl ;
            Lightbox.show(imageElement2);
        }
        class Lightbox {
            static activate() {
                document.body.insertAdjacentHTML("beforeend", `
        <div class="lightbox" id="lightbox" style="display: none;">
            <div class="lightbox__inner">
                <button type="button" class="lightbox__close">
                    &times;
                </button>
                <div class="lightbox__content"></div>
            </div>
        </div>
    `);

                const lightBox = document.querySelector("#lightbox");
                const btnClose = lightBox.querySelector(".lightbox__close");
                const content = lightBox.querySelector(".lightbox__content");
                const closeLightbox = () => {
                    lightBox.style.display = "none";
                    content.innerHTML = "";
                };

                lightBox.addEventListener("mousedown", e => {
                    if (e.target.matches("#lightbox")) {
                        closeLightbox();
                    }
                });

                btnClose.addEventListener("click", () => {
                    closeLightbox();
                });
            }

            static show(htmlOrElement) {
                const content = document.querySelector("#lightbox .lightbox__content");

                document.querySelector("#lightbox").style.display = null;

                if (typeof htmlOrElement === "string") {
                    content.innerHTML = htmlOrElement;
                } else {
                    content.innerHTML = "";
                    content.appendChild(htmlOrElement);
                }
            }
        }

        Lightbox.activate();
    </script>

</body>

</html>



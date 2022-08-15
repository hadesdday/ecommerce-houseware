(function ($) {
    ("use Strict");
    /*----------------------------------------*/
    /* 	01. Li's Meanmenu
  /*----------------------------------------*/
    jQuery(".hb-menu nav").meanmenu({
        meanMenuContainer: ".mobile-menu",
        meanScreenWidth: "991",
    });
    /*----------------------------------------*/
    /*  02. Header Dropdown
   /*----------------------------------------*/

    // Li's Dropdown Menu
    function dropdown() {
        $(
            ".ht-setting-trigger, .ht-currency-trigger, .ht-language-trigger, .hm-minicart-trigger, .cw-sub-menu"
        ).on("click", function (e) {
            e.preventDefault();
            $(this).toggleClass("is-active");
            $(this)
                .siblings(
                    ".ht-setting, .ht-currency, .ht-language, .minicart, .cw-sub-menu li"
                )
                .slideToggle();
        });
    }

    dropdown();
    $(".ht-setting-trigger.is-active").siblings(".catmenu-body").slideDown();
    /*----------------------------------------*/
    /* 03. Li's Sticky Menu Activation
  /*----------------------------------------*/
    $(window).on("scroll", function () {
        if ($(this).scrollTop() > 300) {
            $(".header-sticky").addClass("sticky");
        } else {
            $(".header-sticky").removeClass("sticky");
        }
    });
    /*----------------------------------------*/
    /*  04. Nice Select
  /*----------------------------------------*/
    $(document).ready(function () {
        $(".nice-select").niceSelect();
    });
    /*----------------------------------------*/
    /* 05. Main Slider Activision
  /*----------------------------------------*/
    $(".slider-active").owlCarousel({
        loop: true,
        margin: 0,
        nav: true,
        autoplay: true,
        items: 1,
        autoplayTimeout: 10000,
        navText: [
            "<i class='fa fa-angle-left'></i>",
            "<i class='fa fa-angle-right'></i>",
        ],
        dots: true,
        autoHeight: true,
        lazyLoad: true,
    });
    /*----------------------------------------*/
    /* 06. Li's Product Activision
  /*----------------------------------------*/
    $(".product-active").owlCarousel({
        loop: true,
        nav: true,
        dots: false,
        autoplay: false,
        autoplayTimeout: 5000,
        navText: [
            "<i class='fa fa-angle-left'></i>",
            "<i class='fa fa-angle-right'></i>",
        ],
        item: 5,
        responsive: {
            0: {
                items: 1,
            },
            480: {
                items: 2,
            },
            768: {
                items: 3,
            },
            992: {
                items: 4,
            },
            1200: {
                items: 5,
            },
        },
    });
    /*----------------------------------------*/
    /* 07. Li's Product Activision
  /*----------------------------------------*/
    $(".special-product-active").owlCarousel({
        loop: true,
        nav: false,
        dots: false,
        autoplay: false,
        autoplayTimeout: 5000,
        navText: [
            '<i class="fa fa-angle-left"></i>',
            '<i class="fa fa-angle-left"></i>',
        ],
        item: 4,
        responsive: {
            0: {
                items: 1,
            },
            480: {
                items: 1,
            },
            768: {
                items: 2,
            },
            992: {
                items: 3,
            },
            1200: {
                items: 4,
            },
        },
    });
    /*----------------------------------------*/
    /* 08. Countdown
  /*----------------------------------------*/
    var fulldate = new Date();
    fulldate.setDate(fulldate.getDate() + 7)
    var year = fulldate.getFullYear() + "/";
    var month = ((fulldate.getMonth() + 1) > 9 ? (fulldate.getMonth() + 1) : "0" + (fulldate.getMonth() + 1)) + "/";
    var day = fulldate.getDate();
    var nextWeek = year + month + day;
    $(".li-countdown").countdown(nextWeek, function (event) {
        $(this).html(
            event.strftime(
                '<div class="count">%D <span>Days:</span></div> <div class="count">%H <span>Hours:</span></div> <div class="count">%M <span>Mins:</span></div><div class="count"> %S <span>Secs</span></div>'
            )
        );
    });
    /*----------------------------------------*/
    /* 09. Tooltip Active
  /*----------------------------------------*/
    $(".product-action a, .social-link a").tooltip({
        animated: "fade",
        placement: "top",
        container: "body",
    });
    /*----------------------------------------*/
    /* 10. Scroll Up
  /*----------------------------------------*/
    $.scrollUp({
        scrollText: '<i class="fa fa-angle-double-up"></i>',
        easingType: "linear",
        scrollSpeed: 300,
    });
    /*----------------------------------------*/
    /* 11. Category Menu
  /*----------------------------------------*/
    $(".rx-parent").on("click", function () {
        $(".rx-child").slideToggle();
        $(this).toggleClass("rx-change");
    });
    //    category heading
    $(".category-heading").on("click", function () {
        $(".category-menu-list").slideToggle(300);
    });

    /*-- Category Menu Toggles --*/
    function categorySubMenuToggle() {
        var screenSize = $(window).width();
        if (screenSize <= 991) {
            $("#cate-toggle .right-menu > a").prepend(
                '<i class="expand menu-expand"></i>'
            );
            $(".category-menu .right-menu ul").slideUp();
            //        $('.category-menu .menu-item-has-children i').on('click', function(e){
            //            e.preventDefault();
            //            $(this).toggleClass('expand');
            //            $(this).siblings('ul').css('transition', 'none').slideToggle();
            //        })
        } else {
            $(".category-menu .right-menu > a i").remove();
            $(".category-menu .right-menu ul").slideDown();
        }
    }

    categorySubMenuToggle();
    $(window).resize(categorySubMenuToggle);

    /*-- Category Sub Menu --*/
    function categoryMenuHide() {
        var screenSize = $(window).width();
        if (screenSize <= 991) {
            $(".category-menu-list").hide();
        } else {
            $(".category-menu-list").show();
        }
    }

    categoryMenuHide();
    $(window).resize(categoryMenuHide);
    $(".category-menu-hidden").find(".category-menu-list").hide();
    $(".category-menu-list").on("click", "li a, li a .menu-expand", function (e) {
        var $a = $(this).hasClass("menu-expand") ? $(this).parent() : $(this);
        if ($a.parent().hasClass("right-menu")) {
            if ($a.attr("href") === "#" || $(this).hasClass("menu-expand")) {
                if ($a.siblings("ul:visible").length > 0) $a.siblings("ul").slideUp();
                else {
                    $(this).parents("li").siblings("li").find("ul:visible").slideUp();
                    $a.siblings("ul").slideDown();
                }
            }
        }
        if ($(this).hasClass("menu-expand") || $a.attr("href") === "#") {
            e.preventDefault();
            return false;
        }
    });
    /*----------------------------------------*/
    /* 12. Li's Product Activision
  /*----------------------------------------*/
    $(".li-featured-product-active").owlCarousel({
        loop: true,
        nav: false,
        dots: false,
        margin: 30,
        autoplay: false,
        autoplayTimeout: 5000,
        navText: [
            '<i class="fa fa-angle-left"></i>',
            '<i class="fa fa-angle-left"></i>',
        ],
        item: 2,
        responsive: {
            0: {
                items: 1,
            },
            480: {
                items: 2,
            },
            768: {
                items: 2,
            },
            992: {
                items: 2,
            },
            1200: {
                items: 2,
            },
        },
    });
    /*----------------------------------------*/
    /* 13. FAQ Accordion
  /*----------------------------------------*/
    $(".card-header a").on("click", function () {
        $(".card").removeClass("actives");
        $(this).parents(".card").addClass("actives");
    });
    /*----------------------------------------*/
    /* 14. Toggle Function Active
  /*----------------------------------------*/
    // showlogin toggle
    $("#showlogin").on("click", function () {
        $("#checkout-login").slideToggle(900);
    });
    // showlogin toggle
    $("#showcoupon").on("click", function () {
        $("#checkout_coupon").slideToggle(900);
    });
    // showlogin toggle
    $("#cbox").on("click", function () {
        $("#cbox-info").slideToggle(900);
    });

    // showlogin toggle
    $("#ship-box").on("click", function () {
        $("#ship-box-info").slideToggle(1000);
    });
    /*----------------------------------------*/
    /* 15. Li's Blog Gallery Slider
  /*----------------------------------------*/
    var gallery = $(".li-blog-gallery-slider");
    gallery.slick({
        arrows: false,
        autoplay: true,
        autoplaySpeed: 5000,
        pauseOnFocus: false,
        pauseOnHover: false,
        fade: true,
        dots: true,
        infinite: true,
        slidesToShow: 1,
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    arrows: false,
                },
            },
        ],
    });
    /*----------------------------------------*/
    /* 16. Counter Js
  /*----------------------------------------*/
    $(".counter").counterUp({
        delay: 10,
        time: 1000,
    });
    /*----------------------------------------*/
    /* 17. Price slider
  /*----------------------------------------*/
    var sliderrange = $("#slider-range");
    var amountprice = $("#amount");
    $(function () {
        sliderrange.slider({
            range: true,
            min: 0,
            max: 1200,
            values: [300, 800],
            slide: function (event, ui) {
                amountprice.val("$" + ui.values[0] + " - $" + ui.values[1]);
            },
        });
        amountprice.val(
            "$" +
            sliderrange.slider("values", 0) +
            " - $" +
            sliderrange.slider("values", 1)
        );
    });
    /*----------------------------------------*/
    /* 18. Category menu Activation
   /*----------------------------------------*/
    $(".category-sub-menu li.has-sub > a").on("click", function () {
        $(this).removeAttr("href");
        var element = $(this).parent("li");
        if (element.hasClass("open")) {
            element.removeClass("open");
            element.find("li").removeClass("open");
            element.find("ul").slideUp();
        } else {
            element.addClass("open");
            element.children("ul").slideDown();
            element.siblings("li").children("ul").slideUp();
            element.siblings("li").removeClass("open");
            element.siblings("li").find("li").removeClass("open");
            element.siblings("li").find("ul").slideUp();
        }
    });
    /*----------------------------------------*/
    /* 19. Featured Product active
   /*----------------------------------------*/
    $(".featured-product-active").owlCarousel({
        loop: true,
        nav: true,
        autoplay: false,
        autoplayTimeout: 5000,
        navText: [
            '<i class="ion-ios-arrow-back"></i>',
            '<i class="ion-ios-arrow-forward"></i>',
        ],
        item: 3,
        responsive: {
            0: {
                items: 1,
            },
            768: {
                items: 2,
            },
            992: {
                items: 2,
            },
            1100: {
                items: 2,
            },
            1200: {
                items: 2,
            },
        },
    });
    /*----------------------------------------*/
    /* 20. Featured Product 2 active
  /*----------------------------------------*/
    $(".featured-product-active-2").owlCarousel({
        loop: true,
        nav: true,
        autoplay: false,
        autoplayTimeout: 5000,
        navText: [
            '<i class="ion-ios-arrow-back"></i>',
            '<i class="ion-ios-arrow-forward"></i>',
        ],
        item: 3,
        responsive: {
            0: {
                items: 1,
            },
            768: {
                items: 2,
            },
            992: {
                items: 1,
            },
            1100: {
                items: 1,
            },
            1200: {
                items: 1,
            },
        },
    });
    /*----------------------------------------*/
    /* 21. Modal Menu Active
   /*----------------------------------------*/
    $(".product-details-images").each(function () {
        var $this = $(this);
        var $thumb = $this.siblings(".product-details-thumbs, .tab-style-left");
        $this.slick({
            arrows: false,
            slidesToShow: 1,
            slidesToScroll: 1,
            autoplay: false,
            autoplaySpeed: 5000,
            dots: false,
            infinite: true,
            centerMode: false,
            centerPadding: 0,
            asNavFor: $thumb,
        });
    });
    $(".product-details-thumbs").each(function () {
        var $this = $(this);
        var $details = $this.siblings(".product-details-images");
        $this.slick({
            slidesToShow: 4,
            slidesToScroll: 1,
            autoplay: false,
            autoplaySpeed: 5000,
            dots: false,
            infinite: true,
            focusOnSelect: true,
            centerMode: true,
            centerPadding: 0,
            prevArrow:
                '<span class="slick-prev"><i class="fa fa-angle-left"></i></span>',
            nextArrow:
                '<span class="slick-next"><i class="fa fa-angle-right"></i></span>',
            asNavFor: $details,
        });
    });
    $(".tab-style-left, .tab-style-right").each(function () {
        var $this = $(this);
        var $details = $this.siblings(".product-details-images");
        $this.slick({
            slidesToShow: 3,
            slidesToScroll: 1,
            autoplay: false,
            autoplaySpeed: 5000,
            dots: false,
            infinite: true,
            focusOnSelect: true,
            vertical: true,
            centerPadding: 0,
            prevArrow:
                '<span class="slick-prev"><i class="fa fa-angle-down"></i></span>',
            nextArrow:
                '<span class="slick-next"><i class="fa fa-angle-up"></i></span>',
            asNavFor: $details,
        });
    });
    /*----------------------------------------*/
    /* 22. Cart Plus Minus Button
  /*----------------------------------------*/
    $(".cart-plus-minus").append(
        '<div class="dec qtybutton"><i class="fa fa-angle-down"></i></div><div class="inc qtybutton"><i class="fa fa-angle-up"></i></div>'
    );
    $(".qtybutton").on("click", function () {
        var $button = $(this);
        var oldValue = $button.parent().find("input").val();
        if ($button.hasClass("inc")) {
            var newVal = parseFloat(oldValue) + 1;
        } else {
            // Don't allow decrementing below one
            if (oldValue > 1) {
                var newVal = parseFloat(oldValue) - 1;
            } else {
                newVal = 1;
            }
        }
        $button.parent().find("input").val(newVal);
    });
    /*----------------------------------------*/
    /* 23. Single Prduct Carousel Activision
  /*----------------------------------------*/
    $(".sp-carousel-active").owlCarousel({
        loop: true,
        nav: false,
        dots: false,
        autoplay: false,
        autoplayTimeout: 5000,
        navText: [
            '<i class="fa fa-angle-left"></i>',
            '<i class="fa fa-angle-left"></i>',
        ],
        item: 4,
        responsive: {
            0: {
                items: 1,
            },
            480: {
                items: 2,
            },
            768: {
                items: 2,
            },
            992: {
                items: 3,
            },
            1200: {
                items: 4,
            },
        },
    });
    /*----------------------------------------*/
    /* 24. Star Rating Js
  /*----------------------------------------*/
    $(function () {
        $(".star-rating").barrating({
            theme: "fontawesome-stars",
        });
    });
    /*----------------------------------------*/
    /* 25. Zoom Product Venobox
  /*----------------------------------------*/
    $(".venobox").venobox({
        spinner: "wave",
        spinColor: "#cb9a00",
    });
    /*----------------------------------------*/
    /* 26. WOW
  /*----------------------------------------*/
    new WOW().init();

    $("#dicount-form").submit(function (e) {
        alert("As")


        var form = $(this);
        var actionUrl = form.attr('action');
        var code = $("#coupon_code").val();
        alert(actionUrl)
        $.ajax({
            type: "POST",
            url: actionUrl,
            data: {
                coupon_code: code,
            },
            success: function (data) {
                alert(data); // show response from the php script.
            }
        });
        e.preventDefault(); // avoid to execute the actual submit of the form.
    });
    /*----------------------------------------*/
    /* 27. add cart

     */
    /*----------------------------------------*/
    $(".add-cart").on("click", function () {
        var maSP = $(this).attr("pid");
        var path = $(this).attr("path")
        $.ajax({
            url: path,
            method: "GET",
            data: {
                id: maSP,
                quantitySold: 1,
            },
            success: function (data, textStatus, xhr) {
                $(".minicart").load("" + " .minicart2");
                $(".hm-minicart-trigger").load("" + " .hm-minicart-trigger2");

                Command: toastr["success"]("Sản phẩm đã được thêm vào giỏ hàng!")

                toastr.options = {
                    "closeButton": false,
                    "debug": false,
                    "newestOnTop": false,
                    "progressBar": false,
                    "positionClass": "toast-bottom-right",
                    "preventDuplicates": false,
                    "onclick": null,
                    "showDuration": "300",
                    "hideDuration": "1000",
                    "timeOut": "5000",
                    "extendedTimeOut": "1000",
                    "showEasing": "swing",
                    "hideEasing": "linear",
                    "showMethod": "fadeIn",
                    "hideMethod": "fadeOut"
                }

            },
            error: function (data, textStatus, xhr) {
                Command: toastr["error"]("Thêm sản phẩm vào giỏ hàng thất bại!")

                toastr.options = {
                    "closeButton": false,
                    "debug": false,
                    "newestOnTop": false,
                    "progressBar": false,
                    "positionClass": "toast-bottom-right",
                    "preventDuplicates": false,
                    "onclick": null,
                    "showDuration": "300",
                    "hideDuration": "1000",
                    "timeOut": "5000",
                    "extendedTimeOut": "1000",
                    "showEasing": "swing",
                    "hideEasing": "linear",
                    "showMethod": "fadeIn",
                    "hideMethod": "fadeOut"
                }
            }
        })

    });
    $(".qtybutton").click(function () {

        var input = $(this).closest(".cart-plus-minus").find(".changeQuantity");
        var id = input.attr("pid");

        var oldQuantity = input.attr("oldQuantity");
        var quantity = input.val();
        if (oldQuantity != quantity) {
            $.ajax({
                url: "/houseware_nlu_war_exploded/Update-quantity",
                method: "POST",
                data: {
                    id: id,
                    quantity: quantity
                },
                success: function (data) {
                    Command: toastr["error"]("Thay đổi thành công, bạn nên cập nhật giỏ hàng")

                    toastr.options = {
                        "closeButton": false,
                        "debug": false,
                        "newestOnTop": false,
                        "progressBar": false,
                        "positionClass": "toast-bottom-right",
                        "preventDuplicates": true,
                        "onclick": null,
                        "showDuration": "300",
                        "hideDuration": "1000",
                        "timeOut": "5000",
                        "extendedTimeOut": "1000",
                        "showEasing": "swing",
                        "hideEasing": "linear",
                        "showMethod": "fadeIn",
                        "hideMethod": "fadeOut"
                    }
                },
                error: function (data) {
                    if (data.status === 404) {
                        alert("sp ko ton tai");
                    } else if (data.status === 405) {
                        alert("vuot qua luong hang ton");
                    }
                }
            });
        }
    })

    $(".changeQuantity").change(function () {
        var id = $(this).attr("pid");
        var tr = $(this).closest("tr");
        var oldQuantity = $(this).attr("oldQuantity");
        var quantity = $(this).val();

        $.ajax({
            url: "/houseware_nlu_war_exploded/Update-quantity",
            method: "POST",
            data: {
                id: id,
                quantity: quantity
            },
            success: function (data) {
                console.log("success");
            },
            error: function (data) {
                var error = ""
                if (data.status === 404) {
                    error = "Sản phẩm không tồn tại!";
                } else if (data.status === 405) {
                    error = "vượt quá số lượng hàng tồn!";

                }
                Command: toastr["error"](error)
                toastr.options = {
                    "closeButton": false,
                    "debug": false,
                    "newestOnTop": false,
                    "progressBar": false,
                    "positionClass": "toast-bottom-right",
                    "preventDuplicates": false,
                    "onclick": null,
                    "showDuration": "300",
                    "hideDuration": "1000",
                    "timeOut": "5000",
                    "extendedTimeOut": "1000",
                    "showEasing": "swing",
                    "hideEasing": "linear",
                    "showMethod": "fadeIn",
                    "hideMethod": "fadeOut"
                }
            }
        });
    })

    $(".remove-product").click(function () {
        var id = $(this).attr("pid");
        var tr = $(this).closest("tr");
        console.log(id)
        $.ajax({
            url: "/houseware_nlu_war_exploded/product-remove",
            method: "POST",
            data: {
                id: id
            },
            success: function (data) {
                tr.remove();
                Command: toastr["success"]("Xóa sản phẩm thành công!")

                toastr.options = {
                    "closeButton": true,
                    "debug": false,
                    "newestOnTop": false,
                    "progressBar": false,
                    "positionClass": "toast-bottom-right",
                    "preventDuplicates": false,
                    "onclick": null,
                    "showDuration": "300",
                    "hideDuration": "1000",
                    "timeOut": "5000",
                    "extendedTimeOut": "1000",
                    "showEasing": "swing",
                    "hideEasing": "linear",
                    "showMethod": "fadeIn",
                    "hideMethod": "fadeOut"
                }
            },
            error: function (data, textStatus, errorThrown) {
                if (data.status === 404) {
                    Command: toastr["error"]("Xóa sản phẩm thất bại!")

                    toastr.options = {
                        "closeButton": false,
                        "debug": false,
                        "newestOnTop": false,
                        "progressBar": false,
                        "positionClass": "toast-bottom-right",
                        "preventDuplicates": false,
                        "onclick": null,
                        "showDuration": "300",
                        "hideDuration": "1000",
                        "timeOut": "5000",
                        "extendedTimeOut": "1000",
                        "showEasing": "swing",
                        "hideEasing": "linear",
                        "showMethod": "fadeIn",
                        "hideMethod": "fadeOut"
                    }

                }
            }
        });
    });
    $(document).ready(function () {
        $.ajax({
            type: "GET",
            url: "header", //Tên servlet
            data: "name=" + name,  //Gán giá trị vào name mục đich để servlet nhận được Parameter
            dataType: "json",
            async: true,
            cache: false,
            success: function (result) {
                var listSize = Object.keys(result).length;
                console.log(result)
                if (listSize > 0) {
                    for (let i = 0; i < listSize; i++) {

                        // $(".select-search-category ul").append("<option value='"+result[i].ma_loaisp+"'>"+result[i].ten_loaisp+"</option>")
                        $(".select-search-category").append(new Option(result[i].ten_loaisp, result[i].ma_loaisp))
                        $("select").niceSelect("update")
                    }
                }
            }
        });
        $.ajax({
            url: "StoreInformation",
            type: "GET",
            success: function (data) {
                $("#store__address").text(data['diachi']);
                $("#store__email").text(data['email']);
                $("#store__email").attr("href", "mailto:" + data['email']);
                $("#store__phone").text(data['sdt']);
                $("#store__phone").attr("href", "tel:" + data['sdt']);
            }
        });

    });
})
(jQuery);

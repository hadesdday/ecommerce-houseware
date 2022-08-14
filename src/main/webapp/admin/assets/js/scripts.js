(function ($) {
    "use strict";

    $(function () {
        for (
            var nk = window.location,
                o = $(".nano-content li a")
                    .filter(function () {
                        return this.href == nk;
                    })
                    .addClass("active")
                    .parent()
                    .addClass("active");
            ;
        ) {
            if (!o.is("li")) break;
            o = o.parent().addClass("d-block").parent().addClass("active");
        }
    });

    /*
      ------------------------------------------------
      Sidebar open close animated humberger icon
      ------------------------------------------------*/

    $(".hamburger").on("click", function () {
        $(this).toggleClass("is-active");
    });

    /* TO DO LIST
      --------------------*/
    $(".tdl-new").on("keypress", function (e) {
        var code = e.keyCode ? e.keyCode : e.which;
        if (code == 13) {
            var v = $(this).val();
            var s = v.replace(/ +?/g, "");
            if (s == "") {
                return false;
            } else {
                $(".tdl-content ul").append(
                    "<li><label><input type='checkbox'><i></i><span>" +
                    v +
                    "</span><a href='#' class='ti-close'></a></label></li>"
                );
                $(this).val("");
            }
        }
    });

    $(".tdl-content a").on("click", function () {
        var _li = $(this).parent().parent("li");
        _li
            .addClass("remove")
            .stop()
            .delay(100)
            .slideUp("fast", function () {
                _li.remove();
            });
        return false;
    });

    // for dynamically created a tags
    $(".tdl-content").on("click", "a", function () {
        var _li = $(this).parent().parent("li");
        _li
            .addClass("remove")
            .stop()
            .delay(100)
            .slideUp("fast", function () {
                _li.remove();
            });
        return false;
    });

    try {
        var modal = document.getElementById("addModal");
        var btn = document.getElementById("addBtn");
        var modalDelete = document.getElementById("confirmDelete");
        var deleteAct = document.getElementById("deleteAction");

        var editModal = document.getElementById("editModal");

        var iconClose = document.getElementsByClassName("custom-close")[0];
        var closeBtn = document.getElementsByClassName("close-btn")[0];

        btn.onclick = function () {
            modal.style.display = "block";
        };

        // deleteAct.onclick = function () {
        //   modalDelete.style.display = "block";
        // };

        iconClose.onclick = function () {
            modal.style.display = "none";
        };

        closeBtn.onclick = function () {
            modal.style.display = "none";
        };

        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            } else if (event.target == editModal) {
                editModal.style.display = "none";
            } else if (event.target == modalDelete) {
                modalDelete.style.display = "none";
            }
        };

        document.onkeydown = function (event) {
            event = event || window.event;
            var isEscape = false;
            if ("key" in event) {
                isEscape = event.key === "Escape" || event.key === "Esc";
            } else {
                isEscape = event.keyCode === 27;
            }
            if (isEscape) {
                modal.style.display = "none";
                editModal.style.display = "none";
                modalDelete.style.display = "none";
            }
        };

        var iconClose1 = document.getElementsByClassName("custom-close")[1];
        var closeBtn1 = document.getElementsByClassName("close-btn")[1];

        iconClose1.onclick = function () {
            editModal.style.display = "none";
        };

        closeBtn1.onclick = function () {
            editModal.style.display = "none";
        };

        var iconClose2 = document.getElementsByClassName("custom-close")[2];
        var closeBtn2 = document.getElementsByClassName("close-btn")[2];

        iconClose2.onclick = function () {
            modalDelete.style.display = "none";
        };

        closeBtn2.onclick = function () {
            modalDelete.style.display = "none";
        };
    } catch (err) {
        console.log("not managemenent page")
    }
})(jQuery);

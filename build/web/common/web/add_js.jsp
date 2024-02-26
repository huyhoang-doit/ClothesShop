<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script>
    const buyBtns = document.querySelectorAll('.logout');
        const modal = document.querySelector('.js-modal');
        const modalClose = document.querySelector('.js-modal-close');
        const modalContainer = document.querySelector('.js-modal-container');

        function openModal() {
             modal.classList.add('open');
        }

        function hideModal() {
             modal.classList.remove('open');
        }

        for (const buyBtn of buyBtns) {
            buyBtn.addEventListener('click',openModal);
        }

        modalClose.addEventListener('click',hideModal);

        modal.addEventListener('click',hideModal);

        modalContainer.addEventListener('click',function(event) {
            event.stopPropagation();
        });
    
</script>

<script src="assets\js\vendor\jquery-1.12.0.min.js"></script>
<script src="assets\js\popper.js"></script>
<script src="assets\js\bootstrap.min.js"></script>
<script src="assets\js\plugins.js"></script>
<script src="assets\js\main.js"></script>
<script src="assets\js\events.js"></script>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>

<!--
<script src="admin/js/jquery-3.2.1.min.js"></script>
<script src="admin/js/jquery-3.2.1.min.js"></script>
<script src="admin/js/popper.min.js"></script>
<script src="admin/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="admin/js/main.js"></script> 

<script>

    $(document).ready(jQuery(function () {
        jQuery(".logout").click(function () {
            swal({
                title: "Logout",
                text: "Bạn có chắc chắn là muốn đăng xuất?",
                buttons: ["Hủy bỏ", "Đồng ý"],
            })
                    .then((willDelete) => {
                        if (willDelete) {
                            window.location = "DispatchServlet?btnAction=Logout"");
                            swal("Đã đăng xuất!", {
                            });
                        }
                    });
        });
    }));
</script>-->
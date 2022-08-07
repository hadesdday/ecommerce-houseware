<!-- Common -->
<script src="assets/js/lib/jquery.min.js"></script>

<script src="assets/js/lib/menubar/sidebar.js"></script>

<script src="assets/js/lib/bootstrap.min.js"></script>
<script src="assets/js/scripts.js"></script>

<script src="assets/js/lib/data-table/datatables.min.js"></script>
<script src="assets/js/lib/data-table/dataTables.buttons.min.js"></script>
<script src="assets/js/lib/data-table/buttons.flash.min.js"></script>
<script src="assets/js/lib/data-table/jszip.min.js"></script>
<script src="assets/js/lib/data-table/pdfmake.min.js"></script>
<script src="assets/js/lib/data-table/vfs_fonts.js"></script>
<script src="assets/js/lib/data-table/buttons.html5.min.js"></script>
<script src="assets/js/lib/data-table/buttons.print.min.js"></script>
<script src="assets/js/lib/data-table/datatables-init.js"></script>
<script src="assets/js/lib/jquery.nice-select.min.js"></script>

<script>
    function showEditModal() {
        const editModal = document.getElementById("editModal");
        editModal.style.display = "block";
    }

    function showDeleteModal() {
        const deleteModal = document.getElementById("confirmDelete");
        deleteModal.style.display = "block";
    }

    function closeModal() {
        const modal = document.getElementById("addModal");
        const modalDelete = document.getElementById("confirmDelete");
        const editModal = document.getElementById("editModal");
        modal.style.display = "none";
        modalDelete.style.display = "none";
        editModal.style.display = "none";
    }

    function clearValue() {
        $('input').val("");
        $("textarea").val("");
    }
</script>
<script>
    $(document).ready(function () {
        $('select').niceSelect();
    })

    $('select').on('change', function () {
        $('select').niceSelect('update');
    })
</script>
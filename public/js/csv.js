<script>
   function exportCsv(_this)
   {
      let urlCsv = $(_this).data('href');
      window.location.href = urlCsv;
   }
</script>
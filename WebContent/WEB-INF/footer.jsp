<script src="js/bootstrap.js"></script>
<script type="text/javascript">
updateBanner();
function updateBanner () {
	setTimeout('updateBanner();',10000); // toutes les 10 secondes
	$.ajax({
		   type: "POST",
		   url: "ajax",
		   data: "request=banner",
		   dataType: "html",
		   success:function(data){
			$('#banner').html(data);
		}});
}
</script>
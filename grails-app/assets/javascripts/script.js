/**
 * 
 */

$(document).on("click", ".photoId", function () {
     var photoId = $(this).data('id');
     $(".modal-body #photoId").val( photoId );
});
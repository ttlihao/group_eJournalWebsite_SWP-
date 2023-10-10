function showUser( name, number, email ) {
    $('#showModal').modal('show');
    //Co chuc nang get thong tin cua mot user va do vao modal Show Information
  }
  
  function editUser( id, name, number, email ) {
    $('#editModal').modal('show');
      //Function duoc goi khi click nut edit va co chuc nang get thong tin cua user duoc chon 
    //sau do do du lieu vao modal Edit Information
  }
  function removeOneUser( contactId ) {
    if (confirm('Are you sure ?')) {
      //Ta se viet code dung phuong thuc DELETE cua module AJAX de xoa mot user
    }
  }
  function createOneUser() {
    //Function co se su dung AJAX  de tao mot user moi
  }
  function editOneUser() {
   // Get data from the modal form
   var id = $('#editUserId').val();
   var name = $('#editUserName').val();
   var number = $('#editUserNumber').val();
   var email = $('#editUserEmail').val();

   // Make an AJAX request to update the user data on the server
   $.ajax({
      url: '/api/users/' + id,
      type: 'PUT', // Use the appropriate HTTP method
      data: {
         name: name,
         number: number,
         email: email
      },
      success: function(response) {
         // Handle the success response, e.g., close the modal
         $('#editModal').modal('hide');
      },
      error: function(error) {
         // Handle errors, e.g., display an error message
         console.error('Error updating user:', error);
      }
   });
}

$(document).ready(function() {

  console.log($('hey look, it loaded'))

  $(".new_page").click(function() {
      var new_page = $(this).html()
      console.log(new_page)
      $(".repair_list").addClass("hidden")
      $(".group_" + new_page).removeClass("hidden")
    })  

})
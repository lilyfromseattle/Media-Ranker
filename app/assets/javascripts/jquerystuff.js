$(document).ready(function() {
  $(".my-div").hover(function () {
  $(".my-new-div").slideDown(500);
  });

  $(".sub-body").hover(function () {
  $(".my-new-div").slideUp(600);
  });
});

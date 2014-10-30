$(document).ready(function() {
  $(".my-div").hover(function () {
  $(".my-new-div").slideDown(500);
  });

  $(".my-pages").mouseover(function () {
  $(".my-new-div").slideUp(600);
  });

  // $(".my-new-div").mouseout(function () {
  // $(".my-new-div").slideUp(600);
  // });

  // $(".sub-body").hover(function () {
  // $(".my-new-div").slideUp(600);
  // });
});

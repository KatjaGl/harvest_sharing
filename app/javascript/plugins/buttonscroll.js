const btnScrollToTop = () => {
  const scrollbtnToTop = document.querySelector("#btnScrollToTop");
  if (scrollbtnToTop) {
    $(window).scroll(function(){
      if ($(this).scrollTop() > 100) {
          $('#btnScrollToTop').fadeIn();
      } else {
          $('#btnScrollToTop').fadeOut();
      }
    });
    $('#btnScrollToTop').click(function(){
      $("html, body").animate({ scrollTop: 0 }, 600);
      return false;
    });
  }
}
 export { btnScrollToTop };

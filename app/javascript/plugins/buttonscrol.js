const btnScrollToTop = () => {
  const scrollbtnToTop = document.querySelector("#btnScrollToTop");
  if (scrollbtnToTop) {
    scrollbtnToTop.addEventListener("click", function () {
    window.scrollTo({
      top: 0,
      left: 0,
      behavior: "smooth"
    });
    // $("html, body").animate({ scrollTop: 0}, "slow");
  });

  }

}
  export { btnScrollToTop };

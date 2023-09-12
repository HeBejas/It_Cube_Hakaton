$(document).ready(() => {
    let lastScrollPos = 0;
    $(window).scroll(function() {
        var scrollPos = $(window).scrollTop();
        if (scrollPos > lastScrollPos) {
            $("header").css({"margin-top" : "-100px"});
        } else {
            $("header").css({"margin-top" : "0px"});
        }
        lastScrollPos = scrollPos;
    });
});
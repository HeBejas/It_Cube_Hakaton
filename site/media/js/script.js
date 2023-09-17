$(document).ready(() => {
    let lastScrollPos = 0;
    $(window).scroll(function() {
        var scrollPos = $(window).scrollTop();
        if (scrollPos > lastScrollPos && scrollPos >= 100) {
            $("header").css({"margin-top" : "-100px"});
        } else {
            $("header").css({"margin-top" : "0px"});
        }
        lastScrollPos = scrollPos;
    });
    $(".filters").click(() => {
        document.getElementById("dialog_filters").showModal();
    });
    $("#dialog_filters").click((event) => {
        if (event.target.id !== "dialog_filters")
            return;

        const rect = event.target.getBoundingClientRect();

        const clickedInDialog = (
            rect.top <= event.clientY &&
            event.clientY <= rect.top + rect.height &&
            rect.left <= event.clientX &&
            event.clientX <= rect.left + rect.width
        );

        if (clickedInDialog === false)
            event.target.close();
    });
});
function messageForm() {
    var shiftDown = false;
    var chatForm = $("#new_message");
    var messageBox = chatForm.children("textarea");
    $(document).keypress(function(e) {
        if (e.keyCode == 13) {
            if (messageBox.is(":focus")) {
                e.preventDefault(); // prevent another \n from being entered
                chatForm.submit();
                $(chatForm).trigger('reset');
            }
        }
    });
}
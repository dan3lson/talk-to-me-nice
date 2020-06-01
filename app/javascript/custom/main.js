message_appender = function(content) {
    $('#messages-table').append(content);
}

$(document).on('turbolinks:load', function() {
    message_appender('hello, d3!');
});


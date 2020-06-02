import consumer from "./consumer"

consumer.subscriptions.create("RoomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("Connected to the room!");
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    if (data.message.length) {
      $('#messages-table').append(data.message);
      scroll_down();
    }
  }
});

$(document).on('turbolinks:load', function () {
  submit_message();
  scroll_down();
})

let submit_message = function () {
  $('#message_content').on('keydown', function (event) {
    if (event.keyCode == 13) {
      $('input').click();
      event.target.value = '';
      event.preventDefault();
    }
  })
};

let scroll_down = function () {
  $('#messages').scrollTop($('#messages')[0].scrollHeight);
}
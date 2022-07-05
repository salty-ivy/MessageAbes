import consumer from "channels/consumer"

consumer.subscriptions.create("ChatroomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    // alert(data.test);
    const element = document.getElementById("message-container");
    element.innerHTML += data.mod_message;
    // scroller();
    const scroll_window = document.getElementById("message-container");
  scroll_window.scrollTop = scroll_window.scrollHeight;
  }
});

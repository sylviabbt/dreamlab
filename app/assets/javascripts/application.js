// = require rails-ujs
//= require_tree .


Rails.ajax({
  url: "/tokens",
  type: "POST",
  success: function(data) {
   Twilio.Chat.Client
      .create(data.token)
      .then(function(chatClient) {
        chatClient.getChannelByUniqueName("dreamCoLab-k12-c15")
          .then(function(channel){
            // general channel exists
          })
          .catch(function(){
              chatClient.createChannel({
              uniqueName: "dreamCoLab-General111",
              friendlyName: "General Chat Channel"
            }).then(function(channel) {
              if (channel.state.status !== "joined") {
                channel.join().then(function(channel) {
                  console.log("Joined General Channel");
                })
              }
            });
            // general channel does not exist
          })
        });
  }
});


document.addEventListener("DOMContentLoaded", () => {
  if (document.querySelector(".chat")) {
    window.chat = new Chat();
  }
});

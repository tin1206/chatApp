App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    console.log "connected red"
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    console.log(data)
    $(".messages-list ul").append("<li>"+ data["message"]["body"]+"</li>")
    # Called when there's incoming data on the websocket for this channel

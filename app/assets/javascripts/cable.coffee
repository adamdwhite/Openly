# // Action Cable provides the framework to deal with WebSockets in Rails.
# // You can generate new channels where WebSocket features live using the `rails generate channel` command.
# //
# //= require action_cable
# //= require_self
# //= require_tree ./channels


@App ||= {}
App.cable = ActionCable.createConsumer()


# Below the code for the .JS version of this file. All documentation assumes this file to be a .coffee file instead, which the code above is written for. 

### 
(function() {
  this.App || (this.App = {});

  App.cable = ActionCable.createConsumer();

}).call(this);
###
// Action Cable provides the framework to deal with WebSockets in Rails.
// You can generate new channels where WebSocket features live using the rails generate channel command.
//
//= require action_cable
//= require_self
//= require_tree ./channels
(function () {
    this.App || (this.App = {});
    App.cable = ActionCable.createConsumer();
}).call(this);
//# sourceMappingURL=/media/data1/importante/danilo/cloud/github/RailsSkeleton/app/assets/javascripts/src/body/websocket/cable.js.map
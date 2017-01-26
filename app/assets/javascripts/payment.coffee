# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
paypal.Button.render {
  env: 'sandbox'
  payment: ->
    # Set up the payment here, when the buyer clicks on the button
    return
  onAuthorize: (data, actions) ->
    # Execute the payment here, when the buyer approves the transaction
    return

}, '#paypal-button'
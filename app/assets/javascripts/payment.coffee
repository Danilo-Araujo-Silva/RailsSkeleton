# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
paypal.Button.render {
	env: 'sandbox'
	client:
		sandbox: ''
		production: ''
	payment: ->
		env = @props.env
		client = @props.client
		paypal.rest.payment.create env, client, transactions: [ { amount:
			total: '1.00'
			currency: 'USD' } ]
	commit: true
	onAuthorize: (data, actions) ->
		# Optional: display a confirmation page here
		actions.payment.execute().then ->
			# Show a success page to the buyer
			return

}, '#paypal-button'
require 'test_helper'
require 'active_merchant'

class ActiveMerchantTest < ActiveSupport::TestCase
  test "test 1" do
    # Use the TrustCommerce test servers
    ActiveMerchant::Billing::Base.mode = :test

    paypal_express_params = {
      login: '',
      password: '',
      signature: ''
    }

    gateway = ActiveMerchant::Billing::PaypalExpressGateway.new(paypal_express_params)

    # ActiveMerchant accepts all amounts as Integer values in cents
    amount = 1000  # $10.00

    setup_hash = {
        ip: '170.170.1.1',
        items: [{name: 'sample', quantity: 1, amount: 100_00, description: 'desc'}],
        subtotal: 10000,
        shipping: 0,
        handling: 0,
        tax: 0,
        currency: 'USD',
        return_url: 'http://localhost:3000/success',
        cancel_return_url: 'http://localhost:3000/failure',
        allow_guest_checkout: true
    }
    response = gateway.setup_purchase(100_00, setup_hash) # 100 USD

    if response.success?
      puts "Successfully charged $#{sprintf("%.2f", amount / 100)}."
    else
      raise StandardError, response.message
    end
  end
end

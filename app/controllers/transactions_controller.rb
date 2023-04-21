class TransactionsController < ApplicationController
    def send_transaction
  amount = params[:amount]
  email = params[:email]
  phone = params[:phone]
  scheduled_at = params[:scheduled_at]

  # send transaction using email or SMS

  
  if scheduled_at.present?
    Transaction.create(amount: amount, email: email, phone: phone, scheduled_at: scheduled_at)
    render

  render json: { message: 'Congratulations, your transaction is successful.' }, status: :ok
end

end

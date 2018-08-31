class PaymentsController < ApplicationController
  before_action :set_order

  # def new
  #   authorize @order
  #   @campaign = Campaign.find_by(params[:campaign_sku])
  #   authorize @campaign
  # end

  def create
    authorize @order
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @order.amount_cents,
      description:  "キャンペーン支払い #{@order.campaign_sku} オーダー #{@order.id}",
      currency:     @order.amount.currency
    )

    @order.update(payment: charge.to_json, state: 'paid')
    redirect_to order_path(@order)

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_order_payment_path(@order)
  end

  private

    def set_order
      @order = current_user.orders.where(state: 'pending').find(params[:order_id])
    end
end

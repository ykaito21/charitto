class OrdersController < ApplicationController

  def create
    campaign = Campaign.find(params[:campaign_id])
    order  = Order.create!(campaign_sku: campaign.sku, amount: campaign.price, state: 'pending', user: current_user)
    authorize order

    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
    authorize @order
  end
end

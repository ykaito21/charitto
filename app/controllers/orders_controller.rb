class OrdersController < ApplicationController

  def index
    @orders = policy_scope(Order).where(user: current_user).where(state: 'pending').order(created_at: :desc)
  end
  def create
    campaign = Campaign.find(params[:campaign_id])
    order  = Order.create!(campaign_sku: campaign.sku, amount: campaign.price, state: 'pending', user: current_user, name: campaign.name, order_image: campaign.camp_image)
    authorize order

    redirect_to orders_path
  end

  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
    authorize @order
  end
end

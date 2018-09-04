class CampaignsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_campaign, only: [ :show, :edit, :update, :destroy ]


  def index
    @campaigns = policy_scope(Campaign).order(created_at: :desc)
    #campaigns.where(start_date < now < end_date)
  end

  def show
  end

  def new
    @campaign = Campaign.new
    @organization = Organization.find(params[:organization_id])
    authorize @campaign
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @organization = Organization.find(params[:organization_id])
    @campaign.organization = @organization
    authorize @campaign
    if @campaign.save
      redirect_to campaign_path(@campaign)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @campaign.update(campaign_params)
      redirect_to campaign_path(@campaign)
    else
      render :edit
    end
  end

  def destroy
    @campaign.destroy
    redirect_to root_path
  end

  private

    def campaign_params
      params.require(:campaign).permit(:sku, :name, :camp_image, :price_cents, :price_currency)
    end

    def set_campaign
      @campaign = Campaign.find(params[:id])
      authorize @campaign
    end
end

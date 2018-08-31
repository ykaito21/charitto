class CampaignsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_campaign, only: [ :show ]


  def index
    @campaigns = policy_scope(Campaign).order(created_at: :desc)
    #campaigns.where(start_date < now < end_date)
  end

  def show
  end

  private

    def campaign_params
      params.require(:campaign).permit(:name)
    end

    def set_campaign
      @campaign = Campaign.find(params[:id])
      authorize @campaign
    end



end

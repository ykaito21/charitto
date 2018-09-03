class OrganizationsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_organization, only: [ :show, :edit, :update, :destroy ]

  def index
    @organizations = policy_scope(Organization).order(created_at: :desc)
  end

  def show
  end

  def new
    @organization = Organization.new
    authorize @organization
  end

  def create
    @organization = Organization.new(organization_params)
    @organization.user = current_user
    authorize @organization
    if @organization.save
      redirect_to organization_path(@organization)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @organization.update(organization_params)
      redirect_to organization_path(@organization)
    else
      render :edit
    end
  end

  def destroy
    @organization.destroy
    redirect_to root_path
  end

  private

    def organization_params
      params.require(:organization).permit(:name, :description, :org_image)
    end

    def set_organization
      @organization = Organization.find(params[:id])
      authorize @organization
    end

end

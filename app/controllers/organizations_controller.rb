class OrganizationsController < ApplicationController
  before_action :set_restaurant, only: [ :show, :edit, :update, :destroy ]

  def index
    @organizations = Organization.all
  end

  def show
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new
    @organization.user = current_user
    if @organization.save
      redirect_to organization_path(@organization)
    else
      render :new
    end
  end

  def edit
    if @organization.update(organization_params)
      redirect_to organization_path(@organization)
    else
      render :edit
    end
  end

  def update
  end

  def destroy
  end

  private

  def organization_params
    params.require(:organization).permit(:name)
  end

  def set_organization
    @organization = Organization.find(params[:id])
  end

end

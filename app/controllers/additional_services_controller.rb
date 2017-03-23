class AdditionalServicesController < ApplicationController
  def new
    @club = params[:club_id]
    @service = AdditionalService.new
  end

  def show
  end

  def index
    @services = AdditionalService.all
  end

  def create
    @service = AdditionalService.create!(service_params)
    redirect_to root_path
  end

  def update
  end

  def destroy
  end

  def service_params
    params.require(:additional_service).permit(
    :club_id,
    :name,
    :fee,
    :description
    )
  end
end

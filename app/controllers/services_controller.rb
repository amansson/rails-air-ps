class ServicesController < ApplicationController

  skip_before_action :authenticate_user!, :only => [:index, :show]

  def index
    @services = Service.all
  end

  def show
   @service = Service.find(params[:id])
   @contract = Contract.new
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(params_service)
    @service.user = current_user

    if @service.save
      redirect_to service_path(@service)
    else
      render :new
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    @service.update(params_service)

    redirect_to service_path(@service)
  end

  def destroy
   @service = Service.find(params[:id])
   @service.destroy

   redirect_to provider_services_path
  end

  private

  def params_service
    params.require(:service).permit(:name, :content, :price, :location, :category_id, :photo)
  end

end

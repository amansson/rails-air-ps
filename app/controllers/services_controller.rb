class ServicesController < ApplicationController

  def index
    @services = Service.all
  end

  def show
   @service = Service.find(params[:id]) 
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
    
  end

  def update
  end

  def delete
  end

  private

  def params_service
    params.require(:service).permit(:name, :content, :price, :location, :category_id)
  end
  
end

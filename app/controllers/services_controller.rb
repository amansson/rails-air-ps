class ServicesController < ApplicationController

  def index
    @services = Services.all
  end

  def show
   @service = Services.find(params[:id]) 
  end

  def new
    @service = Services.new
  end

  def create
    @service = Services.new(params_service)
    @category = Category.find(params[:category_id])
    @service.category = @category
    @user = User.find(params[:user_id])
    @service.user = @user;
    
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
    params.require(:service).permit(:name, :content, :price, :location)
  end
  
end

module Provider
  class ContractsController < ApplicationController

    def index
      @services = current_user.services
      @contracts = @services.map { |service| service.contracts }.flatten
    end

    def update
      @contract = Contract.find(params[:id])
      @contract.confirmed = true
      @contract.save
      redirect_to request.referrer
    end

    def destroy
      @contract = Contract.find(params[:id])
      @contract.destroy
      redirect_to request.referrer
    end
  end
end


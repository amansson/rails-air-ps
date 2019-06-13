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
      redirect_to consumer_contracts_path
    end

  end
end


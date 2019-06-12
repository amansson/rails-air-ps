module Provider
  class ContractsController < ApplicationController

    def index
      @contracts = current_user.contracts
      @services = current_user.services
    end

    def update
      @contract = Contract.find(params[:id])
      @contract.confirmed = true
      @contract.save
      redirect_to consumer_contracts_path
    end

  end
end


module Consumer
  class ContractsController < ApplicationController

    def index
      @contracts = current_user.contracts
    end

    def destroy
      @contract = Contract.find(params[:id])
      @contract.destroy
      redirect_to consumer_contracts_path
    end


  end
end

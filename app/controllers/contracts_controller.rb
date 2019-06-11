class ContractsController < ApplicationController
  before_action :authenticate_user!

  def new
    @contract = Contract.new
  end

  def create
    @contract = Contract.new(contract_params)
    @contract.user = current_user
    if @contract.save
      flash[:success] = "Contract was created successfully"
      redirect_to contract_path(@contract)
    else
      render 'new'
    end  
  end

  def update
        if @contract.update(contract_params)
      flash[:success] = "Contract was successfully updated"
      redirect_to contract_path(@contract)
    else
      render 'edit'
    end
  end

  private

  def contract_params
    params.require(:contract).permit(:start_date, :end_date, :confirmed)
  end

end

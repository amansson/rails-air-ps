class ContractsController < ApplicationController



  def new
    @contract = Contract.new
    @service = Service.find(params[:service_id])
  end

  def create
    @service = Service.find(params[:service_id])

    @contract = @service.contracts.build(contract_params)
    @contract.user = current_user

    if @contract.save
      flash[:success] = "Contract was created successfully"
      redirect_to consumer_contracts_path
    else
      render 'services/show'
    end
  end

  def update
    @contract = Contract.find(params[:id])

    @contract.update(confirmed: true)
    flash[:success] = "Contract was successfully updated"
    redirect_to contract_path(@contract)
  end

  private

  def contract_params
    params.require(:contract).permit(:start_date, :end_date)
  end

end

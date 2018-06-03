class LoansController < ApplicationController
  def index
    @l = Loan.order(params[:sort]).paginate(per_page: 6, page: params[:page])
  if params[:sort].nil?
    @sort = "created_at"
  else
    @sort = params[:sort]
  end
  end
  def new
    @loan = Loan.new
  end
  def show
    @f = Loan.find(params[:id])
  
  end
  def create
    @loan = Loan.create(user_id: params[:loan][:user_id], sum: params[:loan][:sum], term: params[:loan][:term], interest: params[:loan][:interest])
    if @loan.errors.empty?
      redirect_to loan_path(@loan)
    else
      render "new"

    end
  end
end

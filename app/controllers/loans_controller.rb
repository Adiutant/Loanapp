class LoansController < ApplicationController
  def index
    @l = Loan.paginate(per_page: 2, page: params[:page])
  end
  def new
    @loan = Loan.new
  end
  def show
  end
  def create
    @loan = Loan.create(giver: params[:loan][:giver], sum: params[:loan][:sum], term: params[:loan][:term], interest: params[:loan][:interest])
    if @loan.errors.empty?
      redirect_to loan_path(@loan)
    else
      render "new"
    end
end
  end

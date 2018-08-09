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
    @percent = @f.sum*@f.interest/100*(@f.term.to_i - @f.begining.to_i).to_i
  end

  def create
    @loan = Loan.create(loan_params)
    if @loan.errors.empty?
      redirect_to loan_path(@loan)
    else
      render "new"
    end
  end

  private
  def loan_params
    params.require(:loan).permit(:PassTakenTimeC, :PassTakenTimeG, :BirthODG, :BirthODC, :RegistredAtG, :RegistredAtC, :SerialG, :SerialC, :PassTakenG, :PassTakenC, :punishment, :giver, :notice, :begining, :email, :sum, :term, :interest, :creditor)
  end
end

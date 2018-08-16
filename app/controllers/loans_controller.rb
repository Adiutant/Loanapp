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
    @loan = Loan.create(PassTakenTimeC: params[:loan][:PassTakenTimeC],PassTakenTimeG: params[:loan][:PassTakenTimeG],BirthODG: params[:loan][:BirthODG],BirthODC: params[:loan][:BirthODC],RegistredAtG: params[:loan][:RegistredAtG], RegistredAtC: params[:loan][:RegistredAtC],SerialG: params[:loan][:SerialG],SerialC: params[:loan][:SerialC],PassTakenG: params[:loan][:PassTakenG],PassTakenC: params[:loan][:PassTakenC],punishment: params[:loan][:punishment],giver: params[:loan][:giver],notice: params[:loan][:notice],begining: params[:loan][:begining],email: params[:loan][:email], sum: params[:loan][:sum], term: params[:loan][:term], interest: params[:loan][:interest],creditor: params[:loan][:creditor])
   #send email
   LoanMailer.loan_info(@loan).deliver
    if @loan.errors.empty?
      redirect_to loan_path(@loan)
    else
      render "new"

    end
  end
end

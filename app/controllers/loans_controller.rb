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
    respond_to do |format|
     format.html
      format.pdf do
        pdf = PDF::Writer.new
        pdf.text @f.giver

        send_data pdf.render.to_s, :filename => 'loans.pdf', :type => 'application/pdf', :disposition => 'inline' 
  end
 end
end
  def create
    @loan = Loan.create(punishment: params[:loan][:punishment],giver: params[:loan][:giver],notice: params[:loan][:notice],begining: params[:loan][:begining],email: params[:loan][:email], sum: params[:loan][:sum], term: params[:loan][:term], interest: params[:loan][:interest],creditor: params[:loan][:creditor],cpd: params[:loan][:cpd],gpd: params[:loan][:gpd])
    if @loan.errors.empty?
      redirect_to loan_path(@loan)
    else
      render "new"

    end
  end
end

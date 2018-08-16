# Preview all emails at http://localhost:3000/rails/mailers/loan_mailer
class LoanMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/loan_mailer/loan_info
  def loan_info
    LoanMailer.loan_info
  end

end

class LoanMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.loan_mailer.loan_info.subject
  #
  def loan_info(loan)
    @greeting = "Hi"
@loan = loan
    mail to: loan.email, subject: "Расписка в получении денежных средств."
  end
end

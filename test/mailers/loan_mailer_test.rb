require 'test_helper'

class LoanMailerTest < ActionMailer::TestCase
  test "loan_info" do
    mail = LoanMailer.loan_info
    assert_equal "Loan info", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

require 'test_helper'

class AccountsTest < ActionMailer::TestCase
  test "signup_mail" do
    mail = Accounts.signup_mail
    assert_equal "Signup mail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "forgot_password_mail" do
    mail = Accounts.forgot_password_mail
    assert_equal "Forgot password mail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "disabled_mail" do
    mail = Accounts.disabled_mail
    assert_equal "Disabled mail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

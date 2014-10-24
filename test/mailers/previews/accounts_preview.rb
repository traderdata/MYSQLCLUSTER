# Preview all emails at http://localhost:3000/rails/mailers/accounts
class AccountsPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/accounts/signup_mail
  def signup_mail
    Accounts.signup_mail
  end

  # Preview this email at http://localhost:3000/rails/mailers/accounts/forgot_password_mail
  def forgot_password_mail
    Accounts.forgot_password_mail
  end

  # Preview this email at http://localhost:3000/rails/mailers/accounts/disabled_mail
  def disabled_mail
    Accounts.disabled_mail
  end

end

class Accounts < ActionMailer::Base
  default from: "support@mysqlcluster.org"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.accounts.signup_mail.subject
  #
  def signup_mail(@account)
    account = @account
    @greeting = "Hi " + account.name

    mail to: account.email, subject: t('account.signup_mail.subject')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.accounts.forgot_password_mail.subject
  #
  def forgot_password_mail
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.accounts.disabled_mail.subject
  #
  def disabled_mail
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end

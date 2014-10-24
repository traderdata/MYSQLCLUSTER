class Account < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  before_save { self.email = email.downcase }
  validates :name,presence:true, length:{maximum: 50,minimum: 3}
  validates :company,presence:true, length:{maximum: 50,minimum: 3}
  validates :email, presence:true, length:{maximum: 200,minimum: 10}, uniqueness: {case_sensitive: false},
            format: { with: VALID_EMAIL_REGEX }
  validates :password, length:{maximum: 20,minimum: 6}
  has_secure_password
  validates :terms_of_service, acceptance: { accept: true }

end

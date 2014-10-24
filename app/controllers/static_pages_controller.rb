class StaticPagesController < ApplicationController
  def home
  end

  def signup
    @account = Account.new
  end

  def success_signup
  end
end

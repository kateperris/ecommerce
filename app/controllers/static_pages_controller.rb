class StaticPagesController < ApplicationController
  def index
    @products = Product.limit(3)
  end

  def landing_page
  	@products = Product.limit(3)
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(:from => @email,
      :to => 'kateperrisuk@gmail.com',
      :subject => "A new contact form message from #{@name}",
      :body => @message).deliver
  end

end

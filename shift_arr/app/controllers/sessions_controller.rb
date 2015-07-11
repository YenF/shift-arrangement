class SessionsController < ApplicationController
  def new
  end

  def create
  	if params[:session][:password]=="Guest" || params[:session][:password]=="0937223985"
  		session[:user_id] = params[:session]
  		@people = Person.order(:pid)
  		redirect_to '/people', method: :get
  	else
  		flash.now[:danger] = 'Wrong Password!'
  		redirect_to root_url
  	end
  end

  def destroy
  	session.delete(:user_id)
  	redirect_to root_url
  end
end

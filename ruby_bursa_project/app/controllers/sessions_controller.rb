class SessionsController < ApplicationController
	def new		
	end

	def create
		user = User.find_by_email(params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to root_url, notice: "Добро пожаловать, #{user.email}!"
		else
			flash[:error] = "Не правильный Email или пароль"
			render 'new'
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url
	end
end

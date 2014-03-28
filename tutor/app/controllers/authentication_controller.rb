class AuthenticationController < ActionController::Base
	def new_user
  		@user = User.new
	end

	def register
  		@user = User.new(params[:user])

  		if @user.valid?
    		@user.save
    		UserMailer.welcome_email(@user).deliver
    		session[:user_id] = @user.id
    		flash[:notice] = 'Welcome.'
    		redirect_to :root
  		else
    		render :action => "new_user"
  	end
end
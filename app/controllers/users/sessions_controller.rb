class Users::SessionsController < Devise::SessionsController
  before_filter :authenticate_user!
# before_filter :configure_sign_in_params, only: [:create]
  def profile
    if user_signed_in?
      @user = current_user
    else
      redirect_to new_user_session_path, :notice => 'Sorry you must be logged in to view your profile.'
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end
end

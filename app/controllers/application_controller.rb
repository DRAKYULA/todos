class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate
    if !signed_in?
      redirect_to new_session_path
    end
  end

  def signed_in?
    current_email.present?
  end

  def current_email
    session[:current_email]
  end

  def sign_in_as(email)
    session[:current_email] = email
  end
end

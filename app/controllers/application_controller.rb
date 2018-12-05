class ApplicationController < ActionController::API
  before_action :authorized

  def jwt_key
    Rails.application.credentials.jwt[:key]
  end

  def encode_token(payload)
    JWT.encode(payload, jwt_key)
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    JWT.decode(auth_header, jwt_key)
  end

  def current_user_nao
    # byebug
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!current_user_nao
  end

  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end


end

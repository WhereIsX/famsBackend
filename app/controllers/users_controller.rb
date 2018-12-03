class UsersController < ApplicationController

  def create

    user = User.create(user_params)
    byebug
    if user.valid?
      render json: {id: user.id, username: user.username}
    else
      render json: user.errors.full_messages, status: 422
    end

  end


  # def create
  #    @user = User.create(user_params)
  #    byebug
  #
  #    if @user.valid?
  #      render json: {id: @user.id, username: @user.username}
  #    else
  #      render json: {error: "WRONG"}, status: 422
  #    end
  #  end



  def update
    render json: User.update(params[:id], user_params)
  end

  def destroy
    render json: User.destroy(params[:id])
  end



  private

  def user_params
    params.require(:user).permit(:name, :password, :name)
  end


  # if json.stringify is still sending in the above as a stringed object "{}"
  # then the frontend can instead send the username, password, and name
  # unwrapped.
  # In that case, COMMENT IN the below code.

  # def user_params
  #   params.permit(:username, :password, :name)
  # end

end

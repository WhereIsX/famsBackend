class MediaController < ApplicationController

  def create

    medium = Medium.create(medium_params)
    if medium.valid?
      render json: medium
    else
      render json: medium.errors.full_messages
    end

  end

  def update
    medium = Medium.update(params[:id], medium_params)
    if medium.valid?
      render json: medium
    else
      render json: medium.errors.full_messages
    end
  end

  def destroy
    medium = Medium.destroy(params[:id])
    render json: medium
  end

  private

  def medium_params
    params.permit(:user_id, :group_id, :title, :image)
  end

end

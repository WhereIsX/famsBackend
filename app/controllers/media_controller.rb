class MediaController < ApplicationController

  def create
    medium = Medium.create(medium_params)
    render json: medium
  end

  def update
    if Medium.find(params[:id]).update(medium_params)
      render json: (Medium.find(params[:id]))
    end
  end

  def destroy
    medium = Medium.destroy(params[:id])
    render json: medium
  end

  private

  def medium_params
    params.permit(:user_id, :group_id, :content)
  end

end

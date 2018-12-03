class GroupsController < ApplicationController

  def index
    render json: Group.all
  end

  def show
    render json: Group.find(params[:id])
  end

  def create

    group = Group.create(group_params)
    if group.valid?
      render json: group
    else
      render json: group.errors.full_messages
    end

  end

  def update
    render json: Group.update(params[:id], group_params)
  end

  def destroy
    render json: Group.destroy(params[:id])
  end

  private

  def group_params
    params.permit(:name)
  end

end

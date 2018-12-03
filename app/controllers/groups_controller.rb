class GroupsController < ApplicationController

  def index
    render json: Group.all
  end

  def show
    render json: Group.find(params[:id])
  end

  def create

    group = Group.new(group_params)

    if group.save
      render json: group
    else
      render json: group.errors.full_messages
    end

  end

  def update
    if Group.find(params[:id]).update(group_params)
      render json: (Group.find(params[:id]))
    end
  end

  def destroy
    group = Group.destroy(params[:id])
    render json: group
  end

  private

  def group_params
    params.permit(:name)
  end

end

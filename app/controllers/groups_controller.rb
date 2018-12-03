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
      Member.create(group_id: group.id, user_id: user.id, authority: 1)
      render json: group
    else
      render json: group.errors.full_messages
    end

  end

  def update
    group = Group.update(params[:id], group_params)
    if group.valid?
      render json: group
    else
      render json: group.errors.full_messages
    end
  end

  def destroy
    render json: Group.destroy(params[:id])
  end

  private

  def group_params
    params.permit(:name)
  end

end

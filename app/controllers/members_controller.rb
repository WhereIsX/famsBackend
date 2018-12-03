class MembersController < ApplicationController

  def index
    render json: Member.all
  end

  def show
    render json: Member.find(params[:id])
  end

  def create

    member = Member.new(member_params)
    if member.save
      render json: member
    else
      render json: member.errors.full_messages
    end

  end

  def update
    render json: Member.update(params[:id], member_params)
  end

  def destroy
    render json: Member.destroy(params[:id])
  end

  private

  def member_params
    params.permit(:name)
  end



end

class GroupsController < ApplicationController

  def index
    @group = Group.all
    render json: @group
  end

  def create
    @group = Group.create(name: params[:name])
    render json: @group
  end

  def update
    @group = Group.find(params[:id])
    @group.update_attributes(name: params[:name])
    render json: @group
  end

  def destroy
    @group = Group.find(params[:id])
    if @group.destroy
      head :no_content, status: :ok
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end
end

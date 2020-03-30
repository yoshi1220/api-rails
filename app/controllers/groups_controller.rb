class GroupsController < ApplicationController

  def index
    @group = Group.all
    render json: @group
  end

  def create
    @group = Group.new(name: params[:name])
    if @group.save
      render json: @group
    else
      render json: @group.errors, status: :unprocessable_entity
    end
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

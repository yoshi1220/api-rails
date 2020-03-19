class BoardsController < ApplicationController
  def index
    @board = Board.all
    render json: @board
  end

  def find
    @board = Board.where(group_id: params[:group_id])
    render json: @board
  end

  def create
    @board = Board.create(
      group_id: params[:group_id],
      title: params[:title],
      name: params[:name],
      email: params[:email],
      content: params[:content],
      complete: params[:complete]
    )
    render json: @board
  end

  def update
    @board = Board.find(params[:id])
    @board.update_attributes(complete: params[:complete])
    render json: @board
  end

end

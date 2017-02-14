class BoardController < ApplicationController
  def index
  end

  def create
    board = Board.new
    board.title = params[:title]
    board.content = params[:content]
    board.company_id = params[:company_id].to_i
    board.user_id = current_user.id
    board.star = params[:rating]
    board.save
    
    redirect_to cp_path(params[:company_id])
  end

  def new
    if user_signed_in?
      
    else
      redirect_to new_user_session_path
    end
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end

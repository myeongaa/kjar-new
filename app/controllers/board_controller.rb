class BoardController < ApplicationController
  def index
  end

  def create
    board = Board.new(title: params[:title], content: params[:content], company_id: params[:company_id].to_i, user_id: current_user.id, star: params[:rating])
    uploader = KjarUploader.new
    file = params[:pic]
    uploader.store!(file)
    board.image_url = uploader.url
    if board.save
      redirect_to cp_path(params[:cp_id])
    else
      render :text => board.errors.messages
    end
  end

  def new
    @board = Board.new
    if user_signed_in?
      
    else
      redirect_to new_user_session_path
    end
  end

  def edit
  end

  def show
    @board = Board.find(params[:id])
  end

  def update
  end

  def destroy
  end
end

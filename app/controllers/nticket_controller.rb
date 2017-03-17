class NticketController < ApplicationController
  def index
    # nticket_indexs는 업체 관리 페이지로 사용할 것
    
    @ntickets = Nticket.where(:company_id => params[:cp_id])
    
  end

  def create
    nticket = Nticket.new
    if params[:user_name] == nil
      nticket.user_id = current_user.id
    end
    nticket.company_id = params[:cp_id]
    unless params[:user_name] == nil
      nticket.user_name = params[:user_name]
      nticket.user_phone = params[:user_phone]
    end
    @nticket_max = Company.find(params[:cp_id]).nticket_max
    
    nticket.ticketnumber = @nticket_max
    nticket.save
    
    company = Company.find(params[:cp_id])
    company.nticket_max += 1
    company.save
    
    redirect_to cp_path(params[:cp_id])
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
    
    Nticket.find(params[:id]).destroy
    
    redirect_to cp_nticket_index_path(params[:cp_id])
  end
end

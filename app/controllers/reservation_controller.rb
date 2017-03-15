class ReservationController < ApplicationController
  def index
    @reservations = Reservation.where(:company_id => params[:cp_id])
  end

  def create
    @reservation = Reservation.create(user_id: current_user.id.to_i, company_id: params[:cp_id].to_i, :reserve_time =>params[:reserve_time],
                    :reserve_date => params[:reserve_date], :requestmenu => params[:requestmenu], :person_num => params[:person_num])
   
    redirect_to cp_path(params[:cp_id])
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
    
    @reservation = Reservation.find(params[:id])
    @company = Company.find(@reservation.company_id)
  end

  def update
  end

  def destroy
  end
  
  def confirm
    @comment = params[:comment]
    @reservation = Reservation.find(params[:id])
    @reservation.comment = @comment
    @reservation.confirm_num = 2
    @reservation.save
    
    redirect_to cp_reservation_index_path(params[:cp_id],params[:id])
    
  end
  
  def reject
    @comment = params[:comment]
    @reservation = Reservation.find(params[:id])
    @reservation.comment = @comment
    @reservation.confirm_num = 3
    @reservation.save
    
    redirect_to cp_reservation_index_path(params[:cp_id])
    
  end
end

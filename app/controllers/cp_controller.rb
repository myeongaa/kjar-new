class CpController < ApplicationController
  def index
    @companies = Company.all
  end

  def create
    company = Company.new
    company.name = params[:name]
    company.c_postcode = params[:c_postcode]
    company.c_address = params[:c_address]
    company.c_daddress = params[:c_daddress]
    company.tel = params[:tel]
    company.opentime = params[:opentime]
    company.closetime = params[:closetime]
    company.runtime = params[:runtime].to_i * 60
    company.csort_id = params[:csort_id]
    company.save
    
    redirect_to cp_index_path
  end

  def new
    @csorts = Csort.all
  end

  def edit
    @company = Company.find_by_id(params[:id])
  end

  def show
    @company = Company.find_by_id(params[:id])
    
    @boards = Board.where(:company_id => params[:id]).reverse
  end

  def update
    company = Company.find_by_id(params[:id])
    company.name = params[:name]
    company.c_postcode = params[:c_postcode]
    company.c_address = params[:c_address]
    company.c_daddress = params[:c_daddress]
    company.tel = params[:tel]
    company.opentime = params[:opentime]
    company.closetime = params[:closetime]
    company.runtime = params[:runtime].to_i * 60
    company.save
    
    redirect_to cp_index_path
  end

  def destroy
    Company.find_by_id(params[:id]).destroy
    
    redirect_to cp_index_path
  end
end

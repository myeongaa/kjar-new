class SortController < ApplicationController
  def index
    @csorts = Csort.all
  end

  def create
    csort = Csort.new
    csort.name = params[:name]
    csort.save
    
    redirect_to sort_index_path
  end

  def new
  end

  def edit
    @csort = Csort.find_by_id(params[:id])
  end

  def show
    @csort = Csort.find_by_id(params[:id])
  end

  def update
    csort = Csort.find_by_id(params[:id])
    csort.name = params[:name]
    csort.save
    
    redirect_to sort_index_path
  end

  def destroy
    
    @company = Company.all
    @company.each do |c| 
      if c.csort_id == params[:id].to_i
          Company.find_by_id(c.id).destroy
      end
    end
    Csort.find_by_id(params[:id]).destroy
    redirect_to sort_index_path
  end
end

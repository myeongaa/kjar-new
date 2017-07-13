class HomeController < ApplicationController
  def index
    @sorts = Csort.all
  end
  
  def search
    @lat = params[:latitude]
    @lng = params[:longitude]
    @c_name = params[:c_name]
    companies = Company.where("name LIKE ?","%#{@c_name}%")
    distance_hash(@lat, @lng, *companies)
    
    @companies_hash = @companies_hash.sort_by {|name,companies_d| companies_d }
  end
  
  def sort_p
    @companies = Company.where(:csort_id => params[:id])
    
  end
  
  def sort_p_d
    companies = Company.where(:csort_id => params[:id])
    @lat = params[:latitude]
    @lng = params[:longitude]
    
    distance_hash(@lat, @lng, *companies)
    
    @companies_hash = @companies_hash.sort_by {|name,companies_d| companies_d }
  end
  
  def mypage
    @user = User.find(params[:id])
    
    @reservations = @user.reservations
    @ntickets = @user.ntickets
    
    
    
  end
  
  private
  def distance_hash(latitude,longitude,*companies)
    @lat = latitude
    @lng = longitude
    @companies = *companies
    @companies_hash  = Hash.new
    @companies_d ||= []
    @companies_a ||= []
    @rad_per_deg = Math::PI / 180
    @rm = 6371000 
    @companies.each do |c| 
      @lat1_rad, @lat2_rad = c.com_lat.to_f * @rad_per_deg, @lat.to_f * @rad_per_deg 
      @lon1_rad, @lon2_rad = c.com_lng.to_f * @rad_per_deg,@lng.to_f  * @rad_per_deg
      @a = Math.sin((@lat2_rad - @lat1_rad) / 2) ** 2 + Math.cos(@lat1_rad) * Math.cos(@lat2_rad) * Math.sin((@lon2_rad - @lon1_rad) / 2) ** 2 
      @c = 2 * Math::atan2(Math::sqrt(@a), Math::sqrt(1 - @a))

      @companies_hash[:"#{c.name}"] = (@rm * @c).to_i
    end
    
    return @companies_hash
    
  end
  
  
end

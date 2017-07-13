require 'json'
class AndroidrequestController < ApplicationController
    def login_request
        print("로그인 요청")
          
        @email = params[:email] # 넘어온 데이터를 받는다
        @pw = params[:pw]
        
          
        @user = User.find_by_email(@email) # db를 조회한다
        # 여기서 User는 제 프로그램의 사용자 데이터를 가진 모델입니다.
    
        if @user != nil # 조회된 데이터가 있으면
            @passwrod_check = @user.valid_password?(@pw) # 맞는 패스워드인지 확인
            if @passwrod_check == true # 맞다면
               render json: @user #해당 데이터를 json으로 출력    
            else
               render json: "null", status: :forbidden
                 # 아니라면 null 출력
            end
        else
            render json: "null", status: :forbidden # 아이디가 존재하지 않는다면 null 출력
        end
    end
    
    def sort_request
        print("분류 업체 요청");
        @id = params[:id]
        
        @sorts = Company.where(:csort_id => @id)
        if @sorts != nil
            render json: @sorts #해당 데이터를 json으로 출력    
        else
           render json: "null", status: :forbidden
             # 아니라면 null 출력
        end
            
    end
    
    def company_request
        print("업체 페이지 요청");
        
        @name = params[:name]
        
        @company = Company.find_by_name(@name)
        
        if @company != nil
            render json: @company #해당 데이터를 json으로 출력    
        else
           render json: "null", status: :forbidden
             # 아니라면 null 출력
        end   
            
    end
    
    def nticket_request
        print("번호표 요청");
        
        @user_id = params[:user_id]
        @company_id = params[:company_id]
        
        nticket = Nticket.new
        nticket.user_id = @user_id
        nticket.company_id = @company_id
        
        @nticket_max = Company.find(@company_id).nticket_max
    
        nticket.ticketnumber = @nticket_max
        nticket.save
        
        company = Company.find(@company_id)
        company.nticket_max += 1
        company.save
        
        @nticket = Nticket.where(:user_id => @user_id, :company_id => @company_id)[0]
        if @nticket != nil
            render json: @nticket #해당 데이터를 json으로 출력    
        else
           render json: "null", status: :forbidden
             # 아니라면 null 출력
        end
        
    end
    
    def reserve_request
            reserve = Reservation.new
            reserve.user_id = params[:user_id]
            reserve.company_id = params[:company_id]
            reserve.reserve_time = params[:reserve_time]
            reserve.reserve_date = params[:reserve_date]
            reserve.requestmenu = params[:requestmenu]
            reserve.person_num = params[:person_num]
            reserve.save
            
            @reserve = Reservation.where(:user_id => params[:user_id], :company_id => params[:company_id])
            
            if @reserve != nil
               render json: @reserve
            else
                render json: "null", status: :forbidden
            end
    end
    
    def mypage_nticket_request
        @ntickets = Nticket.where(:user_id => params[:user_id])

        @nticket_arr = Array.new
        
        @ntickets.each do |n|
            @mypage_nticket = Hash.new
            @mypage_nticket["company_name"] = n.company.name
            @mypage_nticket["company_info"] = n
            @nticket_arr << @mypage_nticket
            
        end
        if @ntickets != nil
               render :json => @nticket_arr
        else
                render json: "null", status: :forbidden
        end
    end
    
    def mypage_reverse_request
        @reserves = Reservation.where(:user_id => params[:user_id])
        
        @reserve_arr = Array.new
        
        @reserves.each do |r|
            @mypage_reserve = Hash.new
            @mypage_reserve["company_name"] = r.company.name
            @mypage_reserve["company_info"] = r
            @reserve_arr << @mypage_reserve
        end 
        
        if @reserves != nil
            render :json => @reserve_arr
        else 
            render json: "null", status: :forbidden
        end
    end
    
    def nfc_request
        @company_name = params[:name]
        @user_id = params[:user_id]
        
        @company_id = Company.find_by_name(@company_name).id
        
        @nfcs = Nticket.where(:company_id =>@company_id,:user_id => @user_id)
        if @nfcs != nil
            render :json => @nfcs
        else 
            render json: "null", status: :forbidden
        end
    end
    
    def nfcdel_request
        @nticket_id = params[:nticket_id]
        
        if Nticket.find(@nticket_id).destroy
            render json: "success"
        else
            render json: "null"
        end
    end
        
end

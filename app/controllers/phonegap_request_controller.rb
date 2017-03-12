require 'json'
class PhonegapRequestController < ApplicationController
    def login_request
         print("로그인 요청")
          
          @email = params[:email] # 넘어온 데이터를 받는다
          @pw = params[:password]
          
          
          @user = User.find_by_email(@email) # db를 조회한다
          # 여기서 User는 제 프로그램의 사용자 데이터를 가진 모델입니다.
    
          if @user !=nil # 조회된 데이터가 있으면
             @passwrod_check = @user.valid_password?(@pw) # 맞는 패스워드인지 확인
             if @passwrod_check == true # 맞다면
               render json: @user #해당 데이터를 json으로 출력    
            else
                render 'null' # 아니라면 null 출력
            end
          else
            render 'null' # 아이디가 존재하지 않는다면 null 출력
          end 
    end
    def sort_request
        print("sort페이지요청")
        @sort_id = params[:sort_id]
        @sort = Csort.find_by_id(@sort_id)  #회사조회
        
        if @sort != nil 
            @company = Company.where(:csort_id => @sort_id)
           render json: @company
        else 
            render 'null'
        end
    end
end

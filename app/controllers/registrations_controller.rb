class RegistrationsController < Devise::RegistrationsController
    private
    def sign_up_params
      params.require(:user).permit(:email, :password, :password_confirmation, :name, :phone)
    end

    def account_update_params
        params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :name, :phone)
    end
end

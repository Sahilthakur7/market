class RegistrationsController < Devise::RegistrationsController

    private

    def sign_up_params
        params.require(:agent).permit(:name,:email,:password,:password_confirmation)
    end
end

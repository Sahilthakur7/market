class Registration2Controller < Devise::RegistrationsController
    private

    def sign_up_params
        params.require(:clubrep).permit(:name,:email,:password,:password_confirmation)
    end
end

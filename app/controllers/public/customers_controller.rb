class Public::CustomersController < ApplicationController
    before_action :ensure_guest_customer, only: [:edit]
    
    def index
    end
    
    def show
    end
    
    def edit
    end
    
    private
    
    def ensure_guest_customer
        @customer =Customer.find(params[:id])
        if @customer.name == "guestuser"
            redirect_to public_customer_path(current_customer), notice:'ゲストユーザーはプロフィール編集画面へ遷移できません。'
        end
    end
end

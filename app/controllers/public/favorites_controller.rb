class Public::FavoritesController < ApplicationController
    
    def create
        chara = Chara.find(params[:chara_id])
        @favorite = current_customer.favorites.new(chara_id: chara.id)
        @favorite.save
        render 'replace_btn'
    end

    def destroy
        chara = Chara.find(params[:chara_id])
        @favorite = current_customer.favorites.find_by(chara_id: chara.id)
        @favorite.destroy
        render 'replace_btn'
    end
end

class Public::CharasController < ApplicationController
  def index
    @chara = Chara.new
    @charas = Chara.all
    @customer = current_customer
  end

  def show
    @chara = Chara.find(params[:id])
    @chara_comment = CharaComment.new
    @customer = current_customer
  end

  def edit
  end
  
  def create
      @chara = Chara.new(chara_params)
      @chara.customer_id = current_customer.id
    if @chara.save
      flash[:notice] = 'キャラクターの投稿に成功しました！'
      redirect_to public_chara_path(@chara)
    else
      flash[:notice] = '操作が違うのでやり直してください'
      redirect_back(fallback_location: public_charas_path)
    end
  end
  
  def destroy
    @chara = Chara.find(params[:id])
    if @chara.delete_key == params[:key]
      @chara.destroy
      flash[:notice] = 'キャラクターを削除しました'
      redirect_to public_charas_path
    else
      redirect_back(fallback_location: public_chara_path(@chara))
      flash[:notice] = '削除パスワードが違います'
    end
  end
  
  private
  
  def chara_params
    params.require(:chara).permit(:name, :rate, :creation, :delete_key)
  end
  
end

class Public::CharasController < ApplicationController
  def index
    @chara = Chara.new
    @charas = Chara.all
  end

  def show
  end

  def edit
  end
  
  def create
    @chara = Chara.new(chara_params)
    @chara.customer_id = current_customer.id
    @chara.save
    redirect_to public_chara_path(@chara.id)
  end
  
  def destroy
    
  end
  
  private
  
  def chara_params
    params.require(:chara).permit(:name, :rate, :creation)
  end
  
end

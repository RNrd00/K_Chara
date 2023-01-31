class Public::CharaCommentsController < ApplicationController
    
    def create
        chara = Chara.find(params[:chara_id])
        @comment = current_customer.chara_comments.new(chara_comment_params)
        @comment.chara_id = chara.id
        @comment.save
        redirect_to request.referer
    end
    
    def destroy
        @comment = CharaComment.find(params[:id])
        @comment.destroy
        redirect_to request.referer
    end
    
    private
    def chara_comment_params
        params.require(:chara_comment).permit(:comment, :rate)
    end
end

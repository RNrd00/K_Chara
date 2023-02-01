class Public::FreeCommentsController < ApplicationController
    
    def index
        @free_comments = FreeComment.all
        @free_comment = FreeComment.new
        @customer = current_customer
    end
    
    def create
        @free_comment = FreeComment.new(free_comment_params)
        @free_comment.customer_id = current_customer.id
        @free_comment.save
    end
    
    def destroy
        @comment.destroy
    end
    
    private
    def free_comment_params
        params.require(:free_comment).permit(:comment)
    end
end

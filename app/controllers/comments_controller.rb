class CommentsController < ApplicationController
    
    def create
       @post=Post.find(params[:id])
       @comment=@post.comments.new(comment_params)
       @comment.save
       @comments=Comment.all.reverse    
        
    end
    
    def destroy
      @post = Post.find(params[:post_id])
      @comment=@post.comments.find(params[:id])
      @comment.destroy
      
      redirect_to post_path(@post)
    end
    
    private
    
    def comment_params
        params.permit(:name, :body)
    end
end

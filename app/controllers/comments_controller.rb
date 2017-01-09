class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params)
    @blog = @comment.blog

    respond_to do |format|
      if @comment.save
        format.html { redirect_to blog_path(@blog), notice: 'コメントを投稿しました。' }
        format.js   { render :index }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprossable_entily }
      end
    end
  end

  def destroy
    @comment = Comments.find(params[:id])
    @comment.destroy
    render js: { status: 'delete', data: @comment }
  end

  private
    def comment_params
      params.require(:comment).permit(:blog_id, :content)
    end
end

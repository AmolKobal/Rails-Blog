class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_parms)

        redirect_to article_path(@article)
    end

    private
    def comment_parms
        params.require(:comment).permit(:commenter, :body)
    end
end

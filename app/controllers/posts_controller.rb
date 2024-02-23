class PostsController < ApplicationController
    def index
        @history = Post.all
    end

    def new
		@course = Course.order(updated_at: :desc).limit(1)
		@courses = Course.all
        @history = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.userid = current_user.id
        @post.save
        redirect_to :action => "index"
        # if post.save
        #     redirect_to :action => "index"
        # else
        #     redirect_to :action => "new"
        # end
    end

    private
    def post_params
        params.require(:post).permit(:history)
    end
end
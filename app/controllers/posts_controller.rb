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
        post = Post.new(post_params)
        if post.save
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
        end
    end

    private
    def post_params
        params.require(:post).permit(:history).merge(user_id: current_user.id)
    end
end

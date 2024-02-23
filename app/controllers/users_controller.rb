class UsersController < ApplicationController
    # def index  #追加
    # end  #追加

    before_action :authenticate_user!, only: [:mypage]
    before_action :set_user, only: [:show]

    def mypage
      redirect_to user_path(current_user)
    end

    def show
      # @history = Post.find(params[:id])
      @history = Post.all
    end

    private

      def set_user
        @user = User.find(params[:id])
      end

      def users_params
        params.require(:user).permit(:name)
      end
end

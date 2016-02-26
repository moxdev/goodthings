class MicropostsController < ApplicationController
    before_action :authenticate_user!, only: [:index, :create, :destroy]

    def index
        @micropost = Micropost.paginate(page: params[:page])
        @createpost = current_user.microposts.build
        if @createpost.save
            flash[:success] = "Post successfully created!"
            redirect_to profile_path
        else
            flash[:error] = "Post was not created!"

        end
    end

    def new
        @createpost = current_user.microposts.build
        if @createpost.save
            flash[:success] = "Post successfully created!"
            redirect_to profile_path
        else
            flash[:error] = "Post was not created!"
            redirect_to profile_path

        end
        new_micropost_path

    end

    def create
        @createpost = current_user.microposts.build
        if @createpost.save
            flash[:success] = "Post successfully created!"
            redirect_to profile_path
        else
            flash[:error] = "Post was not created!"

        end

    end

    def destroy
    end

    private

    # def micropost_params
    #   params.require(:micropost).permit(:content)
    # end

end

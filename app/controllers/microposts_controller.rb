class MicropostsController < ApplicationController
    before_action :authenticate_user!, only: [:index, :create, :destroy]

    def index
        @micropost = Micropost.paginate(page: params[:page])
    end

    def create
        @createpost = current_user.microposts.build(micropost_params)
        if @createpost.save
            flash[:success] = "Post successfully created!"
            redirect_to profile_path
        else
            flash[:error] = "Post was not created!"
            render profile_path
        end
    end

    def destroy
    end

    private

    def micropost_params
      params.require(:micropost).permit(:content)
    end

end

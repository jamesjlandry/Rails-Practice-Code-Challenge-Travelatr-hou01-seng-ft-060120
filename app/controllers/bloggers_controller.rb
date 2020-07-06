class BloggersController < ApplicationController
before_action :set_blogger, only: [:show, :edit]
    def index
        @bloggers = Blogger.all
    end

    def new
        @blogger = Blogger.new
        @bloggers = Blogger.all
    end

    def show
        
    end

    def create
        @blogger = Blogger.create(blogger_params)

    end

    def edit

    end

    private

    def blogger_params
        params.require(:blogger).permit(:name, :bio, :age)
    end

    def set_blogger
        @blogger = Blogger.find(params[:id])
    end
end
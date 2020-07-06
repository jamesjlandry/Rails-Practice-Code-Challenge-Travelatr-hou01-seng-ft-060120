class PostsController < ApplicationController
    
    before_action :set_post, only: [:show, :edit, :like]
        def index
            @posts = Post.all
        end

       def like
        @post.likes +=1
        @post.save
        redirect_to @post
       end
    
        def new
            @post = Post.new
            @bloggers = Blogger.all
            @destinations = Destination.all

        end
    
        def show
            
        end
    
        def create
            @post = Post.new(post_params)
            @post.likes = 0
            @post.save

            redirect_to @post
        end
    
        def edit
            
        end
    
        private
    
        def post_params
            params.require(:post).permit(:name, :title, :blogger_id, :destination_id, :content)
        end
    
        def set_post
            @post = Post.find(params[:id])
        end
    end
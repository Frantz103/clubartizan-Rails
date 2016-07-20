class PostsController < ApplicationController
    
    
    before_filter :authenticate_user!, except: [:index, :show]
    before_action :set_post, only: [ :show, :edit, :update, :destroy]
    before_action :owned_post, only: [:edit, :update, :destroy] 
    
    def index
        @posts = Post.all
    end
    
    def show
         @post = Post.find(params[:id])
    end
    
    def new
     # @post = Post.new
        @post = current_user.posts.build
    end
    
    def edit
    end
    
    def create
       
    # @post = Post.new(post_params)
       @post = current_user.posts.build(post_params)
        
        respond_to do |format|
            if @post.save
                format.html { redirect_to @post,  notice: 'Your post have been upload'}
                format.json { render :show, status: :created, location: @post }
                else
                format.html { render :new }
                format.json { render json: @post.errors, status: :unprocessable_entity }
            end
        end
    end
    
    def update
        respond_to do |format|
            if @post.update(listing_params)
                format.html { redirect_to @post, notice: 'Your post was successfully updated.' }
                format.json { render :show, status: :ok, location: @post }
                else
                format.html { render :edit }
                format.json { render json: @post.errors, status: :unprocessable_entity }
            end
        end
    end
    
    def destroy
        @listing.destroy
        respond_to do |format|
            format.html { redirect_to posts_url, notice: 'Your listing was successfully deleted.' }
            format.json { head :no_content }
        end
        
    end
    
    private
    
    def set_post
        @post = Post.find(params[:id])
        
    end
    
    def post_params
        params.require(:post).permit(:image, :caption)
    end
    
    def owned_post
        unless current_user == @post.user
            flash[:alert] = "That post doesn't belong to you!"
            redirect_to root_path
        end
    end

    
end

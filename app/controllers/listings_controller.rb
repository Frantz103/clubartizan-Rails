class ListingsController < ApplicationController
    
  
  
    before_filter :authenticate_user!, except: [:index, :show]
    before_action :set_listing, only: [ :show, :edit, :update, :destroy]
        
    def index
        @listings = Listing.all
    end
    
    def show
         @listing = Listing.find(params[:id])
    end
    
    def new
        @listing = Listing.new
    end
    
    def edit
    end
    
    def create
        @listing = Listing.new(listing_params)
       
       respond_to do |format|
           if @listing.save
               format.html { redirect_to @listing,  notice: 'Your listing have been upload'}
               format.json { render :show, status: :created, location: @listing }
            else
            format.html { render :new }
            format.json { render json: @listing.errors, status: :unprocessable_entity }
            end
           end
    end
    
    def update
        respond_to do |format|
        if @listing.update(listing_params)
            format.html { redirect_to @listing, notice: 'Your listing was successfully updated.' }
            format.json { render :show, status: :ok, location: @listing }
            else
            format.html { render :edit }
            format.json { render json: @gallery.errors, status: :unprocessable_entity }
        end
        end
    end
    
    def destroy
        @listing.destroy
        respond_to do |format|
            format.html { redirect_to listings_url, notice: 'Your listing was successfully deleted.' }
            format.json { head :no_content }
        end
        
    end
    
    private
    
    def set_listing
        @listing = Listing.find(params[:id])
        
    end
    
    def listing_params
        params.require(:listing).permit(:image, :caption)
    end
    
    def owned_listing
        unless current_user == @post.user
            flash[:alert] = "This listing doesn't belong to you!"
            redirect_to root_path
        end
    end
    
end

class PagesController < ApplicationController
    
    def home
    end
    
    def about
    end
    
    def help
    end
    
    def ourstories
    end
    
    def signin
        
    end
    
    def media
    end
    
    def register
        
    end

    def crafts
    end

    def support
    end
    
    def browse
         @posts = Post.all.order("created_at DESC")
        if params[:search]
            @posts = Post.search(params[:search]).order("created_at DESC")
            
          
        end
        
    end


end

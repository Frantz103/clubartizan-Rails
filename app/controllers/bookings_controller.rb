class BookingsController < ApplicationController

    before_filter :authenticate_user!, except: [:index, :show]
    
    def index
        
        @bookings = Booking.all.order("Created_at DESC")
    
    end
    
    
    def show
        
        @booking = Booking.find(params[:id])
        
    end
    
    
    def new
     @booking = current_user.bookings.build
    end
    
    
    def create
     @booking = current_user.bookings.build(booking_params)

     respond_to do |format|
        if @booking.save
        format.html {redirect_to @booking, notice: "Your booking have been create"}
       else
        format.html { render :new }
       end
      end 
    end
    
    
    def edit
        
    end
    
    
    def update
       respond_to do |format|
          if @booking.update(booking_params)
             format.html{ redirect_to @booking, notice: "Your booking have been update"}
             else
             format.html { render :edit }
         end

      end

    end
    
    
    def destroy

        @booking.destroy
        respond_to do |format|
            format.html { redirect_to @bookings, notice: "Your booking have been removed"}
        end
        
    end
    
 private

  def booking_params
   params.require(:booking).permit(:name, :price)
  end

  
    
end

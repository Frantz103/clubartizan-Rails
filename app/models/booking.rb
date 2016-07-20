class Booking < ActiveRecord::Base
     validates :name,   presence: true
     validates  :price, numericality: { greater_than_or_equal_to: 0 }, presence: true
     validates :user_id, presence: true
   
     validates_acceptance_of :terms_of_services, :accept => 'yes'

    
    belongs_to :user
end

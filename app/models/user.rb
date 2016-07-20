class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :confirmable
  
     
         
         has_many :posts, dependent: :destroy
         has_many :listings, dependent: :destroy
         has_many :bookings, dependent: :destroy
         has_many :bookings_sessions, through: :bookings
       
         
         has_attached_file :avatar, styles: { medium: '150x150#' }
         
         
         validates :user_name, presence: true, length: { minimum: 4, maximum: 16 }
         validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
         
         
end

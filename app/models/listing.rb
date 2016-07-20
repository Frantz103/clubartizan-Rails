class Listing < ActiveRecord::Base
    
      validates :image, presence: true
      validates :user_id, presence: true
      
      belongs_to :user
      
      has_attached_file :image, styles: { :small => "200x200#",:medium => "640x" }
      validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
      validates_attachment_size :image, :in => 0.megabytes..5.megabytes
end

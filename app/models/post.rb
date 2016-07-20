class Post < ActiveRecord::Base
     validates :image, presence: true
     validates :user_id, presence: true
     
     belongs_to :user
     
     has_attached_file :image, styles: { :medium => "640x" }
     validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
     validates_attachment_size :image, :in => 0.megabytes..5.megabytes
     
     def self.search(q)
     where("post like ?","%{q}%")
     end
end

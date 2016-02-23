class Staff < ActiveRecord::Base


	validates :name, presence: true  , length: {minimum: 2}
	has_attached_file :profile_picture, :styles => { :medium => "200x200#", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :profile_picture, :content_type => /\Aimage\/.*\Z/
end

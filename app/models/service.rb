class Service < ActiveRecord::Base
	
	belongs_to :category
 	has_attached_file :image,:styles => { :medium => "200x200#", :thumb => "100x100#" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


	validates :name ,		presence: true, length: {minimum: 2}
	validates :price ,		presence: true


	belongs_to :user
end

class Product < ActiveRecord::Base

	belongs_to :category
	has_attached_file :image, :styles => { :medium => "200x200#", :thumb => "100x100#" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	validates :name ,					presence: true
	validates :price, 		 			presence: true, numericality: {greater_than_or_equal_to: 0}

end

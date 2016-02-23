class Service < ActiveRecord::Base



	validates :name ,		presence: true, length: {minimum: 2}
	validates :price ,		presence: true


	belongs_to :user
end

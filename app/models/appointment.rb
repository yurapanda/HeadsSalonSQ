class Appointment < ActiveRecord::Base

	validates :date, presence: true
	validates :time, presence: true

	belongs_to :user
end

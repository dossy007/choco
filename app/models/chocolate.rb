class Chocolate < ApplicationRecord
	validates :name, presence: true
	validates :text, presence: true
end

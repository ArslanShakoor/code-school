class Camp < ApplicationRecord
	belongs_to :user
	# validation of presence of fields
	validates_presence_of :name, :fees, :website, :course, :user_id

	#validation of lengths
	validates_length_of :name, in: 6..40
	validates_length_of :website, in: 10..100
	validates_length_of :course, in: 10..100
	validates_length_of :facebook, in: 6..100
	validates_length_of :twitter, in: 6..100

	# validation of ranges
	validates_inclusion_of :employment_rate, in: 0..100
	validates_inclusion_of :graduation_rate, in: 0..100
	validates_inclusion_of :averge_salary, in: 0..1000000
	validates_inclusion_of :fees, in: 0..50000

  #relationship
	has_many :ratings
end

class Group < ActiveRecord::Base
	
	# Basic 
	attr_accessible :title, :info

  	attr_accessible :logo
  	has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "64x64>" }, :default_url => "/assets/missing64.png"

	# Admin
	belongs_to :user

	# Contacts
	has_many :people

	# Validations
	validates :title, :presence => true
	validates :info, :presence => true
end

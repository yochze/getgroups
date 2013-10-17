class Person < ActiveRecord::Base
	# Basic Identity
	attr_accessible :first_name, :last_name

	# Contacts
	attr_accessible :phone, :phone_scnd, :fax, :email, :url

	# Business
	attr_accessible :job_title, :department

	attr_accessible :avatar
  	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "32x32" }, :default_url => "/assets/missing64.png"

	# Relations
	belongs_to :group

	# Validations
	validates :first_name, :presence => true
	validates :last_name, :presence => true
	validates :email, :presence => true
	validates :phone, :presence => true
	validates :job_title, :presence => true
	# validates :avatar, :presence => true


end

class Person < ActiveRecord::Base
	# Basic Identity
	attr_accessible :first_name, :last_name, :token

	# Contacts
	attr_accessible :phone, :phone_scnd, :fax, :email, :url

	# Business
	attr_accessible :job_title, :department

	attr_accessible :avatar
  	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "32x32" }, :default_url => "/assets/missing64.png"

	# Relations
	belongs_to :group

	before_create :generate_token

	# Validations
	validates :first_name, :presence => true
	validates :last_name, :presence => true
	validates :email, :presence => true
	validates :phone, :presence => true
	validates :job_title, :presence => true
	# validates :avatar, :presence => true

	def generate_token
		o =  [('a'..'z'),('A'..'Z')].map{|i| i.to_a}.flatten
        self.token = (0...10).map{ o[rand(o.length)] }.join
	end


end

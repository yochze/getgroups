class Announcement < ActiveRecord::Base
	attr_accessible :content, :group_id
	belongs_to :group
end

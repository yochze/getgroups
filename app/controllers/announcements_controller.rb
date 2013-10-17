class AnnouncementsController < ApplicationController
	def create
	  @group = Group.find(params[:group_id])
	  @announcement  = @group.announcements.new(params[:announcement])
	    respond_to do |format|
	      if @announcement.save
	        # format.js 
	        format.html { redirect_to @group }
	      else
	        format.html { render action: "index" }
	      end
	    end    
	end

	def show
		
	end
end

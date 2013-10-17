class PeopleController < ApplicationController

  def create
	  @group = Group.find(params[:group_id])
	  @person  = @group.people.new(params[:person])
    respond_to do |format|
      if @person.save
        # format.js 
        format.html { redirect_to @group }
      else
        format.html { render action: "index" }
      end
    end     
  end

  def destroy
  @group = Group.find(params[:group_id])
  @person = @group.people.find(params[:id])
  @person.destroy
  respond_to do |format| 
    format.html { redirect_to @group }
    # format.js 
  end
end


end

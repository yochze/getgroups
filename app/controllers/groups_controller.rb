class GroupsController < ApplicationController
  def index
    @user = current_user
    @groups = @user.groups
    @group = Group.new
    @group.user_id = current_user.id
    
  end

  def create
  @group = Group.new(params[:group])
  @group.user_id = current_user.id
    respond_to do |format|
      if @group.save
        # format.js 
        format.html { redirect_to @group }
      else
        format.html { render action: "index" }
      end
    end     
  end

  def update
  end

  def delete
  end

  def show
    @group = Group.find(params[:id])
    @person = @group.people.build
  end

  def new
  end
end

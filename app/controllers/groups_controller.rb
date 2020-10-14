class GroupsController < ApplicationController
  def index
    @group = Group.new
    @groups = Group.all
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path
    end

  end

  private
  def group_params
    params.require(:group).permit(:content).merge(user_id: current_user.id )
  end

end

class GroupsController < ApplicationController
  def index
    @group = Group.new
    @groups = Group.includes(:user)
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to groups_path
    else
      render :index
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update(group_params)
      redirect_to groups_path
    else
      render :edit
    end
  end

  def destroy
    @groups = Group.includes(:user)
    @group = Group.find(params[:id])
    if @group.destroy
      redirect_to root_path
    end 
  end

  private
  def group_params
    params.require(:group).permit(:content).merge(user_id: current_user.id )
  end

end

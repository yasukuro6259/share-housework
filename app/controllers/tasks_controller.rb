class TasksController < ApplicationController
  def index
    @task = Task.new
    @group = Group.find(params[:group_id])
    @tasks = @group.tasks.includes[:user]
  end

  def new
    @task = Task.new
  end

  private
  def task_params
    parameter.require(:task).permit(:content, :description, :image).merge(user_id: current_user.id)
  end
end

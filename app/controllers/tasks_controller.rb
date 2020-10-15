class TasksController < ApplicationController
  before_action :task_params, only: :create

  def index
    @group = Group.new #入力フォームを空にするため
    @groups = Group.includes(:user)
    @group_id = Group.find(params[:group_id]) #@groupだとリスト入力フォームに入力されてしまう。
    @tasks = @group_id.tasks.includes(:user)
  end

  def new
    @task = Task.new
  end

  def create
    @group = Group.find(params[:group_id])
    @task = @group.tasks.new(task_params)
    if @task.save
      redirect_to root_path
    else
      redirect_to new_group_task_path
    end
  end

  private
  def task_params
    params.require(:task).permit(:content, :description, :image).merge(user_id: current_user.id)
  end
end

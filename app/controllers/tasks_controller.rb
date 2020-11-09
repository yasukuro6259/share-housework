class TasksController < ApplicationController
  before_action :get_task_info, only: [:show, :destroy, :edit, :update]
  before_action :task_params, only: [:create, :update]

  def index
    @group = Group.new
    @groups = Group.includes(:user)
    @group_id = Group.find(params[:group_id]) # @groupだとリスト入力フォームに入力されてしまう。
    @tasks = @group_id.tasks.includes(:user)
  end

  def new
    @group_id = Group.find(params[:group_id])
    @task = Task.new
  end

  def create
    @group_id = Group.find(params[:group_id])
    @task = @group_id.tasks.new(task_params)
    if @task.save
      redirect_to group_tasks_path
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @tasks = @group_id.tasks.includes(:user)
    if @task.destroy
      redirect_to group_tasks_path
    else
      render :show
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to group_task_path(@group_id, @task)
    else
      render :edit
    end
  end

  private

  def task_params
    params.require(:task).permit(:content, :description, :image).merge(user_id: current_user.id)
  end

  def get_task_info
    @group_id = Group.find(params[:group_id])
    @task = @group_id.tasks.find(params[:id])
  end
end

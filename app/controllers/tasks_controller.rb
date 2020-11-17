class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  # READ (all)
  def index
    @tasks = Task.all
  end
  # READ (one) - to get a specific task

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    # no need for app/views/tasks/create.html.erb
    redirect_to task_path(@task)
  end

  def edit
  end

  def update
    @task.update(task_params)
    # no need for app/views/tasks/create.html.erb
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy

    # no need for app/views/tasks/destroy.html.erb
    redirect_to tasks_path
  end

  private

  def set_task
     @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end

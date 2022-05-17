class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    find_task()
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save!
    redirect_to task_path(@task)
  end

  def edit
    find_task()
  end

  def update
    find_task()
    @task.update(task_params)
    @task.save!
    redirect_to task_path(@task)
  end

  def destroy
    find_task()
    @task.destroy
    redirect_to tasks_path(@tasks)
  end

  private

  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end

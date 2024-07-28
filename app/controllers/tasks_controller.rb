class TasksController < ApplicationController
  def index
    @tasks = Task.where(completed: false)
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:completed)
  end
end

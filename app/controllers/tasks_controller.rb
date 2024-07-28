class TasksController < ApplicationController
  def index
    @tasks = Task.where(completed: false).order(:created_at)
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      respond_to do |format|
        format.html 
        format.json { render json: @task, status: :ok }
      end
    else
      respond_to do |format|
        format.html
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def task_params
    params.require(:task).permit(:completed)
  end
end

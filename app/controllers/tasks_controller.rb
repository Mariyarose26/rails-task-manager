class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy]
  def tasks
    @tasks = Task.all
  end
  def show
  end
  def new
    @task = Task.new # needed to instantiate the form_for
  end
  def create
    @task = Task.new(task_params)
    @task.save

    # no need for app/views/restaurants/create.html.erb
    redirect_to task_path(@task)
  end
  def edit
  end

  def update
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy

    redirect_to tasks_path
  end

  # private

  def task_params
    #params.require(dynamic_id_for_the_model).permit(fields_required)
    params.require(:task).permit(:title, :details, :completed)
  end
  def find_task
    @task= Task.find(params[:id])
  end
end

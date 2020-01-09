class Api::V1::TasksController < ApplicationController
  def index
      @tasks = Tasks.all
      render json: @tasks
    end

    def create
      @task = Tasks.create(task_params)
      render json: @task
    end

    def update

        @task = Tasks.find(params[:id])
        @task.update(task_params)
        # byebug
        render json: @task
    end

    def destroy
      @task = Tasks.find(params[:id])
      @task.destroy
    end
  private

    def task_params
        params.require(:task).permit(:project_id, :item, :complete, :process_pic)
    end
end

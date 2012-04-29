class TasksController < ApplicationController

  def create
    task = Task.new()
    task.project_id = params[:project_id] 
    task.user_id = params[:user_id]
    task.description = params[:description]
    task.save
    redirect_to "/projects/#{task.project_id}"
  end


end

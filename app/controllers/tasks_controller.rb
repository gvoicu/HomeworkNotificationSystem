class TasksController < ApplicationController

  def create
    task = Task.new()
    task.project_id = params[:project_id] 
    task.user_id = params[:user_id]
    task.description = params[:description]
    task.save
    redirect_to "/projects/#{task.project_id}"
  end

  def mark_as_done
    task = Task.find(params[:id])
    task.update_attributes(:status => 1)
    redirect_to "/projects/#{task.id}"
  end

  def restart_task
    task = Task.find(params[:id])
    task.update_attributes(:status => nil)
    redirect_to "/projects/#{task.id}"
  end

end

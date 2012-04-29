class ProjectsController < ApplicationController

  before_filter :authenticate_user!

  def new
  end

  def create
        project = Project.new()
	    project.name = params[:name]
       	project.where = params[:where]
        project.project_type = 1 
        project.subject_id = params[:subject_id]
        project.deadline= DateTime.parse(params[:when])
        project.priority = params[:priority]
        project.other_details = params[:other_details]
        project.save
        redirect_to "/projects"
  end

	def index
      @projects = Project.all
	end

	def show
    @project = Project.where(:id => params[:id]).first

    @my_tasks = Task.where(:project_id => params[:id])
    
    @hash_t = [] 
    @hash_t[1] = "low"
    @hash_t[2] = "medium"
    @hash_t[3] = "high"
    @hash_t[4] = "Your life depends on it!" 
  end
    

  def edit
    @project = Project.where(:id => params[:id]).first()
  end
  
  def update
        project = Project.where(:id => params[:id]).first()
	    project.name = params[:name]
       	project.where = params[:where]
        project.project_type = 1 
        project.subject_id = params[:subject_id]
        project.deadline= DateTime.parse(params[:when])
        project.priority = params[:priority]
        project.other_details = params[:other_details]
        project.save
        redirect_to "/projects"
  end

  def destroy
   Project.delete_all(:id => params[:id])
   redirect_to "/projects"
  end
end

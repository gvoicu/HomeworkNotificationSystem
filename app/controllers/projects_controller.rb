class ProjectsController < ApplicationController

  before_filter :authenticate_user!

  def new
  end

  def create
        raise "A intrat in create"
        project = Project.new()
	      project.name = params[:name]
       	project.where = params[:where]
        project.project_type = 1 
        project.subject_id = params[:subject_id]
        project.deadline= DateTime.parse(params[:deadline])
        project.priority = params[:priority]
        project.other_details = params[:other_details]
        project.save
        redirect_to "/projects"
  end

	def index
      @projects = Project.all
	end

	def show
	end
end

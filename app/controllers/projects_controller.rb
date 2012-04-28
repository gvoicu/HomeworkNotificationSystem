class ProjectsController < ApplicationController

  before_filter :authenticate_user!

  def new
  end

  def create
        project = Project.new()
	project.name = params[:name]
	project.where = params[:where]
	# O sa returneze true sau false in functie de succesul operatiei
        # project.save
  end

	def index
      @projects = Project.all
      
	end

	def show
	end
end

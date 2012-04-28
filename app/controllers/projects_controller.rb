class ProjectsController < ApplicationController

  before_filter :authenticate_user!

  def new
    # @project = Project.new
  end

	def index
      @projects = Project.all
      
	end

	def show
	end
end

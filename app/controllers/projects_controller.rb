class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @projects = Project.all
    @project = Project.friendly.find(params[:id])
  end
end

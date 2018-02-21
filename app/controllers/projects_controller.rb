class ProjectsController < ApplicationController
  def index
    @projects = Project.ordered
  end

  def show
    @project = Project.friendly.find(params[:id])
  end
end

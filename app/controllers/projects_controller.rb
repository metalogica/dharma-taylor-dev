class ProjectsController < ApplicationController

  def index
    @projects = Project.ordered
    set_title
  end

  def show
    @project = Project.friendly.find(params[:id])
  end

  private

  def set_title
    @title = "| Featured" if @projects.present?
    @title = "| #{@project.name}" if @project.present?
  end
end

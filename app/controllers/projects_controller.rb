class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  layout "dashboard", except: [:index, :show]

  def index
    @projects = Project.ordered
    set_title
  end

  def show
    @project = Project.friendly.find(params[:id])
  end

  def admin_projects_index
    @projects = Project.all
  end

  def admin_projects_show
  end

  def edit
  end

  def update
  end

  def new
    @project = Project.new
  end

  def create
  end

  def archiver
    @project = Project.find_by(id: params[:id])
    @project.visibility = false
    if @project.save!
      redirect_to(admin_projects_index_path)
    else
      p "error"
    end
  end

  def destroy
    @project = Project.find_by(id: params[:id])
    if @project.destroy
      redirect_to(admin_projects_index_path)
    else
      p "error"
    end
  end

  private

  def set_title
    @title = "| Featured" if @projects.present?
    @title = "| #{@project.name}" if @project.present?
  end
end


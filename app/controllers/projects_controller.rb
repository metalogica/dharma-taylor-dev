class ProjectsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_layout, except: [:index, :show]

  def index
    @projects = Project.ordered
    set_title
  end

  def show
    @project = Project.friendly.find(params[:id])
  end

  def admin_projects_index
  end

  def admin_projects_show
  end

  def edit
  end

  def update
  end

  def new
  end

  def create
  end

  def destroy
  end

  private

  def set_title
    @title = "| Featured" if @projects.present?
    @title = "| #{@project.name}" if @project.present?
  end

  def set_layout
    render layout: 'layouts/dashboard'
  end
end


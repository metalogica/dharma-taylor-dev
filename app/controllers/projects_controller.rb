class ProjectsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :new, :create, :destroy]
  before_action :set_layout

  def index
    if current_user.admin == true
      @projects = Project.ordered
      set_title
    else
      render layout: 'layouts/dashboard'
    end
  end

  def show
    @project = Project.friendly.find(params[:id])
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
    render layout: 'layouts/dashboard' if current_user.admin == true
  end
end


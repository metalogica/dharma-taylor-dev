class ArchivesController < ApplicationController
  before_action :authenticate_user!, except: :archives_list
  layout "layouts/dashboard", except: :archives_list

  def archives_list
    @archive = Image.archive.order(url: 'desc')
    set_title
  end

  def index
    @projects = Project.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def unarchiver
    @project = Project.find_by(id: params[:id])
    @project.visibility = true
    if @project.save!
      redirect_to(archives_path)
    else
      p "error"
    end
  end

  private

  def set_title
    @title="| Archive"
  end
end

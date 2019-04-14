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
    @project = Project.find_by(id: params[:id])
  end

  def update
    project = Project.find_by(id: project_params[:id])
    project.update(name: project_params[:name], description: project_params[:description])
    save_images if project_params[:user_upload].present?
    save_cover_image(project) if project_params[:coverimage].present?
    if project.save!
      redirect_to(edit_project_path(project_params[:id].to_i))
    else
      p "error"
    end
  end

  def new
    @project = Project.new
  end

  def create
    project = Project.new(project_params)
    if project.save!
      redirect_to(admin_projects_index_path)
    else
      render "new"
    end
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

  def project_params
    params.require(:project).permit(:id, :name, :description, :coverimage, {user_upload: []})
  end

  def save_cover_image(project)
    project.images.each do |img|
      img.coverimage = false
      img.save!
    end
    cover_image = project.images.find(project_params[:coverimage])
    cover_image.coverimage = true
    cover_image.save!
  end

  def save_images
    project_params[:user_upload].each do |cloud_img|
      callback = Cloudinary::Uploader.upload(cloud_img)
      puts "CALLBACK: #{callback}"
      local_image = Image.new
      local_image.project_id = project_params[:id]
      local_image.url = callback["secure_url"]
      local_image.filename = callback["original_filename"]
      local_image.save!
    end
  end

  def set_title
    @title = "| Featured" if @projects.present?
    @title = "| #{@project.name}" if @project.present?
  end
end


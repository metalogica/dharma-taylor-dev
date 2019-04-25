   class AdministratorController < ApplicationController
  before_action :authenticate_user!
  layout "administrator_layout"

 # Actions/routes concerning the Project model
  def admin_projects_index
    @projects = Project.all
  end

  def admin_archives_index
    @projects = Project.all
  end

  def edit_project
    @project = Project.find_by(id: params[:id])
  end

  def update_project
    project = Project.find_by(id: project_params[:id])
    project.update(name: project_params[:name], description: project_params[:description], blurb: project_params[:blurb])
    project.save!
    save_images(project) if project_params[:user_upload].present?
    save_cover_image(project) if project_params[:coverimage].present?
    if project.save!
      redirect_to(edit_project_path(project_params[:id].to_i))
    else
      p "error"
    end
  end

  def new_project
    @project = Project.new
  end

  def create_project
    project = Project.new(
      name: project_params[:name],
      description: project_params[:description],
      blurb: project_params[:blurb]
    )
    if project.save!
      save_images(project) if project_params[:user_upload].present?
      redirect_to(edit_project_path(project.id))
    else
      render "new"
    end
  end

  def archive_project
    @project = Project.find_by(id: params[:id])
    @project.visibility = false
    if @project.save!
      redirect_to(admin_projects_index_path)
    else
      p "error"
    end
  end

  def delete_project
    @project = Project.find_by(id: params[:id] || params[:id])
    if @project.destroy
      redirect_to(admin_projects_index_path)
    else
      p "error"
    end
  end

  def unarchive_project
    @project = Project.find_by(id: params[:id])
    @project.visibility = true
    if @project.save!
      redirect_to(admin_archives_index_path)
    else
      p "error"
    end
  end

  # Actions/routes concerning the Image model
  def delete_image
    image = Image.find(params[:id])
    project = image.project
    if image.destroy!
      choose_next_cover_image(project)
      redirect_to(edit_project_path(project.id))
      puts "\n\nCRUD: #{image} deleted successfully.\n\n"
    else
      p "error"
    end
  end

  def set_cover_image
    cover_image = Image.find(params[:id])
    project = cover_image.project
    project_images = project.images
    project_images.each do |img|
      img.coverimage = false
      img.save!
    end
    cover_image.coverimage = true
    redirect_data = cover_image.project.id
    if cover_image.save!
      redirect_to(edit_project_path(redirect_data))
    else
      p "error"
    end
  end

  # Actions/routes concerning the Information model
  def edit_information
    @information = Information.first
  end

  def update_information
    @information = Information.find(params[:id])
    @information.update(information_params)
    if @information.save!
      redirect_to(edit_information_path(params[:id]))
    else
      render "edit"
    end
  end

  # Actions/routes concerning the Footer model
  def edit_footer
    @footer = Footer.first
  end

  def update_footer
    @footer = Footer.first
    @footer.update(
      telephone_contact: footer_params[:telephone_contact],
      email_primary: footer_params[:email_primary],
      email_contact: footer_params[:email_contact],
      location: footer_params[:location],
      social_media: parse_social_media_params
      )
    if @footer.save!
      redirect_to(edit_footer_path)
    else
      p "error"
    end
  end


  private



  # Methods concerning the Project model
  def project_params
    params.require(:project).permit(:id, :name, :description, :coverimage, :blurb, {user_upload: []})
  end

  def save_cover_image
    project.images.each do |img|
      img.coverimage = false
      img.save!
    end
    cover_image = project.images.find(project_params[:coverimage])
    cover_image.coverimage = true
    cover_image.save!
  end

  def save_images
    id = project.id
    project_params[:user_upload].each do |cloud_img|
      callback = Cloudinary::Uploader.upload(cloud_img)
      puts "CALLBACK: #{callback}"
      local_image = Image.new
      local_image.project_id = id
      local_image.url = callback["secure_url"]
      local_image.filename = callback["original_filename"]
      local_image.save!
    end
  end

  # Methods concerning the Image model
  def choose_next_cover_image(project)
    new_cover = project.images.first
    new_cover.update!(coverimage: true)
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

  def save_images(project)
    id = project.id
    project_params[:user_upload].each do |cloud_img|
      callback = Cloudinary::Uploader.upload(cloud_img)
      puts "CALLBACK: #{callback}"
      local_image = Image.new
      local_image.project_id = id
      local_image.url = callback["secure_url"]
      local_image.filename = callback["original_filename"]
      local_image.save!
    end
    cover = project.images.first
    cover.coverimage = true
    cover.save!
  end

  def delete_image
    image = Image.find(params[:id])
    if image.destroy!
      redirect_to(edit_project_path(project_params[:id].to_i))
    else
      p "error"
    end
  end

  # Methods concerning the Information model
  def information_params
    params.require(:information).permit(:id, :about)
  end

  # Methods concerning the Footer Model
  def footer_params
    params.require(:footer).permit(:telephone_contact, :email_primary, :email_contact, :location, {social_media_name: []}, {social_media_url: []})
  end

  def parse_social_media_params
    key = footer_params[:social_media_name]
    value = footer_params[:social_media_url]
    value = parse_url(value)
    sm_data = Hash[key.zip(value)]
  end

  def parse_url(url_array)
    stub = "http://"
    pattern = /h/i
    submit_url = url_array.map do |url|
      if (url[0] =~ pattern).nil?
        url = stub + url
      else
        url
      end
    end
  end

end

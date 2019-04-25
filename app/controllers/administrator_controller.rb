class AdministratorController < ApplicationController
  before_action :authenticate_user!
  layout "administrator_layout"

 # Actions/routes concerning the Project model
  def admin_projects_index
  end

  def admin_archives_index
  end

  def edit_project
  end

  def update_project
  end

  def new_project
  end

  def create_project
  end

  def archive_project
  end

  def unarchive_project
  end

  # Actions/routes concerning the Image model
  def delete_image
  end

  def set_cover_image
  end

  # Actions/routes concerning the Information model
  def edit_information
  end

  def update_information
  end

  # Actions/routes concerning the Footer model
  def edit_footer
  end

  def update_footer
  end


  private



  # Methods concerning the Project model
  def project_params
  end

  def save_cover_image
  end

  def save_images
  end

  # Methods concerning the Image model
  def choose_next_cover_image(project)
    new_cover = project.images.first
    new_cover.update!(coverimage: true)
  end

  # Methods concerning the Information model
  def biography_params
    params.require(:biography).permit(:id, :information)
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

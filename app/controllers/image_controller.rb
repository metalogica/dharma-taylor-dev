class ImageController < ApplicationController
  def delete
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

  def set_cover
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

  private

  def choose_next_cover_image(project)
    new_cover = project.images.first
    new_cover.update!(coverimage: true)
  end
end
